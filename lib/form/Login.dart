import 'package:flutter/material.dart';
import 'package:green_farm/form/sidebar.dart';
import 'Registration.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/farm.jpg',
              width: 100.0,
              height: 100.0,
            ),
            new Container(
              height: 200.0,
              width: 400.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: 'Username',
                      icon: new Icon(Icons.person),
                    ),
                  ),
                  new TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.all(10.0)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          //margin: const Edge
                            margin: const EdgeInsets.only(left: 38.0),
                            child: new RaisedButton(
                              onPressed: () => Navigator.push(
    context, MaterialPageRoute(builder: (context)=>MenuDashboardPage())),
                              color: Colors.redAccent,
                              child: new Text("Login",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9)),
                            )),
                        new Container(
                          margin: const EdgeInsets.only(left: 38.0),
                          child: new RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Registration()));
                            },
                            color: Colors.redAccent,
                            child: new Text("Register",
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 16.9)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
