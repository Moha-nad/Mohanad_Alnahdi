import 'package:flutter/material.dart';

class Savebutton extends StatefulWidget {
  final bool pressSave;
  const Savebutton({super.key, this.pressSave = false});

  @override
  State<Savebutton> createState() => _SavebuttonState();
}

class _SavebuttonState extends State<Savebutton> {
  late bool _isSave;

  @override
  void initState() {
    super.initState();
    _isSave = widget.pressSave;
  }

  void _toggleLike() {
    setState(() {
      _isSave = !_isSave;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isSave ? Icons.save : Icons.save_outlined,
        color: _isSave ? Colors.blue[300] : Colors.grey,size: 20,
      ),
      onPressed: _toggleLike,
    );
  }
}
