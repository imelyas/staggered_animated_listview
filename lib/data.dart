import 'package:staggered_animated_listview/model/category.dart';

class FakeData {
  List<Category> _categoriesList = <Category>[
    Category(name: 'آمار و داده کاوی', image: 'assets/images/1.png'),
    Category(name: 'بورس و بازار سهام', image: 'assets/images/2.png'),
    Category(name: 'برنامه نویسی وب', image: 'assets/images/3.png'),
    Category(name: 'رباتیک', image: 'assets/images/4.png'),
    Category(name: 'ریاضیات', image: 'assets/images/5.png'),
    Category(name: 'علوم انسانی', image: 'assets/images/6.png'),
    Category(name: 'کسب و کار', image: 'assets/images/7.png'),
    Category(name: 'دروس آکادمیک', image: 'assets/images/8.png'),
    Category(name: 'مهندسی برق', image: 'assets/images/9.png'),
    Category(name: 'مهندسی صنایع', image: 'assets/images/10.png'),
    Category(name: 'مهندسی عمران', image: 'assets/images/11.png'),
    Category(name: 'مهندسی نرم افزار', image: 'assets/images/12.png'),
    Category(name: 'مهندسی مکانیک', image: 'assets/images/13.png'),
    Category(name: 'هنر', image: 'assets/images/14.png'),
  ];
  List<Category> get categoriesList => _categoriesList;
}
