import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: 0,
          children: [
            Container(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.orange,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 1
            )
          )
        ),
        child: SnakeNavigationBar.color(
          behaviour: SnakeBarBehaviour.floating,
          snakeShape: SnakeShape.circle,
          padding: const EdgeInsets.symmetric(vertical: 5),
          unselectedLabelStyle: const TextStyle(fontSize: 11),
          snakeViewColor: Theme.of(context).primaryColor,
          unselectedItemColor: Theme.of(context).colorScheme.secondary,
          showUnselectedLabels: true,
          currentIndex: 0,
          onTap: (val){

          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
          ],
        ),
      ),
    );
  }
}