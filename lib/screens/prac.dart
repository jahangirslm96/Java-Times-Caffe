import 'package:flutter/material.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {

  List<bool> _isSelected = [true, false, false, false];

  void _toggleSelection(int index) {
    setState(() {
      for (int i = 0; i < _isSelected.length; i++) {
        if (i == index) {
          _isSelected[i] = true;
        } else {
          _isSelected[i] = false;
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            GestureDetector(
              onTap: () {
                _toggleSelection(0);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: _isSelected[0] ? Colors.blue : Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Text 1',
                  style: TextStyle(
                    color: _isSelected[0] ? Colors.white : Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),


            GestureDetector(
              onTap: () {
                _toggleSelection(1);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: _isSelected[1] ? Colors.blue : Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Text 1',
                  style: TextStyle(
                    color: _isSelected[1] ? Colors.white : Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                _toggleSelection(2);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: _isSelected[2] ? Colors.blue : Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Text 1',
                  style: TextStyle(
                    color: _isSelected[2] ? Colors.white : Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}
