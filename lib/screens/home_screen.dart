import 'package:flutter/material.dart';
import '../models/event.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
      eventName: "Concert",
      description: "Top artists performing live!",
      date: "2024-09-15",
      price: 120.0,
      ticketsAvailable: 200,
      image: "assets/images/event2.jpg",
    ),
    Event(
      eventName: "Art Exhibition",
      description: "A showcase of modern art.",
      date: "2024-10-10",
      price: 50.0,
      ticketsAvailable: 150,
      image: "assets/images/event3.jpg",
    ),
    Event(
      eventName: "Food Festival",
      description: "Taste cuisines from around the world.",
      date: "2024-11-01",
      price: 30.0,
      ticketsAvailable: 300,
      image: "assets/images/event4.jpg",
    ),
    Event(
      eventName: "Tech Conference",
      description: "Discussing the latest in technology.",
      date: "2024-12-05",
      price: 200.0,
      ticketsAvailable: 100,
      image: "assets/images/event5.jpg",
    ),
    Event(
      eventName: "Charity Run",
      description: "Run for a cause.",
      date: "2024-08-20",
      price: 15.0,
      ticketsAvailable: 500,
      image: "assets/images/event6.jpg",
    ),
    Event(
      eventName: "Theater Play",
      description: "A classic play performed live.",
      date: "2024-09-30",
      price: 80.0,
      ticketsAvailable: 80,
      image: "assets/images/event7.jpg",
    ),
    Event(
      eventName: "Music Festival",
      description: "A weekend of music and fun.",
      date: "2024-07-25",
      price: 180.0,
      ticketsAvailable: 250,
      image: "assets/images/event8.jpg",
    ),
    Event(
      eventName: "Stand-up Comedy",
      description: "An evening of laughs.",
      date: "2024-10-15",
      price: 40.0,
      ticketsAvailable: 150,
      image: "assets/images/event1.jpg",
    ),
    Event(
      eventName: "Film Screening",
      description: "Exclusive screening of a new movie.",
      date: "2024-09-20",
      price: 25.0,
      ticketsAvailable: 300,
      image: "assets/images/event2.jpg",
    ),
    Event(
      eventName: "Book Launch",
      description: "Meet the author and get a signed copy.",
      date: "2024-08-28",
      price: 10.0,
      ticketsAvailable: 100,
      image: "assets/images/event3.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events"), backgroundColor: Colors.green,),
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
