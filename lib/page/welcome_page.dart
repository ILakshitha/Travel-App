import 'package:flutter/material.dart';
import 'package:travalapp/widgets/app_large_text.dart';
import 'package:travalapp/widgets/app_text.dart';
import 'package:travalapp/widgets/responsive_button.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({super.key});

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  List images = [
    "img-1.jpg",
    "img-2.jpg",
    "img-3.jpg",
  ];

  List text = ["..."];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/" + images[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Trips"),
                        AppText(
                          text: "Mountain",
                          size: 40,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hikes give you an incredible sence of freedom alog ",
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ResponsiveButton(
                          width: 150,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexD) {
                        return Container(
                          width: 8,
                          height: index == indexD ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == indexD
                                  ? Color.fromARGB(255, 7, 156, 255)
                                  : Color.fromARGB(255, 7, 156, 255)
                                      .withOpacity(0.2)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
