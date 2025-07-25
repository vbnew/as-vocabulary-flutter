import 'package:flutter/material.dart';

void main(){
  return runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: '个人中心',
      home: Column(
      children: [
        const Text("我的信息"),
        BackButton(
          onPressed: () {
            Navigator.pop(context);
          }
        )
      ],
    ));
  }
} 