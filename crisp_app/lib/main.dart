import 'package:flutter/material.dart';
import 'package:crisp/crisp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Crisp(),
    );
  }
}


class Crisp extends StatefulWidget {
  @override
  _CrispState createState() => _CrispState();
}

class _CrispState extends State<Crisp> {
  @override
  void initState() {
    crisp.initialize(
      websiteId: 'f0ff85ee-b0ef-4186-8290-9d5dbb708553',
    );

    crisp.register(
      CrispUser(
        email: "guptabhoomika2000@gmail.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "Bhoomika",
        phone: "74570303549",
      ),
    );

    crisp.setMessage("How can we help you?");
    print(crisp.user);
    print(crisp.user.email);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CrispView(
        loadingWidget: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
