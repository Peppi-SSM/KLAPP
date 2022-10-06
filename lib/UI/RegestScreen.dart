import 'package:flutter/material.dart';

class RegestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Regestrieren'),
        ),
        body: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/BackroundMountn.jpg', fit: BoxFit.cover),
              ColoredBox(
                  color: Colors.black.withOpacity(0.5) // 0: Light, 1: Dark
                  ),
              Container(
                child: Text("was geht"),
              )
            ],
          ),
        ));
  }
}
