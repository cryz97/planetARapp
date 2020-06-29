import 'package:flutter/material.dart';

class SliderRotationWidget extends StatefulWidget {
  final double degreesPerSecondInitialValue;
  final ValueChanged<double> onDegreesPerSecondChange;

  const SliderRotationWidget(
      {Key key,
      this.degreesPerSecondInitialValue,
      this.onDegreesPerSecondChange})
      : super(key: key);

  @override
  _SliderRotationWidgetState createState() => _SliderRotationWidgetState();
}

class _SliderRotationWidgetState extends State<SliderRotationWidget> {
  double degreesPerSecond;

  @override
  void initState() {
    degreesPerSecond = widget.degreesPerSecondInitialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Velocidad"),
          ),
          Expanded(
            child: Slider(
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.purpleAccent,
              value: degreesPerSecond,
              divisions: 8,
              min: 45.0,
              max: 360.0,
              onChangeEnd: (value) {
                degreesPerSecond = value;
                widget.onDegreesPerSecondChange(degreesPerSecond);
              },
              onChanged: (double value) {
                setState(() {
                  degreesPerSecond = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
