import 'dart:developer';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../core.dart';

class AuthService {
  // final DioClient _dioClient;
  Future googleSignIn() async {
    /// Web Client ID that you registered with Google Cloud.
    const webClientId = KeysEnpoint.webClientID;

    /// iOS Client ID that you registered with Google Cloud.
    const androidClientId = KeysEnpoint.androidClientID;

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: androidClientId,
      serverClientId: webClientId,
    );
    Future signinGoogle() async {
      try {
        if (googleSignIn.currentUser != null) {
          final user = googleSignIn.currentUser!;
          final userRequest = UserRequest(
            email: user.email,
            image: user.photoUrl!,
            name: user.displayName!,
          );
          return await register(userRequest: userRequest);
        } else {
          EasyLoading.showError("Ada yang salah");
        }
      } catch (e) {
          EasyLoading.showError("pesan error $e");
        
      }
    }

    return signinGoogle;
  }

  Future register(
      {required UserRequest userRequest}) async {
    try {
      log(userRequest.toString(), name: "data");

      final response =
          await _dioClient.post(KeysEnpoint.register, data: userRequest.toJson());
      // log(response.toString(), name: "response");
      // return Result.success(UserResponse.fromJson(response['data']));
    } catch (e, st) {
      log("register message", error: e);
      // return Result.failure(
      //   NetworkExceptions.getDioException(e, st),
      //   st,
      // );
    }
  }
}
