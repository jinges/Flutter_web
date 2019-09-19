import 'package:flutter/material.dart';

import './test1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webby',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: WebbyHome(),
    );
  }
}

class WebbyHome extends StatelessWidget {
  const WebbyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        title: Text('Webby'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          padding:  EdgeInsets.symmetric(horizontal: 20),
          alignment:  Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(blurRadius: 6, color: Colors.grey, spreadRadius: 4)
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 35),
              TextField(
                autofocus: true,
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: 'Password',
                )
              ),
              SizedBox(height: 50),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Colors.orange,
                color:  Theme.of(context).primaryColor,
                onPressed: (){
                  Navigator.push( context,
                    MaterialPageRoute(builder: (context) {
                        return Test1Demo();
                    })
                  );
                },
                child: Text('Login In', style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.message),
        label: Text('Contact Us'),
        onPressed: (){},
      ),
    );
  }
}
