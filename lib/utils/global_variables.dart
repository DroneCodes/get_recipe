import 'package:flutter/material.dart';
import 'package:get_recipe/screens/add_recipe_screen.dart';
import 'package:get_recipe/screens/explore/explore_screen.dart';
import 'package:get_recipe/screens/favourites.dart';
import 'package:get_recipe/screens/personal_screen.dart';

List<Widget> homeScreenItems = [
  const ExploreScreen(),
  const AddRecipeScreen(),
  const FavouritesScreen(),
  const PersonalScreen()
];