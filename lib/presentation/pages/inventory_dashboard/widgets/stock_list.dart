import 'package:eaudelux/presentation/pages/product_detail/product_detail.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:eaudelux/services/request.dart';
import 'package:flutter/foundation.dart';

class StockDataList extends StatefulWidget {
  final List<Perfume> perfumes;

  final String role;

  const StockDataList({super.key, required this.perfumes, required this.role});

  @override
  State<StockDataList> createState() => _StockDataListState();
}

class _StockDataListState extends State<StockDataList> {
  final List<bool> _expandedPanels = [];
  late List<Perfume> perfumes;
  late List<String> brands;

  @override
  void initState() {
    super.initState();
    // Initialize all panels as collapsed

    perfumes = widget.perfumes;
    brands = perfumes.map((perfume) => perfume.brand.name).toSet().toList();

    _expandedPanels.addAll(List.generate(brands.length, (index) => false));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        shrinkWrap: false,
        padding: AppPaddings.defaultPadding,
        itemCount: brands.length,
        itemBuilder: (BuildContext context, int index) {
          final brandName = brands[index];
      
          // Filter perfumes by brand
          final brandPerfumes = perfumes
              .where((perfume) => perfume.brand.name == brandName)
              .toList();
      
          return ExpansionTile(
            title: Text(
              brandName,
              style: AppTheme.brandStyle,
            ),
            children: brandPerfumes.isNotEmpty
                ? brandPerfumes.map((perfume) {
                    return ItemTile(perfume: perfume, role: widget.role, );
                  }).toList()
                : [
                    const ListTile(
                      title: Text('No perfumes available'),
                    ),
                  ],
          );
        },
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final Perfume perfume;
  final String role;

  const ItemTile({super.key, required this.perfume, required this.role});

  @override
  Widget build(BuildContext context) {
    // Define the threshold for low stock
    const lowStockThreshold = 40;

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                    perfume: perfume, role: role,), // Replace with your target page
              ),
            );
          },
          child: ListTile(
            title: Text(perfume.name, style: AppTheme.itemNameStyle),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Stock: ${perfume.totalUnitInStock}',
                    style: AppTheme.itemStyle),
                Tooltip(
                    message: 'Update',
                    child: IconButton(
                      icon: const Icon(Icons.edit, color: AppColors.monstrousGreen),
                      onPressed: () {
                        AppRequest.showUpdateDialog(context, perfume, (){});
                      },
                    ),
                  ),
                Tooltip(
                    message: 'Disable',
                    child: IconButton(
                      icon: const Icon(Icons.disabled_by_default, color: AppColors.goshawkGrey),
                      onPressed: () {
                        AppRequest.showDisableDialog(context, perfume, (){});
                      },
                    ),
                  ),
              ],
            ),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (perfume.totalUnitInStock + perfume.totalUnitReceived <
                    lowStockThreshold)
                  Tooltip(
                    message: 'Stock is low!',
                    child: IconButton(
                      icon: const Icon(Icons.warning, color: AppColors.corona),
                      onPressed: () {
                        if (role == 'Operation Director'){AppRequest.showRestockDialog(context, perfume, true);}
                        
                      },
                    ),
                  ),
                const SizedBox(width: 10),
                Text('\$${perfume.lowestPrice.toStringAsFixed(2)}',
                    style: AppTheme.itemStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
