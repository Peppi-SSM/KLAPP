import 'package:firebase_auth/firebase_auth.dart';
import 'package:klapp02/Paths.dart';
import 'package:flutterfire_ui/auth.dart';
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
        builder: (context, snapshot) {
          //User is not signed in
          if (!snapshot.hasData) {
            //return const SignInScreen(
            //providerConfigs: [
            //EmailProviderConfiguration(),
            // GoogleProviderConfiguration(clientId: '835296411177-oeg97ol5k748qn2btm5tlunbh0ltv8bt.apps.googleusercontent.com')
            //],);

            return const LoginScreen();
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
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Wilkommen bei KLAPP',
                textScaleFactor: 2,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Melden Sie sich an, und legen Sie gleich los',
                    textScaleFactor: 1,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.person_rounded,
                    size: 35,
                    color: Colors.blue,
                    ),
                    Flexible(
                        child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Nutzername oder Email',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 2, color: Colors.greenAccent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 2, color: Color(0xffF02E65)),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 66, 125, 145),
                                ),
                              ),
                            ))),
                  ],
                ),
              ), //Nutzername ende
              const SizedBox(// Email
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const[
                      TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Passwort',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 2, color: Color(0xffF02E65)),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 66, 125, 145),
                              ),
                            ),
                          )),
                    ],
                  )) //Email
            ],
          ),
        ),
      ),
    );
  }
}
