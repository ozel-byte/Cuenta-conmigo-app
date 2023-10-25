import 'package:flutter/material.dart';

class CustomTextFieldPassword extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  const CustomTextFieldPassword({super.key, 
    this.controller,
    this.hintText = "Contraseña",});

  @override
  State<CustomTextFieldPassword> createState() => _CustomTextFieldPasswordState();
}

class _CustomTextFieldPasswordState extends State<CustomTextFieldPassword> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      clipBehavior: Clip.antiAlias,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility ,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        hintText: widget.hintText,
        
      ),
    );
  }
}