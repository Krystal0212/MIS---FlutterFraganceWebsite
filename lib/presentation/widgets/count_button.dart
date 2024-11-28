import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

class CountButton extends StatelessWidget {
  final ValueNotifier<int> quantityNotifier;
  final Function(int) onQuantityChanged;

  const CountButton({
    super.key,
    required this.quantityNotifier,
    required this.onQuantityChanged
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppTheme.black.withOpacity(0.7)
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: ValueListenableBuilder<int>(
        valueListenable: quantityNotifier,
        builder: (context, count, _) {
          controller.text = count.toString();

          return Row(
            children: [
              IconButton(
                onPressed: () {
                  if (count > 0) {
                    quantityNotifier.value = count - 1;
                    onQuantityChanged(quantityNotifier.value);
                  }
                },
                icon: Icon(
                    Icons.remove,
                  color: AppTheme.black,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hoverColor: AppTheme.black.withOpacity(0.2),
                    focusColor: AppTheme.black.withOpacity(0.2),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onSubmitted: (value) {
                    int? newValue = int.tryParse(value);
                    if (newValue != null && newValue >= 0) {
                      quantityNotifier.value = newValue;
                      onQuantityChanged(quantityNotifier.value);
                    } else {
                      controller.text = count.toString();
                    }
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  quantityNotifier.value = count + 1;
                  onQuantityChanged(quantityNotifier.value);
                },
                icon: Icon(
                    Icons.add,
                  color: AppTheme.black,
                  size: 20,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

