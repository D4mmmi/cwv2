import 'package:flutter/material.dart';
import 'detailscreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Pasta',
      'ingredients': 'Tomato, Pasta, Cheese',
      'instructions': 'Boil pasta, add sauce, serve.'
    },
    {
      'name': 'Pizza',
      'ingredients': 'Dough, Tomato, Cheese',
      'instructions': 'Bake dough with toppings.'
    },
    {
      'name': 'Salad',
      'ingredients': 'Lettuce, Tomato, Cucumber',
      'instructions': 'Mix all ingredients and serve.'
    }
  ];

  // Remove const keyword here
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
