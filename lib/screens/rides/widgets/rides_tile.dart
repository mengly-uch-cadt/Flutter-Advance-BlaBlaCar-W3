import 'package:blabla_car/model/ride/ride.dart';
import 'package:blabla_car/theme/theme.dart';
import 'package:blabla_car/utils/date_time_util.dart';
import 'package:flutter/material.dart';

class RideTile extends StatelessWidget {
  final Ride ride;
  final VoidCallback onPressed;

  const RideTile({super.key, required this.ride, required this.onPressed});

  String get departure => "Departure: ${ride.departureLocation.name}";
  String get arrival => "Departure: ${ride.arrivalLocation.name}";
  String get time => "Time: ${DateTimeUtils.formatTime(ride.departureDate)}";
  String get price => "Departure: ${ride.pricePerSeat}";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        child: Column(
          children: [
            Text(departure,
                style: BlaTextStyles.label.copyWith(color: BlaColors.textLight)),
            Text(arrival,
                style: BlaTextStyles.label.copyWith(color: BlaColors.textLight)),
            Text(time,
                style: BlaTextStyles.label.copyWith(color: BlaColors.textLight)),
            Text(price,
                style: BlaTextStyles.label.copyWith(color: BlaColors.textLight)),
          ],
        ),
      ),
    );
  }
}