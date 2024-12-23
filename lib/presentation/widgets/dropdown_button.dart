import 'package:flutter/material.dart';

class MyDropdown<T> extends StatefulWidget {
  final List<T> options; // List of options
  final String title;
  final String content;
  final T? selected; // Initially selected value
  final ValueChanged<T>? onChanged; // Callback for value change

  const MyDropdown({
    super.key,
    required this.options,
    required this.title,
    required this.content,
    this.selected,
    this.onChanged,
  });

  @override
  State<MyDropdown> createState() => _MyDropdownState<T>();
}

class _MyDropdownState<T> extends State<MyDropdown<T>> {
  late T selectedOption;

  @override
  void initState() {
    super.initState();
    // Default to the first option if no value is passed
    selectedOption = widget.selected ?? widget.options.first;
    // print('Options: ${widget.options}');
    // print('Selected: $selectedOption');
  }

  @override
  Widget build(BuildContext context) {
    // Remove duplicates from the options list (optional)
    final uniqueOptions = widget.options.toSet().toList();

    // Ensure selectedOption is in the uniqueOptions list
    if (!uniqueOptions.contains(selectedOption)) {
      selectedOption = uniqueOptions.first;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(widget.content),
        DropdownButton<T>(
          value: selectedOption,
          onChanged: uniqueOptions.isEmpty
              ? null
              : (T? newValue) {
            if (newValue != null) {
              setState(() {
                selectedOption = newValue;
              });
              // Notify parent widget of the change
              if (widget.onChanged != null) {
                widget.onChanged!(newValue);
              }
            }
          },
          items: uniqueOptions.map((option) {
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
