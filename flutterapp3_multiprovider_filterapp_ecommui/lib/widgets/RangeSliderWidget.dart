import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  double rangevalue = 1000;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16.0),
      title: Text("Filter"),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Select range :'),
            Slider(
              activeColor: Color(0xFF4C53A5),
              inactiveColor: Colors.grey,
              value: rangevalue,
              min: 1000,
              max: 10000,
              divisions: 10,
              onChanged: (double newrangevalue) {
                setState(() {
                  rangevalue = newrangevalue;
                });
              },
            ),
            Text("Selected value : $rangevalue")
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Color(0xFF4C53A5)),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Add', style: TextStyle(color: Color(0xFF4C53A5))),
        )
      ],
    );
  }
}
