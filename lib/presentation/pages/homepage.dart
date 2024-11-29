import 'package:flutter/foundation.dart';

import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with TickerProviderStateMixin {

  late PageController _pageViewController;
  late TabController _tabController;
  late AnimationController _timerAnimationController;

  int _currentPageIndex = 0;

  late List<String> banners = [
    'https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=600&v=1692754461&width=600',
    'https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=600&v=1692754461&width=600',
    'https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=600&v=1692754461&width=600',
  ];

  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  @override
  initState() {
    super.initState();

    _pageViewController = PageController();
    _tabController = TabController(length: banners.length, vsync: this);

    _timerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // Time between page changes
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _timerAnimationController.reset();
        _changePage();
      }
    });

    _timerAnimationController.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarSize,
        child: CustomAppBar(appBarSize: appBarSize,),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
              child: pagingAdvertisement(maxWidth*0.62),
            ),
          ),

          const CustomSliverTitle(title: 'Most purchased'),
          ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth),
          CustomSliverTextButton(
              onPressed: (){},
              text: 'View more',
              maxWidth: 400
          ),

          const CustomSliverTitle(title: 'Latest'),
          ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth),
          CustomSliverTextButton(
              onPressed: (){},
              text: 'View more',
              maxWidth: 400
          ),

        ],
      ),
    );
  }



  /// Lazy import...
  Widget pagingAdvertisement(double maxWidth){
    double maxHeight = 650;
    return SizedBox(
      height: maxHeight,
      width: maxWidth,
      child: CustomAnimatedSwitcher(
          condition: (banners.isNotEmpty),
          widget1: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                controller: _pageViewController,
                onPageChanged: _handlePageViewChanged,
                children: banners.map((banner){
                  return Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        banner,
                        width: maxWidth*0.95,
                        height: maxHeight,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child; // Image loaded successfully
                          }
                          return const Center(
                            child: Icon(Icons.image_not_supported_outlined),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('Failed to load image'),
                          );
                        },
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                }).toList(),
              ),
              PageIndicator(
                tabController: _tabController,
                currentPageIndex: _currentPageIndex,
                onUpdateCurrentPageIndex: _updateCurrentPageIndex,
                isWeb: kIsWeb,
                totalBanners: banners.length,
              ),
            ],
          ),
          widget2: Text('Loading')
      ),
    );
  }

  /// Functions
  void _handlePageViewChanged(int currentPageIndex) {
    if (!kIsWeb) {
      return;
    }
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  void _changePage() {
    if (_currentPageIndex < banners.length - 1) {
      _currentPageIndex++;
    } else {
      _currentPageIndex = 0; // Loop back to the first page
    }
    _tabController.index = _currentPageIndex;
    _pageViewController.animateToPage(
      _currentPageIndex,
      duration: const Duration(milliseconds: 600),
      curve: Curves.linear,
    );
    _timerAnimationController.forward();
  }
}
