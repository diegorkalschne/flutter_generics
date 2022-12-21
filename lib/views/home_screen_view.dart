import 'package:flutter/material.dart';
import 'package:flutter_generics/widgets/cs_dropdown.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  List<String> items = [
    'Opção 1',
    'Opção 2',
    'Opção 3',
    'Opção 4',
    'Opção 5',
  ];

  String? value;

  T? returnValue<T>(T value) {
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Generics'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: CsDropdown<String>(
            items: items
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            value: value,
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
