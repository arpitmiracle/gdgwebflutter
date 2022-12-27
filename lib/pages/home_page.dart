
import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gdgwebflutter/components/imagepath.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Home/HomeScreen.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> selectedIndex = useState(0);

    return Scaffold(
      key: scaffoldKey,
      // appBar: const PreferredSize(
      //     preferredSize: Size(double.infinity, 66), child: MenuBar()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.equals(name: MOBILE),
          ],
          child: IconButton(
            icon: Icon(Icons.menu_outlined,color: Colors.black,),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        title: ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.largerThan(name: MOBILE),
          ],
          child: Image.asset(ImagePath.icLogo,),
        ),
        actions: [
          HeaderTitles(title: "HOME",selectedIndex: selectedIndex,index: 0),
          HeaderTitles(title: "SPEAKERS",selectedIndex: selectedIndex,index: 1,),
          HeaderTitles(title: "SCHEDULE",selectedIndex: selectedIndex,index:2,),
          HeaderTitles(title: "TEAM",selectedIndex: selectedIndex,index:3,),
          HeaderTitles(title: "JOB OPPORTUNITIES",selectedIndex: selectedIndex,index:4,),
          HeaderTitles(title: "BADGE",selectedIndex: selectedIndex,index:5,),
          HeaderTitles(title: "BLOG",selectedIndex: selectedIndex,index:6,),
          SizedBox(width: ResponsiveWrapper.of(context).screenWidth * 0.08,),
        ],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(ImagePath.icLogo,),
                  SizedBox(height: ResponsiveWrapper.of(context).screenHeight * 0.02),
                  CustomTitle(
                    title: "17th December, 2022",
                    fontColor: CustomColors.black,
                    fontWeight: FontWeight.normal,
                  ),
                  CustomText(text: "Ahmedabad, Gujarat",color: CustomColors.grey ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            DrawerTitles(title: "Home",selectedIndex: selectedIndex,index: 0),
            DrawerTitles(title: "Speakers",selectedIndex: selectedIndex,index: 1,),
            DrawerTitles(title: "Schedule",selectedIndex: selectedIndex,index:2,),
            DrawerTitles(title: "Team",selectedIndex: selectedIndex,index:3,),
            DrawerTitles(title: "Job Opportunities",selectedIndex: selectedIndex,index:4,),
            DrawerTitles(title: "Badge",selectedIndex: selectedIndex,index:5,),
            DrawerTitles(title: "Blog",selectedIndex: selectedIndex,index:6,),
          ],
        ),
      ),
      body: Container(
        child: getBody(selectedIndex.value)
      )
    );
  }

  Widget getBody(int selectedVal){
    Widget widget = const HomeScreen();
    switch (selectedVal){
      case 1:
        widget = Scaffold(body: CustomText(text: "SPEAKERS"),);
        break;
      case 2:
        widget = Scaffold(body: CustomText(text: "SCHEDULE"),);
        break;
      case 3:
        widget = Scaffold(body: CustomText(text: "TEAM"),);
        break;
      case 4:
        widget = Scaffold(body: CustomText(text: "JOB OPPORTUNITIES"),);
        break;
      case 5:
        widget = Scaffold(body: CustomText(text: "BADGE"),);
        break;
      case 6:
        widget = Scaffold(body: CustomText(text: "BLOG"),);
        break;
    }
    return widget;
  }

}


class DrawerTitles extends StatelessWidget {
  String title;
  ValueNotifier<int> selectedIndex;
  int index;
  DrawerTitles({Key? key,required this.title,required this.selectedIndex,required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomText(text: title,color: selectedIndex.value == index ? CustomColors.black : CustomColors.subtitle,fontSize: 16,),
      dense: true,
      onTap: () {
        Navigator.pop(context);
        selectedIndex.value = index;
      },
    );
  }
}

class HeaderTitles extends StatelessWidget {
  String title;
  ValueNotifier<int> selectedIndex;
  int index;
  HeaderTitles({Key? key,required this.title,required this.selectedIndex,required this.index,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: MOBILE),
      ],
      child: Padding(
        padding: EdgeInsets.only(right: 5),
        child: Material(
          shape: Border(
            bottom: BorderSide(
                color: selectedIndex.value == index ? CustomColors.blue : CustomColors.transparent,width: 2
            ),
          ),
          color: CustomColors.white,
          child: TextButton(
            onPressed: () {
              selectedIndex.value = index;
            },
            child: CustomText(text: title,color: selectedIndex.value == index ? CustomColors.black : CustomColors.subtitle,fontSize: 16, ),
          ),
        ),
      ),
    );
  }
}
