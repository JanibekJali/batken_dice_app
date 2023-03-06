import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 2;
  int onDice = 5;
  dicetyOzgort() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Dice App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        solDice = math.Random().nextInt(6) + 1;
                        onDice = math.Random().nextInt(6) + 1;
                        setState(() {});
                      },
                      child: Image.asset(
                        'assets/images/dice$solDice.png',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: InkWell(
                      onTap: () {
                        math.Random().nextInt(6) + 1;

                        setState(() {
                          onDice = math.Random().nextInt(6) + 1;
                        });
                        solDice = math.Random().nextInt(6) + 1;

                        print('Basilip atat ====>');
                      },
                      child: Image.asset(
                        'assets/images/dice$onDice.png',
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  solDice = math.Random().nextInt(6) + 1;
                  onDice = math.Random().nextInt(6) + 1;
                });
              },
              icon: Icon(
                Icons.thumb_up_alt,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
