import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../SignUp_screen.dart';

Image LogoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 200,
    height: 200,
  );
}

RegExp username = RegExp(r'^.{4,}$');
RegExp password = RegExp(r'^.{8,}$');
RegExp email = RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]");
TextFormField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller, String test) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (test == "email") {
        if (value!.isEmpty) return ("Please complete field email.");
        if (!email.hasMatch(value)) return ("Please verify email.");
      } else if (test == "password") {
        if (value!.isEmpty) return ("Please complete field password.");
        if (!password.hasMatch(value)) {
          return ("Please verify password Min 8 character.");
        }
      } else {
        if (value!.isEmpty) return ("Please complete field username.");
        if (!username.hasMatch(value)) {
          return ("Please verify username Min 4 character.");
        }
      }

      return null;
    },
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    cursorColor: Colors.white,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white70,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      fillColor: Colors.transparent,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30.0),
        borderSide: const BorderSide(width: 2, color: Colors.white10),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Future<void> forget_Password(String email, BuildContext context) async {
  try {
    await FirebaseAuth.instance
        .sendPasswordResetEmail(
          email: email,
        )
        .then((value) => Navigator.of(context).pop());
  } catch (e) {
    showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              content: Text(
                "Utilisateur non trouvé",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )));
  }
}
