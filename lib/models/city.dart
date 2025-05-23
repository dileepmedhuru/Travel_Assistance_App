class Place {
  final String name;
  final double latitude;
  final double longitude;

  Place({
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}

class City {
  final String name;
  final String description;
  final List<Place> popularPlaces;  // Changed to List<Place>
  final List<String> food;
  final double estimatedCost;
  final String bestTime;
  final String imageUrl;

  City({
    required this.name,
    required this.description,
    required this.popularPlaces,
    required this.food,
    required this.estimatedCost,
    required this.bestTime,
    required this.imageUrl,
  });
}
