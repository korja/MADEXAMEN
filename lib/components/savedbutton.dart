import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class saved extends StatefulWidget {
  final bool isSelected;
  final Color selectedIcon;
  final Color normalIcon;

  const saved({
    super.key,
    required this.isSelected,
    required this.selectedIcon,
    required this.normalIcon,
  });

  @override
  State<saved> createState() => _savedState();
}

class _savedState extends State<saved> {
  bool _isSelected = false;

  @override
  void initstate() {
    _isSelected = widget.isSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        icon: Icon(
          Icons.bookmark,
          size: 24,
          color: _isSelected ? widget.selectedIcon : widget.normalIcon,
        ),
      ),
    );
  }
}
