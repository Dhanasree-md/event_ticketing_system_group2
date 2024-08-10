import 'package:flutter/material.dart';
import '../models/event.dart';

class DetailScreen extends StatelessWidget {
  final Event event;

  DetailScreen({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(event.eventName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300.0, // Adjust the height as needed
              width: 500.0,
              child: Image.asset(
                event.image,
                fit: BoxFit.cover, // Use BoxFit to ensure the image fits properly
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    event.eventName,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Date: ${event.date}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Price: \$${event.price}",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    event.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    child: Text('Buy Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
