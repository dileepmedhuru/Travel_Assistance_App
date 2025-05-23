import 'package:flutter/material.dart';
import '../models/city.dart';

class BookingScreen extends StatelessWidget {
  final City city;

  BookingScreen({required this.city});

  final List<Map<String, dynamic>> hotels = [
    {'name': 'Hotel Royal Palace', 'price': 2500},
    {'name': 'Luxury Stay Inn', 'price': 4000},
    {'name': 'Budget Lodge', 'price': 1200},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Stay in ${city.name}")),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Text(hotel['name']),
              subtitle: Text("₹${hotel['price']}/night"),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Booking confirmed for ${hotel['name']}!"),
                  ));
                },
                child: Text("Book Now"),
              ),
            ),
          );
        },
      ),
    );
  }
}
