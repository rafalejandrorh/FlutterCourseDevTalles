import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        leading: IconButton(
          icon: const Icon(Icons.refresh_rounded), 
          onPressed: () { 
            setState(() {
              clickCounter = 0;
            });
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close), 
            onPressed: () {
              SystemNavigator.pop();
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(
              fontSize: 160,
              fontWeight: FontWeight.w100
            )),
            Text('Click${ clickCounter == 1 ? '' : 's'}', style: const TextStyle(
              fontSize: 25
            )),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter--;
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          )
        ],
      ),
    );
  }
}