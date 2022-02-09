import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_app/Widgets/Custom_Card_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyScaffol(),
    );
  }

  Widget _bodyScaffol() {
    return Stack(
      children: [

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _topScaffol(),
            _endScaffol(),
          ],
        ),
        _card(),
      ],
    );
  }

  Widget _topScaffol() {
    return Container(
      color: Colors.indigo,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Form(
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              width: 150,
              height: 150,
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://thumbs.dreamstime.com/b/"
                    "smartphone-hand-package-food-fast-delivery"
                    "-flat-vector-illustration-180249679.jpg"),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "fill the below information to login in",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            width: double.infinity,
            height: 350,
            margin: EdgeInsets.all(30),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('LOGIN ACCOUNT'),
                  const customCard(
                    labelHintText: 'user name or Email',
                    labelIcon: Icons.people,
                  ),
                  const customCard(
                    labelHintText: '*******',
                    labelIcon: Icons.vpn_key,
                  ),
                  ElevatedButton(
                    child: Text('hlaskjhflas'),
                    onPressed: () {
                      decoration:
                      InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 20),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _endScaffol() {
    return Container(

      color: Colors.white10,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SizedBox(
              height: 50,
            ),
            Text("fill the below information to login in"),
            SizedBox(height: 10),
            Text(
              "REGISTER",
              style: TextStyle(color: Colors.indigo),
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}
