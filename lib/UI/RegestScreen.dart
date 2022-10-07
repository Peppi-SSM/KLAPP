import 'package:flutter/material.dart';
import 'package:klapp02/Logic/SignInLogic.dart';

class RegestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<RegestScreen> {
  TextEditingController username = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController checkpassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Registrieren'),
        ),
        body: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/BackroundMountn.jpg', fit: BoxFit.cover),
              ColoredBox(
                  color: Colors.black.withOpacity(0.5) // 0: Light, 1: Dark
                  ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Bitte registrieren Sie sich:',
                              textScaleFactor: 1.4,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          //Nutzername
                          children: [
                            const Icon(
                              Icons.person_rounded,
                              size: 35,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                                child: TextField(
                                    controller: username,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nutzername',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Color(0xffF02E65)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lime,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // Email
                          children: [
                            const Icon(
                              Icons.email,
                              size: 35,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                                child: TextField(
                                    controller: email,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Color(0xffF02E65)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lime,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          //Passwort
                          children: [
                            const Icon(
                              Icons.lock_outline,
                              size: 35,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                                child: TextField(
                                    controller: password,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Passwort',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Color(0xffF02E65)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lime,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          // Passwortbestätigen
                          children: [
                            const Icon(
                              Icons.lock_outline,
                              size: 35,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                                child: TextField(
                                    controller: checkpassword,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    obscureText: false,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Passwort bestädigen',
                                      labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Colors.blue),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2, color: Color(0xffF02E65)),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.lime,
                                        ),
                                      ),
                                    ))),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: 60,
                          width: 250,
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () {CreateUserWithEmailandPassword(email.text, password.text, username.text,context);},
                              child: const Text(
                                'Registrieren',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
