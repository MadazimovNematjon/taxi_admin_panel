import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {
  // VoidCallback onTab;
  final TextEditingController? controller;
  String? hintText;
  final IconData? icon;
  bool? passwordIcon;

  MyTextField(
      {super.key,
      required this.controller,
      this.hintText,
      required this.icon,
      this.passwordIcon});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

bool hidden = false;

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 10),
      margin: const EdgeInsets.only(top: 7),
      height: 42,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Colors.black),
        color: Colors.white,
      ),
      child: Center(
        child: TextField(
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
                color: Color(0xFF101010),
                fontSize: 12,
                fontWeight: FontWeight.w600),
          ),
          controller: widget.controller!,
          obscureText: widget.passwordIcon != null ? !hidden : false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintText!,
            hintStyle: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            suffixIcon: widget.passwordIcon == true
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        hidden = !hidden;
                      });
                    },
                    icon: Icon(
                      hidden ? Icons.visibility_off : Icons.visibility,
                      size: 20,
                      color: Colors.black,
                    ),
                  )
                : null,
            prefixIcon: Icon(
              widget.icon!,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
