import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Geo extends StatefulWidget {
  const Geo({super.key});

  @override
  State<Geo> createState() => _GeoState();
}

class _GeoState extends State<Geo> {
  Position? position;

  Future<void> fetchPosition() async {
    try {
      // Check if location services are enabled.
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        Fluttertoast.showToast(msg: 'Location services are disabled');
        return;
      }

      // Check and request location permission.
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Fluttertoast.showToast(msg: 'Location permissions are denied');
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        Fluttertoast.showToast(
            msg:
            'Location permissions are permanently denied, we cannot request permissions.');
        return;
      }

      // Get the current position.
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        position = currentPosition;
      });

      // Show toast with position.
      Fluttertoast.showToast(
          msg: 'Location: ${position!.latitude}, ${position!.longitude}');
    } catch (e) {
      Fluttertoast.showToast(msg: 'Failed to get location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geolocation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: fetchPosition, // Directly call the method.
              child: Text('Get Location'),
            ),
            if (position != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Latitude: ${position!.latitude}, Longitude: ${position!.longitude}',
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
