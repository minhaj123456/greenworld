import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class checkin1 extends StatefulWidget {
  const checkin1({super.key});

  @override
  State<checkin1> createState() => _checkin1State();
}

class _checkin1State extends State<checkin1> {
      String formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
        bool _isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           Center(
             child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYxsG3Ac8-CCLG3PzEvZXAfVoQxmjHleJqjg&s'),
                ),
           ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ),
              Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(' $formattedDate'),
          ),
        ),
        GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: _isPressed ? Color.fromARGB(255, 241, 96, 5) : Color.fromARGB(255, 233, 79, 2),
              borderRadius: BorderRadius.circular(120), // Adjust radius to make it round
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Press and Hold',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                     Text(
                      'CHECK out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    SizedBox(height: 10,),
    Center(
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(20)),
        child: Center(child: Text("Shift 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),
        
      ),
    )
    ,Padding(
      padding: const EdgeInsets.only(left: 150,top: 50),
      child: Row(
        children: [Icon(Icons.location_on_outlined),
          Text("Kerala India"),
        ],
      ),
    ),
    Row(
      children: [
        Column(
          children: [
            Icon(Icons.timer,color: Colors.green,),
            Text("9.00"),
            Text("check In")
          ],
        ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Column(
            children: [
              Icon(Icons.timer,color: Colors.red,),
              Text("12:00"),
              Text("check out")
            ],
                    ),
          ),
        
      ],
    )
    
        ],
      ),
    );
  }
}