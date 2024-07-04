import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ui/pages/board_page.dart';
import 'package:ui/pages/main_page.dart';

import 'amplifyconfiguration.dart';

import 'models/ModelProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _configureAmplify();
    //myQuery();

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ProductGetClass().getProducts();
    return MaterialApp(
      home:  BoardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
  void _configureAmplify() async {
    try {
      final api = AmplifyAPI(modelProvider: ModelProvider.instance);

      final authCognitoPlugin=AmplifyAuthCognito();
      final datastorePlugin = AmplifyDataStore(modelProvider: ModelProvider.instance);
      await Amplify.addPlugins([api, authCognitoPlugin,datastorePlugin]); // Add the API plugin
      await Amplify.configure(amplifyconfig);
      safePrint('Successfully configured');
      MainPage.getProductObject();
    } on Exception catch (e) {
      safePrint('Error configuring Amplify: $e');
    }
  }

}
