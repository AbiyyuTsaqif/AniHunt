import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: 153,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Good Morning!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                ClipOval(
                  child: Image.asset(
                    "assets/image/img1.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Text(
                      "Collection",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff565656), width: 2),
                    ),
                    child: Text(
                      "Bookmarked",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff565656),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff565656), width: 2),
                    ),
                    child: Text(
                      "History",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff565656),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(right: 22, left: 22, top: 11),
          child: Column(
            children: [
              Collection(),
              Collection(),
              Collection(),
            ],
          ),
        ),
      ),
    );
  }
}

class Collection extends StatefulWidget {
  const Collection({Key? key}) : super(key: key);

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  bool isFavorite = false;
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              "assets/image/img2.png",
              width: double.infinity,
              height: 308,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 5, left: 5),
              width: 73,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 69,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color(0xffff7171),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.window,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 18,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      // Toggle the state of isFavorite
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Container(
                    width: 51,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: Color(0xbfadaaaa),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: isFavorite ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isBookmark = !isBookmark;
                    });
                  },
                  child: Container(
                    width: 51,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color(0xbfadaaaa),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.bookmark,
                        size: 20,
                        color: isBookmark
                            ? Color.fromARGB(255, 255, 76, 5)
                            : Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
