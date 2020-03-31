import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  var a =0,b=0,c=5;


  void operation(String cha)
  {
    setState(() {
      a=int.parse(t1.text);
      b=int.parse(t2.text);
      if(cha.startsWith("+"))
{
  c=a+b;

}
else if(cha.startsWith("-"))
{
  c=a-b;

}
else if(cha.startsWith("*"))
{
  c=a*b;

}
else
  {
  c=a ~/b;

}

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator App"),
        centerTitle: true,
      ),
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          new Text("OUTPUT IS :"+ (c.toString()), style: TextStyle(fontWeight: FontWeight.bold)),

            new TextField(
              controller: t1,
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(
              hintText: "Enter The First Number",
              hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300)
            ),
          ),
            new TextField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  hintText: "Enter The First Number",
                  hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300)
              ),
            ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                  child: new Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                  onPressed: (){operation("+");}

                  ),
              new MaterialButton(
                  child: new Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                  onPressed: (){operation("-");}

              )
            ],
          ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                    onPressed: (){operation("*");}

                ),
                new MaterialButton(
                    child: new Text("/",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                    onPressed: (){operation("/");}

                )
              ],
            )
        ]

      )
      );
  }
}
