import 'package:flutter/material.dart';
import 'package:my_flutter/view/LayoutIntegration/LayoutIntegration.dart';
import 'package:my_flutter/view/FeaturesIntegration/FeaturesIntegration.dart';
import 'package:my_flutter/view/ListIntegration/ListIntegration.dart';
import 'package:my_flutter/view/ComponentIntegration/ComponentIntegration.dart';

class Index extends StatefulWidget {
  @override
  IndexState createState() => new IndexState();
}

class IndexState extends State<Index> with SingleTickerProviderStateMixin {
  TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = new TabController(
        length: 4, //Tab页的个数
        vsync: this //动画效果的异步处理，默认格式
        );
  }

  @override
  void dispose() {
    //释放内存，节省开销
    tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('flutter整合'),
        ),
        body: new TabBarView(controller: tabcontroller, children: <Widget>[
          new LayoutIntegration(),
          new ListIntegration(),
          new ComponentIntegration(),
          new FeaturesIntegration(),
        ]),
        bottomNavigationBar: new Material(
          //底部栏整体的颜色
          color: Colors.blueAccent,
          child: new TabBar(
            controller: tabcontroller,
            tabs: <Tab>[
              new Tab(text: "布局", icon: new Icon(Icons.layers)),
              new Tab(text: "列表", icon: new Icon(Icons.list)),
              new Tab(text: "组件", icon: new Icon(Icons.compare)),
              new Tab(text: "功能", icon: new Icon(Icons.local_activity)),
            ],
            //tab被选中时的颜色，设置之后选中的时候，icon和text都会变色
            labelColor: Colors.amber,
            //tab未被选中时的颜色，设置之后选中的时候，icon和text都会变色
            unselectedLabelColor: new Color(0xFFffffff),
          ),
        ));
  }
}
