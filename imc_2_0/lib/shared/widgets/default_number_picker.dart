import 'package:flutter/material.dart';
import 'package:imc_2_0/shared/widgets/default_text_form_field.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultNumberPicker extends StatefulWidget {
  const DefaultNumberPicker(
      {super.key,
      required this.onChanged,
      required this.label,
      required this.numberPickerController,
      required this.onAdd,
      required this.onDecrement});
  final TextEditingController numberPickerController;
  final Function(double? value) onChanged;
  final Function() onAdd;
  final Function() onDecrement;
  final String label;
  @override
  State<DefaultNumberPicker> createState() => _DefaultNumberPickerState();
}

class _DefaultNumberPickerState extends State<DefaultNumberPicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        color: AppColor.accent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.label,
            style: const TextStyle(color: AppColor.whiteText, fontSize: 20),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 50,
            width: 80,
            child: DefaultTextFormField(
              label: '',
              controller: widget.numberPickerController,
              showBorder: false,
              textAlign: TextAlign.center,
              contentPadding: const EdgeInsets.only(top: -16),
              keyboardType: TextInputType.number,
              validator: (value) {
                return null;
              },
              onChanged: (value) {
                if (value != null) {
                  widget.onChanged(double.tryParse(value) ?? 1);
                }
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 42,
                width: 42,
                child: InkWell(
                  onTap: () {
                    widget.onDecrement();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.blueLight,
                      border: Border.all(
                        color: AppColor.blueLight,
                        width: 2.0,
                      ),
                    ),
                    child: const Icon(
                      Icons.remove_rounded,
                      color: AppColor.redColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                height: 42,
                width: 42,
                child: InkWell(
                  onTap: () {
                    widget.onAdd();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.blueLight,
                      border: Border.all(
                        color: AppColor.blueLight,
                        width: 2.0,
                      ),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add_rounded,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
