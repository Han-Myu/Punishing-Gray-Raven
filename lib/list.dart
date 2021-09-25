import 'package:flutter/material.dart';
import 'package:punishing_gray_raven/Repository.dart';

import 'UserData.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {
  List<User> listuser = [];
  Repository repository = Repository();

  getData() async{
    listuser = await repository.getData();
    setState(() {

    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(itemBuilder: (context, index){
          return Container(child: Text(listuser[index].name),);
        }, separatorBuilder: (context, index){
          return Divider();
        }, itemCount: listuser.length),
      ),
    );
  }
}

