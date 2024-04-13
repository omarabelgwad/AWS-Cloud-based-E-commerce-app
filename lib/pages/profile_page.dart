import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/components/circle_button.dart';
import 'package:ui/components/title_text.dart';

import '../authentication/delete_user.dart';
import '../authentication/sign_out.dart';
import '../authentication/signed_user.dart';
import '../components/rectangular_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<bool> isSigned;
  @override
  Widget build(BuildContext context) {
    return Authenticator(
      signUpForm: SignUpForm.custom(
        fields: [

          SignUpFormField.username(),

          SignUpFormField.password(),
        ],
      ),
      child: MaterialApp(
        builder: Authenticator.builder(),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Image(
                  height: 250,
                  width: 250,
                  image: AssetImage('assets/images/logo-no-background.png'),
                ),

                titleText(
                  yourTitle: "you are signned in",
                  fontSize: 30,
                ),
                GestureDetector(
                  child: circleButton(
                    buttonText: "Sign Out",
                    fontSize: 20,
                  ),
                  onTap: () {
                    signOutCurrentUser();
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: circleButton(
                    buttonText: "Delete your account",
                    fontSize: 20,
                    width: 250,
                  ),
                  onTap: () {
                    deleteUser();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
