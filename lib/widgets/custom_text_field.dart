import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  final String hint;
  final String hint2;
  final int maxLength;
  final int maxLines;
  final bool enabled;
  final bool addBorder;
  final bool onlyEnglish;
  final double height;

  final String? Function(String?)? validator;
  final void Function(String?)? onchaged;

  bool hasBeenUsed = false;

  CustomTextField({
    super.key,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    this.maxLength = 30,
    this.maxLines = 1,
    this.enabled = true,
    this.hint2 = '',
    this.onlyEnglish = false,
    required this.hint,
    this.addBorder = true,
    this.height = 1,
    this.validator,
    this.onchaged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onchaged,
      style: const TextStyle(
          color: Color.fromRGBO(37, 37, 37, 1), fontFamily: "SF Pro Display"),
      obscureText: obscureText,
      enabled: enabled,
      keyboardType: keyboardType,
      enableInteractiveSelection: true,
      controller: controller,
      showCursor: true,
      maxLength: maxLength,
      autofocus: false,
      maxLines: maxLines,
      cursorColor: Colors.black,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: hint,
        counterText: "",
        hintStyle: const TextStyle(
          fontFamily: "SF Pro Display",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.275,
          color: Colors.grey,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomTextFieldInt extends StatelessWidget {
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;

  final String hint;
  final String hint2;
  final int maxLength;
  final int maxLines;
  final bool enabled;
  final bool addBorder;
  final bool onlyEnglish;
  final double height;

  final String? Function(String?)? validator;
  final void Function(String?)? onchaged;

  bool hasBeenUsed = false;

  CustomTextFieldInt({
    super.key,
    this.keyboardType = TextInputType.number,
    required this.controller,
    this.obscureText = false,
    this.maxLength = 30,
    this.maxLines = 1,
    this.enabled = true,
    this.hint2 = '',
    this.onlyEnglish = false,
    required this.hint,
    this.addBorder = true,
    this.height = 1,
    this.validator,
    this.onchaged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onchaged,
      style: const TextStyle(
          color: Color.fromRGBO(37, 37, 37, 1), fontFamily: "SF Pro Display"),
      obscureText: obscureText,
      enabled: enabled,
      keyboardType: keyboardType,
      enableInteractiveSelection: true,
      controller: controller,
      showCursor: true,
      maxLength: maxLength,
      autofocus: false,
      maxLines: maxLines,
      cursorColor: Colors.black,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        enabled: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0)),
          borderSide: BorderSide(color: Colors.red),
        ),
        hintText: hint,
        counterText: "",
        hintStyle: const TextStyle(
          fontFamily: "SF Pro Display",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.275,
          color: Colors.black,
        ),
      ),
    );
  }
}
