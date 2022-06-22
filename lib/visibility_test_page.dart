import 'package:flutter/material.dart';

class VisibilityTestPage extends StatefulWidget {
  const VisibilityTestPage({Key? key}) : super(key: key);

  @override
  _VisibilityTestPageState createState() => _VisibilityTestPageState();
}

class _VisibilityTestPageState extends State<VisibilityTestPage> {
  bool isVisible = true;

  void showContainer() {
    setState(() {
      isVisible = true;
    });
  }

  void hideContainer() {
    setState(() {
      isVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide/Show Widget'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Visibility(
              // set visible: visible: true/false,
              visible: isVisible,
              child: Container(
                height: 300.0,
                // width could be queried from context view to avoid overflow
                width: 300,
                color: Colors.redAccent,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showContainer();
                  },
                  child: Text('Show Container')),
              const SizedBox(width: 35.0),
              ElevatedButton(
                  onPressed: () {
                    hideContainer();
                  },
                  child: Text('Hide Container'))
            ],
          )
        ],
      ),
    );
  }
}
