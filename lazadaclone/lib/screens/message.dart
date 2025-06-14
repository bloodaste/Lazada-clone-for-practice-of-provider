import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  bool _isUp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rising Container")),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isUp = !_isUp;
                });
              },
              child: Text("Click Me"),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            bottom: _isUp ? 200 : 50,
            left: 100,
            right: 100,
            child: Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text("I'm rising!",
                      style: TextStyle(color: Colors.white))),
            ),
          ),
        ],
      ),
    );
  }
}
