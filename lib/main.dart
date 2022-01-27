import 'package:flutter/material.dart';
import 'package:doan_ltdd/screens/home.dart';
import 'package:doan_ltdd/screens/category.dart';
import 'package:doan_ltdd/screens/notification.dart';
import 'package:doan_ltdd/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      initialRoute: '/',
      routes:{
        '/':(context) =>const ShopingTab(),
        '/homepage':(context) =>const HomePage(),
        '/categorypage':(context) =>const CategoryPage(),
        '/notificationpage':(context) =>const NotificationPage(),
        '/loginscreen':(context) =>const LoginScreen(),
      },
    );
  }
}

class ShopingTab extends StatelessWidget {
  const ShopingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ButtomNavigatorBar());
  }

  DefaultTabController ButtomNavigatorBar() {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.light),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Container(
            color: Colors.white,
            child: const TabBar(
              labelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  child: Text(
                  "Trang chủ",
                  style: TextStyle (color: Colors.black)),
                ),
                Tab(
                  icon: Icon(Icons.category),
                  child: Text(
                  "Danh mục",
                  style: TextStyle (color: Colors.black)),
                ),
                Tab(
                  icon: Icon(Icons.notifications),
                  child: Text(
                  "Thông báo",
                  style: TextStyle (color: Colors.black)),
                ),
                Tab(
                  icon: Icon(Icons.account_circle),
                  child: Text(
                  "Tài khoản",
                  style: TextStyle (color: Colors.black)),
                ),
              ],
              unselectedLabelColor: Colors.deepOrange,
              labelColor: Colors.deepOrange,
              indicatorColor: Colors.deepOrange,
            ),
          ),
          body: const TabBarView(
            children: [HomePage(),CategoryPage(), NotificationPage(), LoginScreen()],
          ),
        ),
      ),
    );
  }
}
