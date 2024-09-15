// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double availableScreenWidth = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Money Tracker'),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.person_rounded)),
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          /*Container(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            alignment: Alignment.bottomCenter,
            height: 170,
            decoration: BoxDecoration(color: Colors.blue.shade800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                    ]),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Money Tracker',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'by CableBK',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(.1)),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () => null,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(.1)),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 28,
                          color: Colors.white,
                        ),
                        onPressed: () => null,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),*/
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(25),
              children: [
                const Text(
                  'Recently updated',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [],
                ),
                Divider(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'เมนูลัด',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Create New',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                buildQuickMenu('Kabel'),
                buildQuickMenu('Kabel'),
                buildQuickMenu('Kabel'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        ]),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 15, color: Colors.black),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'ค้นหา',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'อื่น ๆ',
          ),
        ],
      ),
    );
  }
}

Container buildQuickMenu(String quickMenu) {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    height: 65,
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.transparent,
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.red.shade900,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  quickMenu,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded, color: Colors.grey))
      ],
    ),
  );
}
