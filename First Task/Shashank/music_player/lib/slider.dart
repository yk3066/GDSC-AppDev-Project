import 'package:flutter/material.dart';
import 'constants.dart';

class MySlider extends StatelessWidget {
  MySlider({required this.value,required this.min,required this.max});
  double value,min,max;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderTheme.of(context).copyWith(
            overlayColor: kColorWhite,
            thumbColor: kPrimaryColor2,
            thumbShape:
            const RoundSliderThumbShape(enabledThumbRadius: 10),
            activeTrackColor: kPrimaryColor2,
            inactiveTrackColor: kColorWhite),
        child: Slider(
          value: value,
          onChanged: (double newValue) {},
          min: min,
          max: max,
        ));
  }
}