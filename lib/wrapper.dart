import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sic_delivery/innershome.dart';
import 'package:sic_delivery/innerslogin.dart';
import 'package:sic_delivery/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null){
      return Login();
    }
    else {
      return Home();
    }
  }
}