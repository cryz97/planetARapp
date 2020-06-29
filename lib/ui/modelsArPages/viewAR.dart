import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planetapp/model/Planet.dart';
import 'package:planetapp/ui/modelsArPages/sliderRotationWidget.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ViewARPage extends StatefulWidget {
  Planet currentPlanet;
  ViewARPage({Key key, @required this.currentPlanet}) : super(key: key);
  @override
  _ViewARPageState createState() => _ViewARPageState();
}

class _ViewARPageState extends State<ViewARPage> {
  ArCoreController arCoreController;
  ArCoreRotatingNode node;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ArCoreView(
              onArCoreViewCreated: _onArCoreViewCreated,
            ),
          ),
          SliderRotationWidget(
            degreesPerSecondInitialValue: 45.0,
            onDegreesPerSecondChange: onDegreesPerSecondChange,
          ),
        ],
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;

    _addSphere(arCoreController);
  }

  Future<void> _addSphere(ArCoreController controller) async {
    final ByteData textureBytes =
        await rootBundle.load(widget.currentPlanet.textureAssetPath);

    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244),
      textureBytes: textureBytes.buffer.asUint8List(),
    );
    final sphere = ArCoreSphere(
      materials: [material],
      radius: widget.currentPlanet.equatorial / 10,
    );

    node = ArCoreRotatingNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -widget.currentPlanet.distance),
      rotation: vector.Vector4(0, 0, 0, 0),
    );
    controller.addArCoreNode(node);
  }

  onDegreesPerSecondChange(double value) {
    if (node == null) {
      return;
    }
    debugPrint("onDegreesPerSecondChange");
    if (node.degreesPerSecond.value != value) {
      debugPrint("onDegreesPerSecondChange: $value");
      node.degreesPerSecond.value = value;
    }
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
