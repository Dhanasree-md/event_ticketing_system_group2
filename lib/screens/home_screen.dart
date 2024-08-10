import 'package:flutter/material.dart';
import '../models/event.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(eventName: "Concert", description: "Top artists performing live!", date: "2024-09-15", price: 120.0, ticketsAvailable: 200, image: "assets/images/event2.jpg"),
    // Add more events here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events")),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(event: events[index]),
                ),
              );
            },
            child: Card(
              child: ListTile(
                leading: Image.asset(events[index].image),
                title: Text(events[index].eventName),
                subtitle: Text("\$${events[index].price} - Tickets left: ${events[index].ticketsAvailable}"),
              ),
            ),
          );
        },
      ),
    );
  }
}
