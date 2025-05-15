import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/login_request.dart';
import '../models/login_response.dart';
import '../models/register_driver_request.dart';
import '../models/register_driver_response.dart';
import '../models/register_owner_request.dart';
import '../models/register_owner_response.dart';
import '../models/forgot_password_request.dart';
import '../models/forgot_password_response.dart';
import '../models/reset_password_request.dart';
import '../models/reset_password_response.dart';
import '../models/verify_code_request.dart';
import '../models/verify_code_response.dart';

class AuthApi {
  // Cambia por la URL real de tu backend
  static const String _baseUrl = "http://TU_BACKEND_URL/api";

  Future<LoginResponse> login(LoginRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Login failed: ${response.body}");
    }
  }

  Future<RegisterDriverResponse> registerDriver(RegisterDriverRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/register/driver"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return RegisterDriverResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Register driver failed: ${response.body}");
    }
  }

  Future<RegisterOwnerResponse> registerOwner(RegisterOwnerRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/register/owner"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return RegisterOwnerResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Register owner failed: ${response.body}");
    }
  }

  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/forgot-password"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return ForgotPasswordResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Forgot password failed: ${response.body}");
    }
  }

  Future<ResetPasswordResponse> resetPassword(ResetPasswordRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/reset-password"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return ResetPasswordResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Reset password failed: ${response.body}");
    }
  }

  Future<VerifyCodeResponse> verifyCode(VerifyCodeRequest request) async {
    final response = await http.post(
      Uri.parse("$_baseUrl/verify-code"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(request.toJson()),
    );
    if (response.statusCode == 200) {
      return VerifyCodeResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Verify code failed: ${response.body}");
    }
  }
}