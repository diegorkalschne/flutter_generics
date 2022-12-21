import 'package:flutter/material.dart';

class CsDropdown<T> extends StatelessWidget {
  const CsDropdown({
    required this.items,
    required this.value,
    required this.onChanged,
    super.key,
  });

  final List<DropdownMenuItem<T>> items;
  final T? value;
  final void Function(T?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: items,
      onChanged: onChanged,
      value: value,
      hint: const Text('Selecione'),
      isExpanded: true,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      borderRadius: BorderRadius.circular(8),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
