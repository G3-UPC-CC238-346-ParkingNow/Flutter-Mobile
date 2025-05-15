import 'package:flutter/material.dart';
import 'features/home/home_screen.dart';
import 'features/auth/forgot_password/forgot_password_screen.dart';
import 'features/auth/login/login_screen.dart';
import 'features/auth/verify_code/verify_code_screen.dart';
import 'features/auth/reset_password/reset_password_screen.dart';
import 'features/onboarding/select_role/select_role_screen.dart';
import 'features/auth/dashboard/driver_register/driver_register_screen.dart';
import 'features/auth/dashboard/owner_register/owner_register_screen.dart';
import 'features/auth/dashboard/driver_dashboard/driver_dashboard_screen.dart';
import 'features/auth/dashboard/owner_dashboard/owner_dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
      routes: {
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/login': (context) => const LoginScreen(),
        '/verify_code': (context) => const VerificationCodeScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/select_role': (context) => const SelectRoleScreen(),
        '/register_driver': (context) => const DriverRegisterScreen(),    // <-- corregido
        '/register_owner': (context) => const OwnerRegisterScreen(),      // <-- corregido
        '/driver_dashboard': (context) => const DriverDashboardScreen(),
        '/owner_dashboard': (context) => const OwnerDashboardScreen(),
      },
    );
  }
}