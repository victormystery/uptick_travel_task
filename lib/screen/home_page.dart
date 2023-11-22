// screens/home_page.dart
import 'package:flutter/material.dart';

import '../widget/destination_card.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel App'),
      ),
      body: ListView(
        children: [
          DestinationCard(
            destination: 'Paris',
            image: 'assets/images/paris.jpg',
          ),
          DestinationCard(
            destination: 'New York',
            image: 'assets/images/new_york.jpg',
          ),
        ],
      ),
    );
  }
}
