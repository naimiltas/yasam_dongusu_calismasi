// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:yasam_dongusu_calismasi/SayfaA.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

 class _AnasayfaState extends State<Anasayfa> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    print("initState() çalıştı");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void DidChangeAccessibilityFeatures(AppLifecycleState state) {

    if (state == AppLifecycleState.inactive) {
      print("inactive() çalıştı");
    }
    if (state == AppLifecycleState.paused) {
      print("paused() çalıştı");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed() çalıştı");
    }
    if (state == AppLifecycleState.detached) {
      print("detached() çalıştı");
    }
  }
    @override
    Widget build(BuildContext context) {
      print("build() çalıştı");
        return Scaffold(
          appBar: AppBar(
            title: Text("Yaşam Döngüsü"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RaisedButton(
                child: Text("Tıkla"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
                },
              )
              ],
            ),
          ),
        );
      }
    }
  

