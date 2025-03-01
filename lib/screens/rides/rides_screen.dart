import 'package:blabla_car/model/ride/ride.dart';
import 'package:blabla_car/model/ride_pref/ride_pref.dart';
import 'package:blabla_car/screens/rides/widgets/ride_pref_bar.dart';
import 'package:blabla_car/screens/rides/widgets/rides_tile.dart';
import 'package:blabla_car/service/rides_service.dart';
import 'package:blabla_car/theme/theme.dart';
import 'package:flutter/material.dart';

///  The Ride Selection screen allow user to select a ride, once ride preferences have been defined.
///  The screen also allow user to re-define the ride preferences and to activate some filters.
class RidesScreen extends StatefulWidget {
  final RidePref initialRidePref;
  // Constructor
  const RidesScreen({super.key, required this.initialRidePref});

  @override
  State<RidesScreen> createState() => _RidesScreenState();
}

// The state of the RidesScreen
class _RidesScreenState extends State<RidesScreen> {
  List<Ride> get matchingRides =>
      RidesService.getRidesFor(widget.initialRidePref);

  void onRidePrefPressed() {
 
    // 1- open a modal to edit the ride preferences

  }

 
  // 2 - Filter button pressed
  void onFilterPressed() {
    print("onFilterPressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
          left: BlaSpacings.m, right: BlaSpacings.m, top: BlaSpacings.s),
      child: Column(
        children: [
          // Top search Search bar
          RidePrefBar(
              ridePref: widget.initialRidePref,
              onRidePrefPressed: onRidePrefPressed,
              onFilterPressed: onFilterPressed),

          Expanded(
            child: ListView.builder(
              itemCount: matchingRides.length,
              itemBuilder: (ctx, index) => RideTile(
                ride: matchingRides[index],
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
