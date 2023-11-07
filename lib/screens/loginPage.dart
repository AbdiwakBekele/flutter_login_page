import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = new TextEditingController();
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(minWidth: 500),
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: _emailController,
                onChanged: (value) {
                  print(value);
                },
                obscureText: isVisible,
                decoration: InputDecoration(
                  hintText: "Email",
                  errorText: null,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.black,
                    //   blurRadius: 10,
                    //   offset: Offset(0, 0),
                    // )
                  ]),
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    padding: EdgeInsets.all(20),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
