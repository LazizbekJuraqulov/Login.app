import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UyinPage extends StatefulWidget {
  const UyinPage({Key? key}) : super(key: key);

  @override
  State<UyinPage> createState() => _UyinPageState();
}

class _UyinPageState extends State<UyinPage> {
  
   int sum=10;
   int fun=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uyinga Xush kelibsiz"),
        centerTitle: true,
      ),
      body: Container(child: Column(
        children: [
          Expanded(
            flex: sum,
            child: GestureDetector(
              onTap: (){
                sum+=10;
                setState(() {
                  
                });
              },
            child: Container(
              color: Colors.red,
              child:sum>80?Center(child: Text("Siz yutdingiz!!!",style: TextStyle(fontSize: 65),)):null,
            ),
          )),
          Expanded(
            flex: fun,

            child: GestureDetector(
              onTap: (){
                fun+=10;
                debugPrint(fun.toString());
                setState(() {
                  
                });
              },
            child: Container(color: Colors.green, child:fun>80?Center(child: Text("Siz yutdingiz!!!",style: TextStyle(fontSize: 65),)):null,),
          )),

        ],
      ),),

    );
    
  }
}