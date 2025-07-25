import 'package:flutter/material.dart';

void main(){
  return runApp(const HomePage());
}



class HomePage extends StatefulWidget {
  // const HomePage({super.key}); 
  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();f
    return _HomePageState();
  }

}  
class _HomePageState extends State<HomePage>{
  int count = 0;
  // const _HomePageState({super.key})
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text('开始背单词吧'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.next_plan),
        onPressed: () {Navigator.pushNamed(context, '/profile');}
      )
    );
  }
}