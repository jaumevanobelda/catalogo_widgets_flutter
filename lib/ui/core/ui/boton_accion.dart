import 'package:flutter/material.dart';

class BotonAccion extends StatelessWidget {
  const new({
    super.key,
    required this.texto,
    this.onPressed,
    this.destacado = false,
  });
  final String texto;
  final VoidCallback? onPressed;
  final bool destacado;
  @override
  Widget build(BuildContext context) {

    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: destacado ?Colors.red : Colors.lightBlue,
        foregroundColor:destacado ? Colors.black : Colors.black,
        padding: destacado ? const EdgeInsets.symmetric(horizontal: 30, vertical: 20) : const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      onPressed: onPressed,
      child: Text(texto),
      
    );
  }
}
