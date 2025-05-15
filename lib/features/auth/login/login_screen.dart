import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF7F8FA);
    const accentColor = Color(0xFF4876F9);
    const buttonColor = Color(0xFF232943);
    const borderColor = Color(0xFFE0E3EB);

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            constraints: const BoxConstraints(
              maxWidth: 340, // Más delgado
              minWidth: 280,
              minHeight: 410,
              maxHeight: 520,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.96),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.13),
                  blurRadius: 36,
                  offset: const Offset(0, 18),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Título
                const Text(
                  "Login to your account",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF232943),
                  ),
                ),
                const SizedBox(height: 30),
                // Phone
                const Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Color(0xFF5D6374),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    hintText: "+628976543210",
                    prefixIcon: Icon(Icons.phone, color: accentColor),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: borderColor, width: 1.3),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: borderColor, width: 1.3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: accentColor, width: 1.6),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password
                const Text(
                  "Password",
                  style: TextStyle(
                    color: Color(0xFF5D6374),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: !showPassword,
                  style: const TextStyle(fontSize: 15, letterSpacing: 2),
                  decoration: InputDecoration(
                    hintText: "*********",
                    prefixIcon: Icon(Icons.lock_outline, color: accentColor),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                        color: accentColor,
                      ),
                      onPressed: () => setState(() => showPassword = !showPassword),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: borderColor, width: 1.3),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: borderColor, width: 1.3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(color: accentColor, width: 1.6),
                    ),
                  ),
                ),
                // Forgot password alineado a la derecha
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: accentColor,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 34),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    child: const Text("Forgot password?"),
                  ),
                ),
                const SizedBox(height: 20),
                // Botón login
                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción: login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      elevation: 7,
                    ),
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(height: 18),
                // Enlace para registro
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFF5D6374),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/select_role');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: accentColor,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      child: const Text("Sign up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}