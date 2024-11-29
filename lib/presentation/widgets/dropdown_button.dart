import 'package:flutter/material.dart';

class MyDropdown<T> extends StatefulWidget {
  final List<T> options;  // List of options (could be String, double, etc.)
  final String title;
  final String content;
  final T? selected;  // The currently selected value

  const MyDropdown({
    super.key,
    required this.options,
    required this.title,
    required this.content,
    this.selected,
  });

  @override
  State<MyDropdown> createState() => _MyDropdownState<T>();
}

class _MyDropdownState<T> extends State<MyDropdown<T>> {
  late T selectedOption;

  @override
  void initState() {
    super.initState();
    selectedOption = widget.selected ?? widget.options.first;  // Default to the first option if no value is passed
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(widget.content),
        DropdownButton<T>(
          value: selectedOption,
          onChanged: (T? newValue) {
            setState(() {
              selectedOption = newValue as T;
            });
          },
          items: widget.options.map((option) {
            return DropdownMenuItem<T>(
              value: option,
              child: Text(option.toString()),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Perfume {
  String name;
  List<int> sold;
  List<int> stock;
  List<int> receive;
  List<double> price;
  List<double> unitCost;
  List<double> sizes;  // Sizes of the perfume
  String sizeType;  // Size type (e.g., 'ml' or 'oz')
  String description;
  String imageUrl;

  Perfume({
    required this.name,
    required this.sold,
    required this.stock,
    required this.receive,
    required this.price,
    required this.unitCost,
    required this.sizes,
    required this.sizeType,
    required this.description,
    required this.imageUrl,
  });
}

void main() {
  Perfume perfume = Perfume(
    name: "Luxurious Perfume",
    sold: [10, 20],
    stock: [30, 40],
    receive: [5, 10],
    price: [100.0, 150.0],
    unitCost: [80.0, 120.0],
    sizes: [30.0, 50.0, 100.0],  // Sizes in ml
    sizeType: 'ml',
    description: 'A luxurious fragrance',
    imageUrl: 'https://example.com/image.jpg',
  );

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Perfume Size Selector')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MyDropdown<double>(
          options: perfume.sizes,  // Pass the list of sizes as options
          title: "Select Size",
          content: "Choose a size for ${perfume.name}",
          selected: perfume.sizes.first,  // Set initial selected size (default to the first size)
        ),
      ),
    ),
  ));
}
