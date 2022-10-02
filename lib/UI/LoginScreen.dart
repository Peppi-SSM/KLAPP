import 'package:firebase_auth/firebase_auth.dart';
import 'package:klapp02/Paths.dart';
import  'package:flutterfire_ui/auth.dart';
import 'package:animated_login/animated_login.dart';

// ignore: depend_on_referenced_packages
import 'package:async/async.dart';
// ignore: unnecessary_import
import 'package:flutter/material.dart';





class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          //User is not signed in
          if(!snapshot.hasData){
            return const SignInScreen(
             providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(clientId: '835296411177-oeg97ol5k748qn2btm5tlunbh0ltv8bt.apps.googleusercontent.com')
            ],);

            //return const LoginScreen();
          }
          return const MyHomePage(title: 'Klapp');
        });
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              const Text('Wilkommen bei KLAPP'),


            ],
          ),
        ),
      ),
    );
  }



}