import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
));

class Home extends StatelessWidget {

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 50.0, right: 50.0),
              ),

            
            TextFormField(
                controller: email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  
                ),
                
              ),
            
            SizedBox(height: 20.0),
            
            TextFormField(
              controller: password,
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                prefixIcon: Icon(Icons.lock, color: Colors.white),
              )
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  
                
                ),
                
              ),
              RaisedButton(
                color: Colors.grey[900], // background
                textColor: Colors.white, // foreground
                
                onPressed: () {
                  login();
                },
                child: Text('Sign in', style: TextStyle(fontSize: 15.0),),
                
              )
            
          ],
        ),
      ),
    );
  }
}

login(){
  print('Login Successful');
}
validateEmailInput(String value) {

}