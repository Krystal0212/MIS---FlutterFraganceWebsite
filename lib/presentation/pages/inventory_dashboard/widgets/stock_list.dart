import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:flutter/foundation.dart';

class StockDataList extends StatefulWidget {
  final List<Perfume> perfumes;

  const StockDataList({super.key, required this.perfumes});

  @override
  State<StockDataList> createState() => _StockDataListState();
}

class _StockDataListState extends State<StockDataList> {
  final List<bool> _expandedPanels = [];
  late List<Perfume> perfumes;
  late List<Brand> brands;

  @override
  void initState() {
    super.initState();
    // Initialize all panels as collapsed

    perfumes = widget.perfumes;
    brands = perfumes.map((perfume) => perfume.brand).toSet().toList();

    _expandedPanels.addAll(List.generate(brands.length, (index) => false));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:
          true, // Important: allows the ListView to shrink-wrap its content

      padding: AppPaddings.defaultPadding,
      itemCount: brands.length,
      itemBuilder: (BuildContext context, int index) {
        final brand = brands[index];

        // Filter perfumes by brand
        final brandPerfumes =
            perfumes.where((perfume) => perfume.brand == brand).toList();

        return ExpansionTile(
          title: Text(
            brand.name,
            style: AppTheme.brandStyle,
          ),
          children: brandPerfumes.isNotEmpty
              ? brandPerfumes.map((perfume) {
                  return ItemTile(perfume: perfume);
                }).toList()
              : [
                  const ListTile(
                    title: Text('No perfumes available'),
                  ),
                ],
        );
      },
    );
  }
}

class ItemTile extends StatelessWidget {
  final Perfume perfume;
  const ItemTile({super.key, required this.perfume});

  @override
  Widget build(BuildContext context) {
    // Define the threshold for low stock
    const lowStockThreshold = 15;

    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: MouseRegion(
        onEnter: (_) {
          // You can trigger any hover effect or message here
        },
        onExit: (_) {
          // Reset hover effect or message here
        },
        child: GestureDetector(
          onTap: () {
            if (kDebugMode) {
              print('Item tapped: ${perfume.name}');
            }
            // Navigator.push(
            // context,
            // MaterialPageRoute(
            // builder: (context) => PerfumeDetailPage(perfume: perfume), // Replace with your target page
            // ),
            // );
          },
          child: ListTile(
            title: Text(perfume.name, style: AppTheme.itemNameStyle),
            subtitle:
                Text('Stock: ${perfume.stock}', style: AppTheme.itemStyle),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (perfume.stock < lowStockThreshold)
                  const Tooltip(
                    message: 'Stock is low!',
                    child: Icon(
                      Icons.warning,
                      color: AppColors.corona,
                    ),
                  ),

                const SizedBox(width: 10),

                Text('\$${perfume.price.toStringAsFixed(2)}',
                    style: AppTheme.itemStyle),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
