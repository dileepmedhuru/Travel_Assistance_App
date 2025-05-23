import '../models/city.dart';

List<City> cities = [
  City(
    name: 'Jaipur',
    description: 'The Pink City of India, known for its historic palaces, vibrant bazaars, and rich culture.',
    popularPlaces: [
      Place(name: 'Red Fort', latitude: 28.6562, longitude: 77.2410),
      Place(name: 'India Gate', latitude: 28.6129, longitude: 77.2295),
      Place(name: 'Qutub Minar', latitude: 28.5244, longitude: 77.1855),
    ],
    food: ['Dal Baati Churma', 'Ghevar'],
    estimatedCost: 8000,
    bestTime: 'October to March',
    imageUrl: 'https://s7ap1.scene7.com/is/image/incredibleindia/hawa-mahal-jaipur-rajasthan-city-1-hero?qlt=82&ts=1726660605161',
  ),
  City(
    name: 'Goa',
    description: 'Famous for its beaches, nightlife, and Portuguese heritage.',
    popularPlaces: [
  Place(name: 'Baga Beach', latitude: 15.5807, longitude: 73.7500),
  Place(name: 'Fort Aguada', latitude: 15.4939, longitude: 73.7791),
  Place(name: 'Dudhsagar Falls', latitude: 15.3143, longitude: 74.3166),
],

    food: ['Prawn Balchão', 'Fish Curry Rice'],
    estimatedCost: 12000,
    bestTime: 'November to February',
    imageUrl: 'https://lp-cms-production.imgix.net/2025-01/shutterstock2542346155-cropped.jpg?auto=format,compress&q=72&w=1440&h=810&fit=crop',
  ),
  City(
    name: 'Nellore',
    description: 'A coastal city in Andhra Pradesh known for its agriculture, temples, and rich cultural heritage.',
    popularPlaces: [
  Place(name: 'Penchala Kona', latitude: 14.4233, longitude: 79.9671),
  Place(name: 'Narasimha Konda', latitude: 14.4235, longitude: 79.9720),
  Place(name: 'Ranganayaka Temple', latitude: 14.4230, longitude: 79.9660),
  Place(name: 'Mypadu Beach', latitude: 14.2786, longitude: 80.0255),
],

    food: ['Chepala Pulusu (Fish Curry)', 'Nellore Chicken Biryani'],
    estimatedCost: 5000,
    bestTime: 'November to February',
    imageUrl: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/5e/bc/e5/lakshmi-narasimha-swamy.jpg?w=1600&h=-1&s=1',
  ),
  City(
  name: 'Delhi',
  description: 'The capital city of India, known for its rich history, vibrant markets, and diverse culture.',
  popularPlaces: [
  Place(name: 'Red Fort', latitude: 28.6562, longitude: 77.2410),
  Place(name: 'India Gate', latitude: 28.6129, longitude: 77.2295),
  Place(name: 'Qutub Minar', latitude: 28.5244, longitude: 77.1855),
],

  food: ['Chole Bhature', 'Parathas at Chandni Chowk'],
  estimatedCost: 7000,
  bestTime: 'October to March',
  imageUrl: 'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0f/c5/e8/5c.jpg',
),
City(
  name: 'Hyderabad',
  description: 'A city blending modern IT hubs and royal history, known for its architecture and iconic biryani.',
  popularPlaces: [
  Place(name: 'Charminar', latitude: 17.3616, longitude: 78.4747),
  Place(name: 'Golconda Fort', latitude: 17.3833, longitude: 78.4011),
  Place(name: 'Ramoji Film City', latitude: 17.2540, longitude: 78.5599),
],

  food: ['Hyderabadi Biryani', 'Double Ka Meetha'],
  estimatedCost: 8000,
  bestTime: 'October to February',
  imageUrl: 'https://s7ap1.scene7.com/is/image/incredibleindia/2-charminar_hyderabad_telangana-1-city-hero?qlt=82&ts=1726653248112',
),
City(
  name: 'Coorg',
  description: 'A serene hill station in Karnataka known for coffee plantations, misty hills, and waterfalls.',
  popularPlaces: [
  Place(name: 'Abbey Falls', latitude: 12.4215, longitude: 75.7303),
  Place(name: 'Raja’s Seat', latitude: 12.4182, longitude: 75.7096),
  Place(name: 'Dubare Elephant Camp', latitude: 12.2223, longitude: 75.9288),
],

  food: ['Pandi Curry', 'Kadambuttu (Rice Balls)'],
  estimatedCost: 9000,
  bestTime: 'October to March',
  imageUrl: 'https://b3681537.smushcdn.com/3681537/wp-content/uploads/2021/05/Bangalore-to-Coorg.jpg?lossy=2&strip=1&webp=1',
),
  City(
    name: 'Mysore',
    description: 'Known for the grand Mysore Palace, silk sarees, and Dasara celebrations.',
    popularPlaces: [
  Place(name: 'Mysore Palace', latitude: 12.3051, longitude: 76.6551),
  Place(name: 'Chamundi Hills', latitude: 12.2942, longitude: 76.6786),
  Place(name: 'Brindavan Gardens', latitude: 12.4221, longitude: 76.5336),
],

    food: ['Mysore Masala Dosa', 'Chiroti'],
    estimatedCost: 7000,
    bestTime: 'October to February',
    imageUrl: 'https://lp-cms-production.imgix.net/2019-06/5419167.jpg',
  ),
  City(
    name: 'Darjeeling',
    description: 'A charming hill station in West Bengal famous for tea gardens and scenic views.',
    popularPlaces: [
  Place(name: 'Tiger Hill', latitude: 27.0175, longitude: 88.2644),
  Place(name: 'Batasia Loop', latitude: 27.0392, longitude: 88.2606),
  Place(name: 'Darjeeling Himalayan Railway', latitude: 27.0410, longitude: 88.2659),
],

    food: ['Momos', 'Thukpa'],
    estimatedCost: 10000,
    bestTime: 'March to May and October to November',
    imageUrl: 'https://i1.wp.com/udaanhotels.com/wp-content/uploads/2023/10/batasia-loop-train-darjeeling.jpg?fit=1024%2C683&ssl=1',
  ),
  City(
    name: 'Udaipur',
    description: 'The City of Lakes, known for its romantic palaces and scenic boat rides.',
    popularPlaces: [
  Place(name: 'Lake Pichola', latitude: 24.5773, longitude: 73.6777),
  Place(name: 'City Palace', latitude: 24.5765, longitude: 73.6812),
  Place(name: 'Jag Mandir', latitude: 24.5760, longitude: 73.6744),
],

    food: ['Laal Maas', 'Ker Sangri'],
    estimatedCost: 8500,
    bestTime: 'October to March',
    imageUrl: 'https://clubmahindra.gumlet.io/blog/media/section_images/shuttersto-60d8967abd4ab87.jpg?w=376&dpr=2.6',
  ),
  City(
    name: 'Varanasi',
    description: 'One of the oldest living cities in the world, known for spiritual significance and the Ganges.',
    popularPlaces: [
  Place(name: 'Kashi Vishwanath Temple', latitude: 25.3109, longitude: 83.0133),
  Place(name: 'Dashashwamedh Ghat', latitude: 25.3162, longitude: 83.0100),
  Place(name: 'Sarnath', latitude: 25.3876, longitude: 83.0215),
],

    food: ['Kachori Sabzi', 'Malaiyo'],
    estimatedCost: 6000,
    bestTime: 'October to March',
    imageUrl: 'https://swarajya.gumlet.io/swarajya/2019-10/dbbaebcd-0460-4de9-afe0-94a373592803/Ganga.jpg?w=610&q=50&compress=true&format=auto',
  ),
  City(
    name: 'Ooty',
    description: 'A serene hill station in Tamil Nadu known for tea gardens and misty mountains.',
    popularPlaces: [
  Place(name: 'Ooty Lake', latitude: 11.4105, longitude: 76.6950),
  Place(name: 'Botanical Gardens', latitude: 11.4131, longitude: 76.6921),
  Place(name: 'Doddabetta Peak', latitude: 11.4073, longitude: 76.7103),
],

    food: ['Ooty Varkey', 'South Indian Thali'],
    estimatedCost: 7000,
    bestTime: 'April to June and September to November',
    imageUrl: 'https://s3.india.com/wp-content/uploads/2024/07/Historical-Places-To-Visit-In-Ooty.jpg##image/jpg',
  ),
  City(
    name: 'Shillong',
    description: 'The Scotland of the East, known for its waterfalls, caves, and music culture.',
    popularPlaces: [
  Place(name: 'Elephant Falls', latitude: 25.6158, longitude: 91.8880),
  Place(name: 'Umiam Lake', latitude: 25.6329, longitude: 91.8651),
  Place(name: 'Shillong Peak', latitude: 25.5784, longitude: 91.8765),
],

    food: ['Jadoh', 'Tungrymbai'],
    estimatedCost: 9000,
    bestTime: 'September to May',
    imageUrl: 'https://images.wanderon.in/blogs/new/2022/12/tourist-places-in-shillong.jpg',
  ),
  
];
