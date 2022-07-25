import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';


class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  void deactivate() {
    super.deactivate();
    print("Sayfa A  : deactivate() çalıştı");
  }

@override
  void dispose() {
    super.dispose();
     print("Sayfa A  : dispose() çalıştı");
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
          appBar: AppBar(
            title: Text("Sayfa A"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
        );
  }
}
