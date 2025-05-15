import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF7F8FA);
    const buttonColor = Color(0xFF232943);
    const accentColor = Color(0xFF4876F9);
    const borderColor = Color(0xFFE0E3EB);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Botón Back
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 22, color: buttonColor),
                  onPressed: () => Navigator.of(context).pop(),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
                const SizedBox(height: 10),
                // Título
                const Text(
                  "Change\nyour password",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: buttonColor,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 26),
                // Etiqueta New Password
                const Text(
                  "New Password",
                  style: TextStyle(
                    color: Color(0xFF5D6374),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                // Input de contraseña
                TextField(
                  obscureText: !showPassword,
                  style: const TextStyle(fontSize: 16, letterSpacing: 2),
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
                      borderSide: BorderSide(color: accentColor, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                // Botón Cambiar contraseña
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí irá la lógica para cambiar la contraseña
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      elevation: 7,
                    ),
                    child: const Text("Change Password"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}