import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:im/Tech.dart';
import 'package:im/all.dart';
import 'package:im/healthy.dart';
import 'package:im/politics.dart';
import 'package:im/popular.dart';
import 'package:im/selection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(children: [
              Icon(
                Icons.menu,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 50),
                child: Text(
                  "G.T Rood,Kalkata",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Container(
                  height: 42,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.blue),
                        vertical: BorderSide(color: Colors.blue),
                      )),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 2),
                        child: Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      Text(
                        "5000",
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.add_alert_rounded,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
            ]),
          ],
        ),
      ),

      
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: TabBar(
              labelColor: Colors.black,
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Politics",
                ),
                Tab(
                  text: "Tech",
                ),
                Tab(
                  text: "Healthy",
                ),
                Tab(
                  text: "Selection",
                ),
              ],
              
            ),
            
          ),
          Expanded(
            flex: 12,
            child: TabBarView(controller: tabController,children:_categorya,))
        ],
      ),
      
    );
  }

  final List<Widget> _categorya = [
    const Popular(),
    All(),
    Politics(),
    Tech(),
    Healthy(),
    Selection()
  ];
}
//TabBarView(controller: tabController,children:_categorya,));