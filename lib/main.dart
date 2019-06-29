import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      debugShowCheckedModeBanner: false,
      home: PizzaWidget()
    );
  }
}

/* A Pizza widget */
class PizzaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 30.0, left: 10.0),
            color: Colors.deepOrangeAccent,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Margherita",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto Slab',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("Tomato, Basil, Mozzarella",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Marinara",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto Slab',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("Tomato, Garlic",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            decoration: TextDecoration.none
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 60.0),
                  child: Image.asset("images/pizza.png", alignment: Alignment.center, width: 200, height: 200),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80.0),
                  child: RaisedButton(
                    child: Text("Order your pizza now"),
                    color: Colors.black,
                    textColor: Colors.amber,
                    elevation: 5.0,
                    onPressed: () => order(context),
                  ),
                )
              ],
            )
        )
    );
  }

  // Order pizza
  order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order complete"),
      content: Text("Thanks for your order!"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alert
    );
  }
}

