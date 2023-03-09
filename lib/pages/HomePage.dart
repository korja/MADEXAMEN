import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:madexam/components/savedbutton.dart';
import 'package:madexam/pages/artikel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;
int _selectedIndex = 0;
PageController pageController = PageController();

List cardList = [Item1(), Item2(), Item3(), Item4()];

class Item1 extends StatelessWidget {
  const Item1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/nieuws.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text("nieuws van de week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/nieuws.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text("nieuws van de week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/nieuws.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text("nieuws van de week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/nieuws.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text("nieuws van de week",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Column(children: [
          CarouselSlider(
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Card(
                      color: Colors.blueAccent,
                      child: card,
                    ),
                  ),
                );
              });
            }).toList(),
            options: CarouselOptions(
              height: 180,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              scrollDirection: Axis.horizontal,
            ),
          )
        ]),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[400],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArtikelPage()),
                      );
                    }, // Image tapped
                    child: Image.network(
                      'https://media.nu.nl/m/nhzxoz7a6zo4_wd320.jpg',
                      fit: BoxFit.cover, // Fixes border issues
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Fuji",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                saved(
                    isSelected: false,
                    selectedIcon: Colors.amber,
                    normalIcon: Colors.black)
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[400],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArtikelPage()),
                      );
                    }, // Image tapped
                    child: Image.network(
                      'https://media.nu.nl/m/nhzxoz7a6zo4_wd320.jpg',
                      fit: BoxFit.cover, // Fixes border issues
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Fuji",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                saved(
                    isSelected: false,
                    selectedIcon: Colors.amber,
                    normalIcon: Colors.black)
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[400],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArtikelPage()),
                      );
                    }, // Image tapped
                    child: Image.network(
                      'https://media.nu.nl/m/nhzxoz7a6zo4_wd320.jpg',
                      fit: BoxFit.cover, // Fixes border issues
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Fuji",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                saved(
                    isSelected: false,
                    selectedIcon: Colors.amber,
                    normalIcon: Colors.black)
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Container(
            color: Colors.grey[400],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArtikelPage()),
                      );
                    }, // Image tapped
                    child: Image.network(
                      'https://media.nu.nl/m/nhzxoz7a6zo4_wd320.jpg',
                      fit: BoxFit.cover, // Fixes border issues
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Fuji",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                saved(
                    isSelected: false,
                    selectedIcon: Colors.amber,
                    normalIcon: Colors.black)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
