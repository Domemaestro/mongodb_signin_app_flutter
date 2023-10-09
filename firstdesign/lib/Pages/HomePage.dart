import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  final String name;

  const homePage({required this.name});


  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CupertinoColors.destructiveRed,
        body: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 30,left: 20,right: 20),
              child: 
              Expanded( child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(
                    color: Colors.white70.withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: const Offset(0, 3)
                  )]
                ),
                child: Padding(padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Dear "+widget.name+",\n\n",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Hello World!\n",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CupertinoColors.destructiveRed,
                        ),
                      ),
                      Text(
                        "We celebrate you and your incredible impact on this world. Your kindness, talents, and love have left an indelible mark on our hearts. Your journey through life has made this world a better place, inspiring us with your resilience, compassion, and positivity.\n",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Know that you are cherished beyond measure, a beacon of light bringing hope and happiness to all who know you. Your \"Hello\" to the world is a gift we're endlessly thankful for.\n",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Here's to you, dear "+widget.name+", for making the world more beautiful with your existence.\n\n",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "With heartfelt appreciation,\n\n",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "-Durgesh",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                    ],
                  )

                )
              )),
          )
        ),
      ),
    );
  }
}
