import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  const W1({super.key, required this.value, required this.add,});
  final double value;
  final Function(double value) add;
  //color: Theme.of(context).primaryColor,
  // color: Theme.of(context).colorScheme.inversePrimary,
  // container margin: const EdgeInsets.all(10),
  // container padding: const EdgeInsets.all(10),
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$value',
          key: Key('W1Value'),
        ),
        IconButton(onPressed: ()=> add, icon: Icon(Icons.add), key: Key('W1Add')),
        IconButton(onPressed: null, icon: Icon(Icons.remove), key: Key('W1Sub'))
      ],
    );
  }
}
