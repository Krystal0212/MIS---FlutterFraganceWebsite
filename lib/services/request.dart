import 'package:eaudelux/presentation/widgets/dropdown_button.dart' as dropdown;
import '../presentation/widgets/import_packages.dart';

class AppRequest {
  static void showRestockDialog(
      BuildContext context, Perfume perfume, bool isLowStock) {
    final TextEditingController quantityController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: AppColors.tianLanSky,
          backgroundColor: AppColors.lynxWhite,
          title: const Text('Low Stock Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${!isLowStock ? '' : 'Stock for "${perfume.name}" is low!'} Current stock: ${perfume.totalUnitInStock}',
                style: AppTheme.blackInfoStyle,
              ),
              Text(
                'Enter the quantity you want to restock if you want to send a restock request:',
                style: AppTheme.blackInfoStyle,
              ),
              const SizedBox(height: 20),
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
              child: Text(
                'Cancel',
                style: AppTheme.brandStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                final quantity = int.tryParse(quantityController.text);
                if (quantity != null && quantity >= 0) {
                  // Here you would send the restock request (e.g., via a service or API)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            'Restock request for ${quantity == 0 ? 0 : quantity} units sent!')),
                  );
                  Navigator.of(context).pop(); // Close the dialog
                } else {
                  // If the input is invalid, show a message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Please enter a valid quantity')),
                  );
                }
              },
              child: Text(
                'Send Request',
                style: AppTheme.brandStyle,
              ),
            ),
          ],
        );
      },
    );
  }

  static void showImportDialog(
      BuildContext context, List<String> brands, List<String> sizeTypes) {
    final TextEditingController productNameController = TextEditingController();
    final TextEditingController sizeController = TextEditingController();
    final TextEditingController numberController = TextEditingController();
    String? selectedBrand;
    String? selectedSizeType;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: AppColors.tianLanSky,
          backgroundColor: AppColors.lynxWhite,
          title: const Text('Import Product'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'Select the brand and size type, then enter the product details:',
                  style: AppTheme.blackInfoStyle),
              const SizedBox(height: 20),
              dropdown.MyDropdown(
                  options: brands,
                  title: 'Select Brand',
                  content: 'Brand',
                  selected: selectedBrand),
              const SizedBox(height: 10),
              dropdown.MyDropdown(
                  options: sizeTypes,
                  title: 'Select Size Type',
                  content: 'Size Type',
                  selected: selectedSizeType),
              const SizedBox(height: 20),
              TextField(
                controller: productNameController,
                decoration: const InputDecoration(hintText: 'Product Name'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: sizeController,
                decoration: const InputDecoration(hintText: 'Size (e.g. 50ml)'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Number of Units'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                'Cancel',
                style: AppTheme.brandStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                final productName = productNameController.text;
                final size = sizeController.text;
                final numberOfUnits = int.tryParse(numberController.text);

                if (productName.isNotEmpty &&
                    size.isNotEmpty &&
                    numberOfUnits != null &&
                    numberOfUnits > 0) {
                  // Here you would send the product import request (e.g., via a service or API)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Product "$productName" imported!')),
                  );
                  Navigator.of(context).pop(); // Close the dialog
                } else {
                  // If the input is invalid, show a message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Please fill in all fields correctly')),
                  );
                }
              },
              child: Text(
                'Import Product',
                style: AppTheme.brandStyle,
              ),
            ),
          ],
        );
      },
    );
  }

  static void showDisableDialog(
      BuildContext context, Perfume product, VoidCallback onConfirm) {
    String productName = product.name;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: Colors.red,
          backgroundColor: Colors.white,
          title: const Text('Disable Product'),
          content: Text(
            'Are you sure you want to disable the product "$productName"?',
            style: const TextStyle(fontSize: 16),
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
                onConfirm(); // Execute the disable function
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Disable'),
            ),
          ],
        );
      },
    );
  }

  static void showUpdateDialog(
      BuildContext context, Perfume perfume, VoidCallback onUpdate) {
    final TextEditingController nameController =
        TextEditingController(text: perfume.name);
    final TextEditingController descriptionController =
        TextEditingController(text: perfume.description);
    final TextEditingController priceController = TextEditingController();
    final TextEditingController unitCostController = TextEditingController();

    // Default selected size
    double selectedSize = perfume.sizes.first;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shadowColor: Colors.blue,
          backgroundColor: Colors.white,
          title: const Text('Update Product'),
          content: SizedBox(
            width: 400,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Product Name Field
                  const Text('Product Name'),
                  TextField(
                    controller: nameController,
                  ),
                  const SizedBox(height: 10),

                  // Description Field
                  const Text('Description'),
                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                        hintText: 'Enter Product Description'),
                  ),
                  const SizedBox(height: 20),

                  // Size Selection
                  const Text('Size'),
                  dropdown.MyDropdown(options: perfume.sizes.map((size) {
                      return '$size ${perfume.sizeType}';
                    }).toList(), title: 'Select Size', content: 'Size', selected: selectedSize.toString()),

                  const SizedBox(height: 20),

                  // Price Field
                  const Text('Price'),
                  TextField(
                    controller: priceController,
                    decoration: const InputDecoration(hintText: 'Enter Price'),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),

                  // Unit Cost Field
                  const Text('Unit Cost'),
                  TextField(
                    controller: unitCostController,
                    decoration:
                        const InputDecoration(hintText: 'Enter Unit Cost'),
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
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
                // Update perfume details
                perfume.name = nameController.text;
                perfume.description = descriptionController.text;

                // Update price and unit cost for the selected size
                int sizeIndex = perfume.sizes.indexOf(selectedSize);
                perfume.price[sizeIndex] =
                    double.tryParse(priceController.text) ??
                        perfume.price[sizeIndex];
                perfume.unitCost[sizeIndex] =
                    double.tryParse(unitCostController.text) ??
                        perfume.unitCost[sizeIndex];

                onUpdate(); // Trigger callback for further actions
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }
}
