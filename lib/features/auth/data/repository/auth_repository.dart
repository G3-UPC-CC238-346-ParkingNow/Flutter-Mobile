import '../api/auth_api.dart';
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

class AuthRepository {
  final AuthApi _api = AuthApi();

  Future<LoginResponse> login(LoginRequest request) {
    return _api.login(request);
  }

  Future<RegisterDriverResponse> registerDriver(RegisterDriverRequest request) {
    return _api.registerDriver(request);
  }

  Future<RegisterOwnerResponse> registerOwner(RegisterOwnerRequest request) {
    return _api.registerOwner(request);
  }

  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest request) {
    return _api.forgotPassword(request);
  }

  Future<ResetPasswordResponse> resetPassword(ResetPasswordRequest request) {
    return _api.resetPassword(request);
  }

  Future<VerifyCodeResponse> verifyCode(VerifyCodeRequest request) {
    return _api.verifyCode(request);
  }
}