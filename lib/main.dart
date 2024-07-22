import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          // This works
          // alignment: Alignment.topLeft,
          // This doesn't
          alignment: Alignment.topRight,
          children: [
            const GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(17.4122998, 78.2679604),
                zoom: 7,
              ),
              zoomControlsEnabled: false,
            ),
            ElevatedButton(
              onPressed: () => debugPrint('PRESS'),
              style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(20)),
                shape: WidgetStateProperty.all(const CircleBorder()),
              ),
              child: const Icon(Icons.my_location),
            ),
          ],
        ),
      ),
    ),
  );
}
