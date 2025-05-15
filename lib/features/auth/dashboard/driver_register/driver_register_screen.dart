import 'package:flutter/material.dart';

class DriverRegisterScreen extends StatefulWidget {
  const DriverRegisterScreen({Key? key}) : super(key: key);

  @override
  State<DriverRegisterScreen> createState() => _DriverRegisterScreenState();
}

class _DriverRegisterScreenState extends State<DriverRegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  // Controladores
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _plateController = TextEditingController();
  final TextEditingController _dniController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF232943)),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Register Conductor',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF232943),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: 24),
              _InputField(
                controller: _nameController,
                label: "Your Name",
                icon: Icons.person_outline,
                validator: (value) => value!.isEmpty ? "Enter your name" : null,
              ),
              const SizedBox(height: 16),
              _InputField(
                controller: _emailController,
                label: "Email",
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) return "Enter your email";
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) return "Invalid email";
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _InputField(
                controller: _passwordController,
                label: "Password",
                icon: Icons.lock_outline,
                obscureText: _obscurePassword,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xFF232943),
                  ),
                  onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                ),
                validator: (value) =>
                value!.length < 6 ? "At least 6 characters" : null,
              ),
              const SizedBox(height: 16),
              _InputField(
                controller: _confirmPasswordController,
                label: "Confirmation Password",
                icon: Icons.lock_outline,
                obscureText: _obscureConfirm,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureConfirm ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xFF232943),
                  ),
                  onPressed: () => setState(() => _obscureConfirm = !_obscureConfirm),
                ),
                validator: (value) =>
                value != _passwordController.text ? "Passwords do not match" : null,
              ),
              const SizedBox(height: 16),
              _InputField(
                controller: _plateController,
                label: "Registrar placa de vehículo",
                icon: Icons.directions_car_outlined,
                validator: (value) => value!.isEmpty ? "Enter vehicle plate" : null,
              ),
              const SizedBox(height: 16),
              _InputField(
                controller: _dniController,
                label: "DNI",
                icon: Icons.credit_card_outlined,
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? "Enter your DNI" : null,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF232943),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Aquí conectas con backend o navegas al dashboard
                      Navigator.pushReplacementNamed(context, '/driver_dashboard');
                    }
                  },
                  child: const Text(
                    "Registrarse",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const _InputField({
    Key? key,
    required this.controller,
    required this.label,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Color(0xFF232943)),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}