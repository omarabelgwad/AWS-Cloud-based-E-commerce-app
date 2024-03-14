import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';

Future<bool> isUserSigned() async {
  try {
    final result = await Amplify.Auth.fetchAuthSession();
    safePrint('User is signed in: ${result.isSignedIn}');
    if (result.isSignedIn==true)
      {
        return true;
      }
    else{
      return false;
    }
  } on AuthException catch (e) {
    safePrint('Error retrieving auth session: ${e.message}');
    return false;
  }
}
Future<void> signedUserID() async {
  try {
    final cognitoPlugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
    final result = await cognitoPlugin.fetchAuthSession();
    final identityId = result.identityIdResult.value;
    safePrint("Current user's identity ID: $identityId");
  } on AuthException catch (e) {
    safePrint('Error retrieving auth session: ${e.message}');
  }
}

Future<String> fetchCurrentUserAttributes() async {
  bool found=false;
  String userName="";
  try {
    final result = await Amplify.Auth.fetchUserAttributes();
    for (final element in result) {
      safePrint('key: ${element.userAttributeKey}; value: ${element.value}');
      if(element.userAttributeKey.toString()=="name")
        {
          print(element.userAttributeKey.toString()+ " is "+element.value.toString());
          found=true;
          userName=element.value.toString();
        }
    }
    return userName;
  } on AuthException catch (e) {
    safePrint('Error fetching user attributes: ${e.message}');
    return "";
  }
}