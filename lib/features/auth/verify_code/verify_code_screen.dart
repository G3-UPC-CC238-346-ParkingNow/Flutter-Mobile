import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF7F8FA);
    const buttonColor = Color(0xFF232943);
    const accentColor = Color(0xFF4876F9);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
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
                  "Verification\ncode",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: buttonColor,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 18),
                // Subtítulo
                const Text(
                  "Enter the code we sent to your phone",
                  style: TextStyle(
                    color: Color(0xFF5D6374),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 32),
                // Input de código (PIN de 6 dígitos)
                TextField(
                  controller: _codeController,
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    letterSpacing: 10,
                    color: buttonColor,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    counterText: '',
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: accentColor, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: accentColor, width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 38),
                // Botón Verify
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Aquí navega a la pantalla de cambio de contraseña
                      Navigator.pushNamed(context, '/reset_password');
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
                    child: const Text("Verify"),
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