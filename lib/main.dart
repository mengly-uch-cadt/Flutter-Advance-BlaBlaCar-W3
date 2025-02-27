import 'package:flutter/material.dart';
import 'screens/ride_pref/ride_pref_screen.dart';
import 'theme/theme.dart';

// Importing models and services
import 'model/ride/locations.dart';
import 'model/ride_pref/ride_pref.dart';
import 'model/ride/ride.dart';
import 'model/user/user.dart';
import 'service/rides_service.dart';
import 'service/locations_service.dart';
import 'service/ride_prefs_service.dart';

void main() {
  // runApp(const MyApp());

  testServices();
}

void testServices() {
  // Testing LocationService
  print("Available Locations:");
  for (var location in LocationsService.availableLocations) {
    print(" - ${location.name} (${location.country.name})");
  }

  // Removed unused user creation code

  // Creating a ride preference
  RidePref ridePref = RidePref(
    departure: LocationsService.availableLocations[0], // Example departure
    departureDate: DateTime.now(),
    arrival: LocationsService.availableLocations[1], // Example arrival
    requestedSeats: 2,
  );

  // Setting ride preference
  RidePrefService.currentRidePref = ridePref;
  print("\nCurrent Ride Preference:");
  print(RidePrefService.currentRidePref);

  // Getting relevant rides
  List<Ride> matchingRides = RidesService.getRidesFor(ridePref);
  print("\nMatching Rides:");
  for (var ride in matchingRides) {
    print(
        "Ride from ${ride.departureLocation.name} to ${ride.arrivalLocation.name}, Driver: ${ride.driver.firstName}, Seats: ${ride.availableSeats}, Price: \$${ride.pricePerSeat}");
  }
}

// Flutter App Entry Point
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ride App',
      theme: ThemeData.light(),
      home: const RidePrefScreen(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'screens/ride_pref/ride_pref_screen.dart';
// import 'theme/theme.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: appTheme,
//       home: Scaffold(body: RidePrefScreen()),
//     );
//   }
// }
