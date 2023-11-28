import 'dart:math';
import 'package:flutter/material.dart';

class RandomNumberGame extends StatefulWidget {
  const RandomNumberGame({Key? key}) : super(key: key);

  @override
  State<RandomNumberGame> createState() => _RandomNumberGameState();
}

class _RandomNumberGameState extends State<RandomNumberGame> {
  int randomNumber1 = 0;
  int randomNumber2 = 0;
  int clickedCounter = 0;
  String resultText = "c";
  double score = 0.0;
  bool isButtonDisabled = false;

  @override
  void initState() {
    super.initState();
    generateRandomNumbers();
  }

  void generateRandomNumbers() {
    final Random random = Random();
    setState(() {
      randomNumber1 =
          random.nextInt(100); // Generates a random number between 0 and 99
      randomNumber2 =
          random.nextInt(100); // Generates a random number between 0 and 99
      // resultText = '';
    });
  }

  void checkAnswer(int number) {
    if (number == randomNumber1 && number == randomNumber2) {
      setState(() {
        resultText = 'Incorrect';
      });
    } else {
      setState(() {
        resultText = 'Correct';
        clickedCounter++;
        score = clickedCounter / 10;
      });
    }

    if (clickedCounter >= 10) {
      setState(() {
        isButtonDisabled = true;
      });
    }
  }

  void restartGame() {
    setState(() {
      clickedCounter = 0;
      score = 0.0;
      isButtonDisabled = false;
    });
    generateRandomNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          checkAnswer(randomNumber1);
                          generateRandomNumbers();
                        },
                  child: Text('Button 1: $randomNumber1'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: isButtonDisabled
                      ? null
                      : () {
                          checkAnswer(randomNumber2);
                          generateRandomNumbers();
                        },
                  child: Text('Button 2: $randomNumber2'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text('Result: $resultText'),
            const SizedBox(height: 20),
            Text('Score: $score'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: restartGame,
              child: const Text('Restart Game'),
            ),
          ],
        ),
      ),
    );
  }
}
