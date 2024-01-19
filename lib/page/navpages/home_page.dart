import 'package:flutter/material.dart';
import 'package:travalapp/widgets/app_large_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black,
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            child: AppLargeText(text: "Discover"),
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: [
                    Tab(
                      text: "places",
                    ),
                    Tab(
                      text: "inspiration",
                    ),
                    Tab(
                      text: "Emotion",
                    ),
                  ]),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("data1"),
                Text("data2"),
                Text("data3"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return circlepainter(color: color, radius: radius);
  }
}

class circlepainter extends BoxPainter {
  final Color color;
  double radius;
  circlepainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset =
        Offset(configuration.size!.width / 2 - radius / 2, 0);
    canvas.drawCircle(offset + circleOffset, radius, _paint);

    // TODO: implement paint
    canvas.drawCircle(offset, radius, _paint);
  }
}
