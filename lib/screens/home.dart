import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_recipe/utils/colors.dart';
import 'package:get_recipe/utils/global_variables.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentindex = 0;

  final screens = homeScreenItems;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Get Cooking",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: GestureDetector(
            child: const Icon(Icons.home, color: Colors.black,),
            onTap: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.search, color: Colors.black,),
            ),
          ],
          backgroundColor: appbarColor,
        ),
        body: screens[currentindex],
        bottomNavigationBar: CupertinoTabBar(
          onTap: (index) => setState(() =>
            currentindex = index,
          ),
          backgroundColor: appbarColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
                color: Colors.grey,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.grey,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
