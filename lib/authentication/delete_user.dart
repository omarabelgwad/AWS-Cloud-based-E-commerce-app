import 'package:amplify_flutter/amplify_flutter.dart';

Future<void> deleteUser() async {
  try {
    await Amplify.Auth.deleteUser();
    safePrint('Delete user succeeded');
  } on AuthException catch (e) {
    safePrint('Delete user failed with error: $e');
  }
}