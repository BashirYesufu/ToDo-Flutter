import 'package:flutter/material.dart';
import 'gradient_button.dart';
import 'gradient_button_with_text.dart';
import 'todo_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String name = '';
  String description = '';
  String date = '';
  String time = '';
  List<Widget> todos = [];

  var nameTextController = TextEditingController();
  var dateTextController = TextEditingController();
  var timeTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'TODO',
          style: TextStyle(color: Colors.black),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
           ListTile(
               title: Text('NEW TASK'),
           ),

            ListTile(
              title: Text('Icon'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradientButton(
                  color1: Color(0xFFFF9151),
                  color2: Color(0xFFFF3489),
                  size: 5,
                  icon: Icons.add,
                ),
                GradientButton(
                  color1: Colors.pink,
                  color2: Colors.deepPurpleAccent,
                  size: 5,
                  icon: Icons.add,
                ),
                GradientButton(
                  color1: Colors.blue,
                  color2: Colors.blueGrey,
                  size: 5,
                  icon: Icons.add,
                ),

              ],
            ),

            ListTile(
              title: Text('Name'),
              subtitle: TextField(
                controller: nameTextController,
              ),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Description'),
              subtitle: TextFormField(
                maxLines: 5,
                decoration: InputDecoration(fillColor: Colors.white,
                    hintText: 'Enter your description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))
                    )
                ),
              ),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Date'),
              subtitle: TextField(
                controller: dateTextController,
              ),
            ),

            SizedBox(height: 20.0,),

            ListTile(
              title: Text('Time'),
              subtitle: TextField(
                controller: timeTextController,
              ),
            ),

            SizedBox(height: 50.0,),

            ListTile(
              title: Container(
                margin: EdgeInsets.only(right: 150.0),
                child: GradientButtonWithText(
                  text: 'Add',
                  onPressed: () {
                    setState(() {
                      todos.add(
                        TodoCard(
                            nameText: nameTextController.text,
                            dateText: dateTextController.text,
                            timeText: timeTextController.text,
                        ),
                      );
                      Navigator.of(context).pop();
                    });
                  },
                ),
              ),

            ),

          ],
        ),
      ),
      backgroundColor: Colors.grey,
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            GradientButton(
              color1: Color(0xff6C37CB),
              color2: Color(0xffE716A3),
              action: () {},
              icon: Icons.check,
            ),

            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.orange[800],
                  size: 30,
                ),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20.0),
                    primary: Colors.white
                )
            ),

            GradientButton(
              color1: Color(0xff0D7AEA),
              color2: Color(0xff00D5F9),
              action: () {
                Navigator.of(context);
              },
              icon: Icons.add,
            ),

          ],
        ),
      ],

      body: SingleChildScrollView(
        child: Column(
          children: todos,
        ),
      ),
      );
  }
}


