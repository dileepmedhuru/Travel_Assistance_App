import 'package:flutter/material.dart';
import '../data/city_data.dart';
import 'city_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List filteredCities = cities;
  final TextEditingController _searchController = TextEditingController();

  void _filterCities(String query) {
    final filtered = cities.where((city) {
      final cityName = city.name.toLowerCase();
      final input = query.toLowerCase();
      return cityName.contains(input);
    }).toList();

    setState(() {
      filteredCities = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterCities(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // AppBar height
        child: AppBar(
          backgroundColor: Colors.white38,
          centerTitle: false,
          title: Row(
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Image.network(
                  'https://res.cloudinary.com/dryeawivk/image/upload/v1747975558/Flux_Dev_Create_a_modern_vibrant_logo_for_TripEase_India_with__2-removebg-preview_exvifl.png',
                  height: 225,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const Text(
                    'TripEase India',
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(width: 20),

              // Expanded Search Bar on right side
              Expanded(
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search cities...',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: filteredCities.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final city = filteredCities[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CityDetailsScreen(city: city),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Image.network(
                        city.imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(child: Icon(Icons.broken_image)),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          city.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
