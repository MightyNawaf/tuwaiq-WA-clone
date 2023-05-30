import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const blue = Color.fromARGB(255, 7, 85, 203);
final customAppBar = AppBar(
  backgroundColor: Colors.grey[200],
  elevation: 0,
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.grey[500]?.withOpacity(0.3),
        ),
        child: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 28,
            ),
            fillColor: Colors.green,
            border: InputBorder.none,
            hintText: 'Search',
          ),
        ),
      ),
    ),
  ),
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Expanded(
        flex: 2,
        child: Text(
          'Edit',
          style: TextStyle(
            color: blue,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      const Expanded(
        flex: 2,
        child: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          alignment: Alignment.centerRight,
          child: const Icon(
            FontAwesomeIcons.penToSquare,
            color: blue,
            size: 25,
          ),
        ),
      ),
    ],
  ),
);
