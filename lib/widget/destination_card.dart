// widgets/destination_card.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class DestinationCard extends StatelessWidget {
  final String destination;
  final String image;

  DestinationCard({required this.destination, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(
          '/details',
          extra: {'destination': destination, 'image': image},
        );
      },
      child: Card(
        elevation: 4.0,
        margin: EdgeInsets.all(8.0),
        child: Hero(
          tag: destination,
          child: Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
