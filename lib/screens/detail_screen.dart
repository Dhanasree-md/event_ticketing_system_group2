import 'package:flutter/material.dart';
import '../models/event.dart';

class DetailScreen extends StatefulWidget {
  final Event event;

  DetailScreen({required this.event});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int _quantity = 1;

  void _increaseQuantity() {
    setState(() {
      if (_quantity < widget.event.ticketsAvailable) {
        _quantity++;
      }
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.event.eventName)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with rounded corners
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Image.asset(
                  widget.event.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Content section
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.event.eventName,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Date: ${widget.event.date}",
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Price: \$${widget.event.price}",
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 16),
                  Text(
                    widget.event.description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Quantity: ",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: _decreaseQuantity,
                        icon: Icon(Icons.remove_circle_outline, color: Colors.purple),
                      ),
                      Text(
                        '$_quantity',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        onPressed: _increaseQuantity,
                        icon: Icon(Icons.add_circle_outline, color: Colors.purple),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/checkout',
                          arguments: {
                            'event': widget.event,
                            'quantity': _quantity,
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
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
