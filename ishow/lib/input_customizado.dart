import 'package:flutter/material.dart';

class InputCustomizado extends StatelessWidget {
  const InputCustomizado(
      {Key? key,
      required this.hint,
      this.obscure = false,
      this.icon = Icons.person})
      : super(key: key);

  final String hint;
  final bool obscure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
            icon: Icon(icon),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[600], fontSize: 18)),
      ),
    );
  }
}
