import 'package:flutter/material.dart';

class UI extends StatefulWidget {
  const UI({super.key});

  @override
  State<UI> createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://imgs.search.brave.com/-J6769KF81YoRrkf0xxM5zyRFL7YFJpnVcIi5h3oiDo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvOTI3/NDE4NTg0L3Bob3Rv/L21hZHJpZC1hdC1u/aWdodC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9RURaRkpo/bzdEOGdlOHctM0lC/UkNnTUYxNTcyRXQt/SzFaTnNiRF93c2h0/RT0'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 24,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://imgs.search.brave.com/Q8KHIkCJEfDGt0gDsFbz8Jp-e11az7chv0PR102T49k/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wZXRh/cGl4ZWwuY29tL2Fz/c2V0cy91cGxvYWRz/LzIwMjIvMDIvcHJp/bmNlLWVyaWMtZnJv/bS1saXR0bGUtbWVy/bWFpZC1pbi1yZWFs/LWxpZmUtNjQweDgw/MC5qcGc'),
                          ),
                        ),
                      ),
                      Positioned(
                        top:250,
                        right:75,// Adjust the value to position the text horizontally
                        child: Container(// Optional: Add a semi-transparent background for readability
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0), // Add padding inside the container
                          child: Text(
                            "Madrid City Tour",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Set text color to white for contrast
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top:10,
                        right:10,
                        child: IconButton(
                          icon: Icon(Icons.close, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0), // Add padding for better UI
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Madrid City Tour For Designers",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), // Add some spacing
                  Text(
                    "Madrid, cheerful and vibrant at all hours, is famous for being an open city with all kinds of people from anywhere in the world.",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText("20", Icons.favorite_rounded, Colors.red),
                  rowIconText("34", Icons.upload, Colors.blue),
                  rowIconText("82", Icons.message, Colors.grey),
                  rowIconText("12", Icons.share, Colors.green),
                ],
              ),
            ),
            Divider(),
            Expanded(
              // Use Expanded to allow the SingleChildScrollView to take available space
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0), // Adding padding for better UI
                child: Text(
                  "¡Hola! Come on our 2h30 Free Tour and discover the best overview of Madrid’s history, lifestyle, and tips to make the most out of your visit! Craft Tours Spain promotes tours and activities with young and dynamic tour guides. Our proposal is for you to join the Free Tour of Madrid, and at the end you decide how much the experience was worth for you! :) We meet every day at 11am and Friday and Saturday at 3:30pm at Plaza del Callao, for tours in English and Spanish. We cannot ensure your participation in the tour without a reservation, a 3€ fee will be applied in order to book your spot and secure your tour.",
                  style: TextStyle(fontSize: 16.0), // Optional: Set the font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget rowIconText(String text, IconData icon, Color color) {
  return Row(
    children: [
      Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87)),
      SizedBox(width: 5),
      Icon(icon, color: color),
    ],
  );
}
