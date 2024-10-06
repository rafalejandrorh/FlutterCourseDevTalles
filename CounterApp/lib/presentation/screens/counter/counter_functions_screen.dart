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
        leading: CustomIconButton(
          icon: Icons.refresh_rounded, 
          onPressed:() {
            setState(() {
              clickCounter = 0;
            });
          },
        ),
        actions: [
          CustomIconButton(
            icon: Icons.close, 
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
          CustomButtom(
            icon: Icons.plus_one, 
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButtom(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              setState(() {
                if(clickCounter == 0) return;
                clickCounter--;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomIconButton({
    super.key, 
    required this.icon, 
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon), 
      onPressed: onPressed,
    );
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key, 
    required this.icon, 
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      
      elevation: 5,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}