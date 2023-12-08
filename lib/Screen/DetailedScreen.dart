import 'package:flutter/material.dart';

class detailedScreen extends StatefulWidget {
  const detailedScreen({super.key});

  @override
  State<detailedScreen> createState() => _detailedScreenState();
}

class _detailedScreenState extends State<detailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/img2.png"),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.dstATop,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  "assets/image/img2.png",
                  height: 450,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        // Positioned(
        //   top: 0,
        //   right: 0,
        //   bottom: 0,
        //   child:
        Container(
          padding: EdgeInsets.all(10),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 390,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 184,
                      height: 77,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Color(0xb2000000))),
                ],
              ),
              Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Color(0xb2000000)))
            ],
          ),
        ),
        // ),
      ],
    ));
  }
}
