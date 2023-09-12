import 'package:flutter/material.dart';
import '../models/category.dart';
import '../services/category_operations.dart';

class CreateGrid extends StatefulWidget {
  const CreateGrid({super.key});

  @override
  State<CreateGrid> createState() => _CreateGridState();
}

class _CreateGridState extends State<CreateGrid> {

  
 List<Widget> createListOfCategories() {
    // Convert Data to Widget Using map function
    List<Widget> categories = CategoryOperations.getCategories()
        .map((Category category) => Container(
        color: const Color.fromARGB(255, 40, 48, 53),
        child: Row(
          children: [
            Image.network(category.imageURL, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                category.name,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )))
        .toList();
    return categories;
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 280,
      child: GridView.count(
        childAspectRatio: 5 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategories(),
        crossAxisCount: 2,
      ),);
  }
}