import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:eaudelux/services/request.dart';

class ProductDetailPage extends StatefulWidget {
  final Perfume perfume;
  final String role;

  const ProductDetailPage({super.key, required this.perfume, required this.role});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;
  late Perfume perfume;

  late String imgLink, role;

  late List<Map<String, String>> prodCategories;
  late List<String> prodBadges;
  late Map<String, String> prodDescriptions;

  late List<String> brands, sizeTypes;

  @override
  void initState() {
    super.initState();
    brands = DataSample.getBrands();
    sizeTypes = DataSample.getSizeTypes();
    role = widget.role;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);

    perfume = widget.perfume;

    prodCategories = [];
    for (int index = 0; index < perfume.sizes.length; index++) {
      prodCategories.add({
        'category': perfume.sizes[index].toString(),
        'price': '\$${perfume.price[index]}',
      });
    }

    prodBadges = ['Unisex', 'Extrait de Parfum'];
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(appBarSize.width, appBarSize.height),
            child: InventoryAppBar(appBarSize: appBarSize, brands:brands, sizeTypes: sizeTypes, role: role)),
        body: CustomScrollView(
          slivers: [
            ProductGeneralPlaceholder(
              imgUrl: perfume.imageUrl,
              maxWidth: maxWidth,
              maxHeight: maxHeight * 0.6,
              prodCategories: prodCategories,
              prodBadges: prodBadges,
              perfume: perfume,
              role: role,
            ),
          ],
        ));
  }
}

class ProductGeneralPlaceholder extends StatelessWidget {
  final String imgUrl;
  final double maxWidth, maxHeight;
  final List<Map<String, String>> prodCategories;
  final List<String> prodBadges;
  final Perfume perfume;
  final String role;

  const ProductGeneralPlaceholder({
    super.key,
    required this.imgUrl,
    required this.maxWidth,
    required this.maxHeight,
    required this.prodCategories,
    required this.prodBadges,
    required this.perfume, required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        width: maxWidth * 0.8, // Slightly larger width for more space
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Scrollable if content overflows
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProductImage(imgUrl: imgUrl),
              const SizedBox(width: 50),
          Container(
            constraints: const BoxConstraints(maxWidth: 600), // Limit width
            child: ProductData(
              perfume: perfume,
              prodCategories: prodCategories,
              prodBadges: prodBadges,
              role: role,
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
//
// class ProductDetailPlaceholder extends StatelessWidget {
//   final List<Map<String, String>> prodCategories;
//   final List<String> prodBadges;
//   final Perfume perfume;
//   final String role;
//
//   const ProductDetailPlaceholder(
//       {super.key,
//       required this.prodCategories,
//       required this.prodBadges,
//       required this.perfume,
//       required this.role});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: const BoxConstraints(maxWidth: 600), // Limit width
//       child: ProductData(
//         perfume: perfume,
//         prodCategories: prodCategories,
//         prodBadges: prodBadges,
//         role: role,
//       ),
//     );
//   }
// }
//
// class ProductDescriptionPlaceholder extends StatelessWidget {
//   final Map<String, String> prodDescriptions;
//   final double maxWidth;
//
//   const ProductDescriptionPlaceholder(
//       {super.key, required this.prodDescriptions, required this.maxWidth});
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: SizedBox(
//         width: maxWidth * 0.8,
//         child: ProductDetail(
//             prodDescription: prodDescriptions, maxWidth: maxWidth),
//       ),
//     );
//   }
// }

class RelatedProductSuggestion extends StatelessWidget {
  const RelatedProductSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ProductImage extends StatelessWidget {
  final String imgUrl;

  const ProductImage({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: CachedNetworkImage(
          width: 400,
          height: 550,
          maxHeightDiskCache: 300,
          maxWidthDiskCache: 200,
          imageUrl: imgUrl,
          errorWidget: (context, url, error) => const Center(
            child: Icon(Icons.image_not_supported_outlined),
          ),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          placeholderFadeInDuration: const Duration(milliseconds: 300),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProductData extends StatefulWidget {
  final List<String> prodBadges;
  final List<Map<String, String>> prodCategories;
  final Perfume perfume;
  final String role;

  const ProductData(
      {super.key,
      required this.prodBadges,
      required this.prodCategories,
      required this.perfume,
      required this.role});

  @override
  State<ProductData> createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  final ValueNotifier<int> currButtonIndex = ValueNotifier(0);

  @override
  void dispose() {
    currButtonIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currButtonIndex,
      builder: (context, currIndex, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: widget.prodBadges.map((badge) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppTheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    badge,
                    style: TextStyle(
                      color: AppTheme.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
            ),
            Text(
              widget.perfume.name,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.black),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                widget.perfume.description,
                style: TextStyle(fontSize: 25, color: AppTheme.black),
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100, // Width
                mainAxisExtent: 50, // Height
                mainAxisSpacing: 10, // Vertical spacing
                crossAxisSpacing: 10, // Horizontal spacing
              ),
              itemCount: widget.prodCategories.length,
              shrinkWrap:
                  true, // Ensures the grid only takes up necessary space
              physics:
                  const NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    currButtonIndex.value = index;
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    side: BorderSide(
                      color: currButtonIndex.value == index
                          ? AppTheme.primary
                          : AppTheme.black.withOpacity(0.3),
                      width: 1,
                    ),
                    backgroundColor: currButtonIndex.value == index
                        ? AppTheme.primary.withOpacity(0.3)
                        : AppTheme.white,
                  ),
                  child: Text(
                    widget.prodCategories[index]['category']!,
                    style: TextStyle(fontSize: 20, color: AppTheme.black),
                  ),
                );
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "${widget.prodCategories[currIndex]['price']}",
                style: TextStyle(fontSize: 55, color: AppTheme.black),
              ),
            ),
            if(widget.role == "Operation Director") TextButton(
                onPressed: () {
                  AppRequest.showRestockDialog(context, widget.perfume, false);
                },
                style: AppTheme.defaultStyle,
                child: Text(
                  'Send Restock Request',
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 40,
                  ),
                ))
          ],
        );
      },
    );
  }
}

class ProductDetail extends StatefulWidget {
  final Map<String, String> prodDescription;
  final double maxWidth;

  const ProductDetail(
      {super.key, required this.prodDescription, required this.maxWidth});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final ValueNotifier<String> selectedOption = ValueNotifier('brandInfo');

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedOption,
      builder: (context, currSelectedOption, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(widget.maxWidth * 0.05, 0, 0, 0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      selectedOption.value = 'brandInfo';
                    },
                    style: AppTheme.sliverTextButtonStyle,
                    child: const Text('Brand Information'),
                  ),
                  TextButton(
                      onPressed: () {
                        selectedOption.value = 'prodDesc';
                      },
                      child: const Text('Product Description')),
                ],
              ),
            ),
            Container(
              width: widget.maxWidth * 0.9,
              color: Colors.red,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'Description: ',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.black),
                    ),
                    Text(
                      widget.prodDescription[currSelectedOption]!,
                      style: TextStyle(fontSize: 25, color: AppTheme.black),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
