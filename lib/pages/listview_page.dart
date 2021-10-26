import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:staggered_animated_listview/data.dart';
import 'package:staggered_animated_listview/model/category.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Category> _list = FakeData().categoriesList;

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('دسته بندی ها'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: AnimationLimiter(
                child: ListView.builder(
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: Duration(milliseconds: 1000),
                          child: ScaleAnimation(
                              child: FadeInAnimation(
                                  delay: Duration(milliseconds: 100),
                                  child: listItem(_list[index]))));
                    })),
          ),
        ));
  }

  Widget listItem(Category category) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(16),
              child: Image.asset(category.image),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              category.name,
              style: TextStyle(fontSize: 18),
            )
          ],
        ));
  }
}
