import 'package:flutter/material.dart';

class Likebutton extends StatefulWidget {
  final bool pressLike;

  Likebutton({super.key, this.pressLike = false,});

  @override
  State<Likebutton> createState() => LikebuttonState();
}

class LikebuttonState extends State<Likebutton> {
  late bool _isLiked;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.pressLike;
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isLiked ? Icons.favorite : Icons.favorite_border,
        color: _isLiked ? Colors.red : Colors.grey,size: 20,
      ),
      onPressed: _toggleLike,
    );
  }
}