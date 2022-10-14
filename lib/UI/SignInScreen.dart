import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:klapp02/Paths.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:klapp02/UI/RegestScreen.dart';
import 'package:klapp02/Logic/SignInLogic.dart';
import '../Logic/BuildBody.dart';

// ignore: unnecessary_import
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<SignInScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      body: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
        Breakpoints.smallAndUp: SlotLayout.from(
          key: const Key('small body'),
          builder: (_) => BuildBody(_currentindex),
        )
      }),
      bottomNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
        Breakpoints.small: SlotLayout.from(
            key: const Key('small topnavbar'),
            builder: (_) => BottomNavigationBarTheme(
                  data: const BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                  ),
                  child: AdaptiveScaffold.standardBottomNavigationBar(
                      currentIndex: _currentindex,
                      onDestinationSelected: (newIndex) {
                        setState(() {
                          _currentindex = newIndex;
                        });
                      },
                      destinations: [
                        const NavigationDestination(
                            icon: Icon(Icons.how_to_reg), label: 'Anmelden'),
                        const NavigationDestination(
                            icon: Icon(Icons.app_registration),
                            label: 'Registrieren'),
                      ]),
                ))
      }),
      primaryNavigation: SlotLayout(config: <Breakpoint, SlotLayoutConfig>{
        Breakpoints.mediumAndUp: SlotLayout.from(
          key: const Key('medium nav left'),
          builder: (context) => AdaptiveScaffold.standardNavigationRail(
            extended: true,
              destinations: [
                const NavigationRailDestination(
                    icon: Icon(Icons.how_to_reg), label: Text('Anmelden')),
                const NavigationRailDestination(
                    icon: Icon(Icons.app_registration),
                    label: Text('Registrieren')),
              ],
              onDestinationSelected: (newIndex) {
                setState(() {
                  _currentindex = newIndex;
                });
              }),
        )
      }),
    );
  }
}


