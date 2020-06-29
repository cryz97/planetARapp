import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planetapp/model/Planet.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ViewARPage extends StatefulWidget {
  Planet currentPlanet;
  ViewARPage({Key key, @required this.currentPlanet}) : super(key: key);
  @override
  _ViewARPageState createState() => _ViewARPageState();
}

class _ViewARPageState extends State<ViewARPage> {
  ArCoreController arCoreController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
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

    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -widget.currentPlanet.distance),
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
