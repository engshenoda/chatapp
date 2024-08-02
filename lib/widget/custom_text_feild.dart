import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.hintText,
    this.icon,
    this.onPressed,
    required this.obscureText,
    this.prefixIcon, this.onChanged,
  });

  final String hintText;
  final IconData? icon;
  final Icon? prefixIcon;

  final void Function()? onPressed;
  final Function(String)? onChanged;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              onChanged: onChanged,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              obscureText: obscureText,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                prefixIconColor: Colors.white,
                iconColor: Colors.white,
                suffixIcon: IconButton(
                  onPressed: onPressed,
                  icon: Icon(icon),
                  color: Colors.white,
                ),
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
