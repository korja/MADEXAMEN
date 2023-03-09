import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(19.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(140),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 120,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Korné Rijninks",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.person_outline_rounded),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "account",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.bookmark_outline),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Opgeslagen",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.settings_outlined),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Instellingen",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
