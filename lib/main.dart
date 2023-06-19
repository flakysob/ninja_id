import 'package:flutter/material.dart';

//stless-stful

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));


class NinjaCard extends StatefulWidget {  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

int ninjaLevel = 0;

class _NinjaCardState extends State<NinjaCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Ninja ID Card", style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Ninja.jpg"),
                radius: 60.0,
              ),
            ),

            Divider(
              height: 70.0,
              color: Colors.grey[800],
            ),


            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Text(
              "Chun-li",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Text(
              "Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                SizedBox(width: 10.0),

                Text(
                  "mail_adress@mail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),


            Expanded(
              child: Container(
                margin: EdgeInsets.all(90.0),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      ninjaLevel += 5;
                    });
                  },
                  child: Text(
                    "+5 Level",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800])
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
