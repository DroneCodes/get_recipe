import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_recipe/utils/global_variables.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {

  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: const Text("Popular", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
                  ),

                  const SizedBox(
                    width: 30,
                  ),

                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: const Text("Recommended", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
                  ),

                  const SizedBox(
                    width: 30,
                  ),

                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white
                    ),
                    child: const Text("New", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            PageView(
              children: exploreScreenItems,
              controller: pageController,
              onPageChanged: onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
            )
          ],
        ),
    );
  }
}