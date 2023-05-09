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
        appBar: AppBar(
          title: Text(
            'Login Screen',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange[300],
        ),
        body: Column(children: [
         
          Container(
            
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: [
                  Text('NOTIFY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.orange[200],
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Enter Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Forgot: Username/Password',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.orange[300]),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      child: Text('ENTER SUBMIT'),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(height: 140),
                  Text(
                    'Dont have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'SIGN UP NOW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange[400],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  
                ],
              )),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
