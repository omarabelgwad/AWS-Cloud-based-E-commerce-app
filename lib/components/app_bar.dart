import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui/models/ModelProvider.dart';
import 'package:ui/pages/profile_page.dart';

import '../authentication/signed_user.dart';
import '../data_manipution/product_manipulation.dart';

import '../pages/main_page.dart';

PreferredSizeWidget appBarCustom(BuildContext myContext) {
  return AppBar(
    title: Image(
      height: 120,
      width: 120,
      image: AssetImage('assets/images/logo-no-background.png'),
    ),
    actions: [
      IconButton(onPressed: () {
    Navigator.push(myContext!, MaterialPageRoute(builder: (context) => ProfilePage(),));
    isUserSigned();
    signedUserID();
    fetchCurrentUserAttributes();
    //queryProduct();
    //deleteProducById();
    },
          icon: Icon(
            CupertinoIcons.person_alt_circle_fill,
            size: 50,
          ))
    ],
  );
}
