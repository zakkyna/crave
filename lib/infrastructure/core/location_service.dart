import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/entity/location.dart';
import 'package:crave_app/domain/core/exceptions/location_exception.dart';
import 'package:crave_app/domain/core/interfaces/i_location_service.dart';

import 'package:geolocator/geolocator.dart';

import 'package:geocoding/geocoding.dart' show GeocodingPlatform;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILocationService)
class LocationService implements ILocationService {
  final GeolocatorPlatform geolocator;
  final GeocodingPlatform geocoding;
  const LocationService(
    this.geolocator,
    this.geocoding,
  );
  @override
  Future<Location> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      throw LocationServiceDisabled();
    }

    permission = await geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        throw LocationPermissionDenied();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      throw LocationPermissionDeniedForever();
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final position = await geolocator.getCurrentPosition().timeout(
          const Duration(seconds: 10),
          onTimeout: () async => await geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(
              timeLimit: Duration(seconds: 300),
            ),
          ),
        );

    final placemarks = await geocoding.placemarkFromCoordinates(
        position.latitude, position.longitude);
    String? address;
    String? city;
    String? state;
    if (placemarks.isNotEmpty) {
      address = placemarks.first.name;
      city = placemarks.first.locality;
      state = placemarks.first.administrativeArea;
    }
    return Location(
      address: address,
      city: city,
      state: state,
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }

  @override
  Future<Coordinate> getCoordinate() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      throw LocationServiceDisabled();
    }

    permission = await geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        throw LocationPermissionDenied();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      throw LocationPermissionDeniedForever();
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    final position = await geolocator.getCurrentPosition().timeout(
          const Duration(seconds: 5),
          onTimeout: () async => await geolocator.getCurrentPosition(
            locationSettings: const LocationSettings(
              timeLimit: Duration(seconds: 300),
            ),
          ),
        );
    return Coordinate(
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }
}
