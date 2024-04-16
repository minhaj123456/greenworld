import 'package:flutter/material.dart';
import 'package:task/checkin.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
   TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text("LOGO",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          )),
            Padding(
                          padding: const EdgeInsets.only(
                              top: 90, left: 10, right: 10),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'User Id ',
                                labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 9, 9, 9),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromARGB(255, 10, 10, 10)),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            cursorColor: Colors.blue,
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10,top: 20),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Color.fromARGB(255, 11, 11, 11)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                                      suffixIcon: Icon(Icons.remove_red_eye)
                            ),
                            obscureText: true,
                          ),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 50),
                         child: ElevatedButton(onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context) => checkin(),));
                         }, child: Text("Login")),
                       )
        ],
      ),
    );
  }
}