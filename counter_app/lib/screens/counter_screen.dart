import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  void increase() {
    count++;
    setState(() {});
  }

  void decrease() {
    count--;
    setState(() {});
  }

  void clear() {
    count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSizeNew = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Numero de clicks',
              style: fontSizeNew,
            ),
            Text(
              '$count',
              style: fontSizeNew,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: CustomFloatingAccions(
        increaseFn: increase,
        decreaseFn: decrease,
        cleanFn: clear,
      ),
    );
  }
}

class CustomFloatingAccions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function cleanFn;

  const CustomFloatingAccions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.cleanFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.cleaning_services),
          onPressed: () => cleanFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_rounded),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
