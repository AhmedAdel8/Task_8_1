import 'package:flutter/material.dart';
import 'package:last_8/Features/auth/presentation/views/widgets/border_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hinttext,
    required this.mycontroller,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    required this.obscureText,
    this.inputType,
    required this.labeltext,
  });
  final String hinttext;
  final String labeltext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final bool obscureText;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      controller: mycontroller,
      keyboardType: inputType,
      validator: validator,
      decoration: InputDecoration(
        labelText: labeltext,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        enabledBorder: border(color: const Color(0xffe4d4f8), radius: 50),
        focusedBorder: border(color: Colors.purple, radius: 50),
        fillColor: Color(0xffe4d4f8),
        filled: true,
      ),
    );
  }
}
