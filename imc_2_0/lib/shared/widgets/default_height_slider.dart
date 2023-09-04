import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_2_0/shared/widgets/default_text_form_field.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class DefaultHeightSlider extends StatefulWidget {
  const DefaultHeightSlider(
      {super.key,
      required this.heightPickerController,
      required this.onChanged});

  final TextEditingController heightPickerController;
  final Function(double? value) onChanged;

  @override
  State<DefaultHeightSlider> createState() => _DefaultHeightSliderState();
}

class _DefaultHeightSliderState extends State<DefaultHeightSlider> {
  double currentSliderPrimaryValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
        color: AppColor.accent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Altura',
            style: TextStyle(color: AppColor.whiteText, fontSize: 22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 80,
                child: DefaultTextFormField(
                  textInputFormatter: FilteringTextInputFormatter.allow(
                      RegExp(r'^\d{0,1}(\.\d{0,2})?$')),
                  label: '',
                  controller: widget.heightPickerController,
                  showBorder: false,
                  textAlign: TextAlign.center,
                  contentPadding: const EdgeInsets.only(top: -20),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    return null;
                  },
                  onChanged: (value) {
                    if (value != null) {
                      widget.onChanged(double.tryParse(value) ?? 1);
                      currentSliderPrimaryValue = double.tryParse(value) ?? 1;
                    }
                  },
                ),
              ),
              const Text(
                'M',
                style: TextStyle(
                    color: AppColor.whiteText,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Slider(
              min: 1.0,
              max: 2.8,
              value: currentSliderPrimaryValue,
              label: currentSliderPrimaryValue.round().toString(),
              activeColor: AppColor.purpleLight,
              inactiveColor: AppColor.whiteText,
              onChanged: (double value) {
                setState(() {
                  currentSliderPrimaryValue = value;
                  widget.onChanged(value);
                  widget.heightPickerController.text = value.toStringAsFixed(2);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
