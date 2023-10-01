import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildPage(int index) {
  List<Widget> widget = [
    const Center(child: Text("Home")),
    const Center(child: Text("Search")),
    const Center(child: Text("Course")),
    const Center(child: Text("Chat")),
    const Center(child: Text("Profile")),
  ];
  return widget[index];
}

BottomNavigationBarItem buildBottom(int index) {
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      label: "Home",
      icon: SizedBox(
        child: Icon(
          FontAwesomeIcons.house,
        ),
      ),
    ),
    const BottomNavigationBarItem(
      label: "search",
      icon: SizedBox(
        child: Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
      ),
    ),
    const BottomNavigationBarItem(
      label: "course",
      icon: SizedBox(
        child: Icon(
          FontAwesomeIcons.play,
        ),
      ),
    ),
    const BottomNavigationBarItem(
      label: "chat",
      icon: SizedBox(
        child: Icon(
          FontAwesomeIcons.solidCommentDots,
        ),
      ),
    ),
    const BottomNavigationBarItem(
      label: "profile",
      icon: SizedBox(
        child: Icon(
          FontAwesomeIcons.userLarge,
        ),
      ),
    ),
  ];
  return items[index];
}
