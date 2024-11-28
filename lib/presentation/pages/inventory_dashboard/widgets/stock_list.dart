import 'package:eaudelux/presentation/pages/product_detail/product_detail.dart';
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
    return ListView.builder(
      shrinkWrap: true,
      padding: AppPaddings.defaultPadding,
      itemCount: brands.length,
      itemBuilder: (BuildContext context, int index) {
        final brandName = brands[index];

        // Filter perfumes by brand
        final brandPerfumes =
            perfumes.where((perfume) => perfume.brand.name == brandName).toList();

        return ExpansionTile(
          title: Text(
            brandName,
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
            Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const ProductDetailPage(), // Replace with your target page
            ),
            );
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
                  Tooltip(
                    message: 'Stock is low!',
                    child: IconButton(
                      icon: const Icon(Icons.warning, color: AppColors.corona),
                      onPressed: () {
                        _showRestockDialog(context, perfume);
                      },
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

  void _showRestockDialog(BuildContext context, Perfume perfume) {
    final TextEditingController quantityController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Low Stock Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Stock for "${perfume.name}" is low!'),
              Text('Current stock: ${perfume.stock}'),
              const Text('Enter the quantity you want to restock if you want to send a restock request:'),
              TextField(
                controller: quantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Quantity'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final quantity = int.tryParse(quantityController.text);
                if (quantity != null && quantity > 0) {
                  // Here you would send the restock request (e.g., via a service or API)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Restock request for $quantity units sent!')),
                  );
                  Navigator.of(context).pop(); // Close the dialog
                } else {
                  // If the input is invalid, show a message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter a valid quantity')),
                  );
                }
              },
              child: const Text('Send Request'),
            ),
          ],
        );
      },
    );
  }
}
