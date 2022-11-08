import 'package:flutter/material.dart';
import 'package:pasgo/category_item.dart';
import 'package:pasgo/dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //topApp
      appBar: AppBar(
       //titleApp
        title: Text('DeliMeal'),
      ),
      //----------------------AppBody kind: GridView----------------
      body: GridView(
        //EdgeInsets make 4 property left, top, right, bottom have the same padding  value.
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES//đọc file data
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,          //Khoảng cách trục chéo tối đa?
          childAspectRatio: 3 / 2,          //Tỉ lệ chiều ngang/chiều rộng của một item trong grid, ở đây width= 1.6 * height
          crossAxisSpacing: 20,             //Khoảng cách giữa các item trong hàng ngang
          mainAxisSpacing: 20,              //Khoảng cách giữa các hàng( giữa các item trong cột dọc)
        ),
      ),
    );
  }
}
