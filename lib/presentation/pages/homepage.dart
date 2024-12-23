import 'package:eaudelux/presentation/pages/product.dart';
import 'package:eaudelux/utils/activity/routing.dart';
import 'package:flutter/foundation.dart';

import '../../utils/activity/load_data.dart';
import '../model/product_model.dart';
import '../widgets/pseudo_product_data.dart';
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
    'https://theme.hstatic.net/1000340570/1000964732/14/slideshow_3.jpg?v=6745',
    'https://theme.hstatic.net/1000340570/1000964732/14/slideshow_2.jpg?v=6745',
    'https://theme.hstatic.net/1000340570/1000964732/14/slideshow_1.jpg?v=6745',
  ];

  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  late Future<List<Perfume>> _perfumeFuture;

  @override
  initState() {
    super.initState();
    _perfumeFuture = loadPerfumesFromCsv('../../../assets/data/final_perfume_data.csv');
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
  void didChangeDependencies() async {
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
    _timerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarSize,
        child: CustomAppBar(appBarSize: appBarSize,),
      ),
      body: FutureBuilder<List<Perfume>>(
        future: _perfumeFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error loading data: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No perfumes found.'));
          }
          final perfumes = snapshot.data!;

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: pagingAdvertisement(maxWidth*0.62),
                ),
              ),

              const CustomSliverTitle(title: 'Most purchased'),
              ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth,
                perfumes: perfumes,
                productCount: 12,
              ),
              CustomSliverTextButton(
                  onPressed: (){
                    AppRoutes.push(context, const ProductPage());
                  },
                  text: 'View more',
                  maxWidth: 400
              ),

              const CustomSliverTitle(title: 'Latest'),
              ProductGrid(maxHeight: maxHeight, maxWidth: maxWidth,
                perfumes: perfumes,
                productCount: 12,),
              CustomSliverTextButton(
                  onPressed: (){
                    AppRoutes.push(context, const ProductPage());
                  },
                  text: 'View more',
                  maxWidth: 400
              ),

            ],
          );
        }
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
                          if (loadingProgress != null) {
                            return const CircularProgressIndicator();
                          }
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
