import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class animated extends StatelessWidget {
  const animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Animated Text'),
      //   elevation: 10,
      //   backgroundColor: Colors.blue,
      // ),
      body: Column(
        children :[
          AnimatedTextKit(
            animatedTexts:
              [
                TyperAnimatedText('Hello!',
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
                FadeAnimatedText('Dhruv here',
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ScaleAnimatedText('Welcome',
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
          )
        ],
      ),
    );
  }
}
