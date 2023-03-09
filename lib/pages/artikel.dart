import 'package:flutter/material.dart';

class ArtikelPage extends StatefulWidget {
  const ArtikelPage({super.key});

  @override
  State<ArtikelPage> createState() => _ArtikelPageState();
}

class _ArtikelPageState extends State<ArtikelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Straks.nl'),
        ),
        body: Column(
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/8/8e/NPO_Nieuws_logo.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'TITLE',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.network(
              'https://static.semrush.com/blog/uploads/media/c2/52/c2521160ece538cfdbfb218788caf9ea/mDWwN6GNJt_lE7-pGth6IXsdxvqVmPeaGHw-F_dHXiKN8p3FGgIVicwvbdShvLirF5slOvKUkxpfMkaVdne2a6do6vHWdLZSfy1i-lGmfZL9-FyS162K6P-QGbZbk1vKp9YjNSil%3Ds0.png',
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}
