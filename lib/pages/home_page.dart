import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Cars',
          style: TextStyle(
            color: Color(0xffF34235),
            fontSize: 25,
          ),
        ),
        brightness: Brightness.light,
        actions: [
          // #notification
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xffF34235),
            ),
          ),

          // #cart
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Color(0xffF34235),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // #categories
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(type: true, text: 'All'),
                    singleTab(type: false, text: 'Red'),
                    singleTab(type: false, text: 'Green'),
                    singleTab(type: false, text: 'Black'),
                    singleTab(type: false, text: 'Yellow'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // #caritems
              makeItem('assets/images/im_car1.jpg'),
              makeItem('assets/images/im_car2.jpg'),
              makeItem('assets/images/im_car3.jpg'),
              makeItem('assets/images/im_car4.png'),
              makeItem('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab({required bool type, required String text}) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Color(0xffF34235) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: type ? 20 : 17, color: type ? Colors.white : Colors.black),
          ),
        ),
      ),
    );
  }

  Widget makeItem(String imageUrl) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade400, blurRadius: 10, offset: const Offset(0, 10)),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PDP Car',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '100\$',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Text(
                  '   Electric',
                  style: TextStyle(color: Color(0xffF34235), fontSize: 20),
                ),
              ],
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF34235),
              ),
              child: Center(
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
