import 'package:flutter/material.dart';
import 'package:get_recipe/screens/explore/new.dart';
import 'package:get_recipe/screens/explore/popular.dart';
import 'package:get_recipe/screens/explore/recommended.dart';

class ExploreTabView extends StatefulWidget {
  const ExploreTabView({Key? key}) : super(key: key);

  @override
  _ExploreTabViewState createState() => _ExploreTabViewState();
}

class _ExploreTabViewState extends State<ExploreTabView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: const Text("Popular", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
              ),
            ),
            Tab(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
                child: const Text("Recommended", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
              ),
            ),
            Tab(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white
                ),
                child: const Text("Popular", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
              ),
            ),
          ],),
        ),
        body: const TabBarView(
          children: [
            PopularScreen(),
            RecommendedScreen(),
            NewScreen(),
          ],
        ),
      ),
    );
  }
}