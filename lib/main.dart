import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  final List<Map<String, String>> locations = [
    {'city': 'California', 'weather': 'Clear', 'temp': '6°C', 'icon': 'assets/heavy_rain.png'},
    {'city': 'Beijing', 'weather': 'Mostly sunny', 'temp': '5°C', 'icon': 'assets/sunny.png'},
    {'city': 'Moscow', 'weather': 'Cloudy', 'temp': '-4°C', 'icon': 'assets/snow.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: const Color.fromARGB(255, 204, 53, 154),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCurrentLocationCard(),
            const SizedBox(height: 16),
            const Text(
              'Around the world',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: locations.length,
                itemBuilder: (context, index) {
                  return _buildWeatherCard(locations[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentLocationCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current location',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const Text(
            'Dhaka',
            style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Thunder',
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/thunder.png', width: 24, height: 24),
                const SizedBox(width: 4),
                const Text(
                  '20°C',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherCard(Map<String, String> location) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.deepPurple.shade100,
      child: ListTile(
        leading: Image.asset(location['icon']!, width: 40, height: 40),
        title: Text(
          location['city']!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        subtitle: Text(location['weather']!, style: const TextStyle(color: Colors.black87)),
        trailing: Text(
          location['temp']!,
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
    );
  }
}
