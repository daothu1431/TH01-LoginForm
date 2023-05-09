import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
              child: Column(children: [
                
                SizedBox(height: 30),
                Text('SIGN IN TO YOUR ACCOUNT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 50),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[200],
                  child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,                
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Username'
                  ),
                ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[200],
                  child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,                
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password'
                  ),
                ),
                ),
               
                SizedBox(height: 15),
                Row(
                children: [
                  checkBox(),
                  SizedBox(width: 10,),
                  Text('Keep me signed in')
                ],
              ),
                
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 72, 5, 186),
                    ),
                  ) 
                ),
                SizedBox(height: 60),
                Text('Fogot your password?',
                    style: TextStyle(color: Colors.grey[400]),
                    textAlign: TextAlign.center),
              ]),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class checkBox extends StatefulWidget {
  const checkBox({super.key});

  @override
  State<checkBox> createState() => _checkBox();
}

class _checkBox extends State<checkBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return  Color.fromARGB(255, 72, 5, 186);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

