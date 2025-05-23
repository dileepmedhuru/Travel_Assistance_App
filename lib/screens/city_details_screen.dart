import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import
import '../models/city.dart';
import 'booking_screen.dart';
import '../services/chatbot_screen.dart'; 
class CityDetailsScreen extends StatelessWidget {
  final City city;

  const CityDetailsScreen({required this.city});

  // Helper method to launch URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(city.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // City image
            Image.network(
              city.imageUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 220,
                  color: Colors.grey[300],
                  child: Center(child: Icon(Icons.image_not_supported)),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    city.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  Text(
                    city.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),

                  Text("Popular Places", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ...city.popularPlaces.map((place) => ListTile(
                        leading: Icon(Icons.place),
                        title: Text(place.name), // place is Place object now
                        onTap: () {
                          final url = 'https://www.google.com/maps/search/?api=1&query=${place.latitude},${place.longitude}';
                          _launchURL(url);
                        },
                      )),
                  SizedBox(height: 10),

                  Text("Local Dishes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  ...city.food.map((dish) => ListTile(
                        leading: Icon(Icons.restaurant_menu),
                        title: Text(dish),
                      )),
                  SizedBox(height: 10),

                  Text("Estimated Cost: ₹${city.estimatedCost.toStringAsFixed(0)}",
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 6),

                  Text("Best Time to Visit: ${city.bestTime}", style: TextStyle(fontSize: 16)),

                  SizedBox(height: 25),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => BookingScreen(city: city)),
                        );
                      },
                      icon: Icon(Icons.hotel),
                      label: Text("View Booking Options"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Your new Ask AI Assistant button
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => ChatbotScreen()),
                        );
                      },
                      icon: Icon(Icons.chat),
                      label: Text("Ask AI Assistant"),
                    ),
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
