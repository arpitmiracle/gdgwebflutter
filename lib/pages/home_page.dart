
import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gdgwebflutter/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Home/HomeScreen.dart';

class HomePage extends HookWidget {
  HomePage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TabController tabController = useTabController(initialLength: 7);
    ValueNotifier<int> selectedIndex = useState(0);

    useEffect(() {

    }, []);

    return Scaffold(
      key: scaffoldKey,
      // appBar: const PreferredSize(
      //     preferredSize: Size(double.infinity, 66), child: MenuBar()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ResponsiveVisibility(
          visible: false,
          visibleWhen: [
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
          visibleWhen: [
            Condition.largerThan(name: MOBILE),
          ],
          child: Image.asset(ImagePath.icLogo,),
        ),
        actions: [
          DrawerTitles(title: "HOME",selectedIndex: selectedIndex,index: 0),
          DrawerTitles(title: "SPEAKERS",selectedIndex: selectedIndex,index: 1,),
          DrawerTitles(title: "SCHEDULE",selectedIndex: selectedIndex,index:2,),
          DrawerTitles(title: "TEAM",selectedIndex: selectedIndex,index:3,),
          DrawerTitles(title: "JOB OPPORTUNITIES",selectedIndex: selectedIndex,index:4,),
          DrawerTitles(title: "BADGE",selectedIndex: selectedIndex,index:5,),
          DrawerTitles(title: "BLOG",selectedIndex: selectedIndex,index:6,),
          SizedBox(width: ResponsiveWrapper.of(context).screenWidth * 0.08,),
        ],
        elevation: 0,
      ),
      drawer: Drawer(

      ),
      body: Container(
        child: getBody(selectedIndex.value)
      )
    );
  }

  Widget getBody(int selectedVal){
    Widget widget = HomeScreen();
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
            child: CustomText(text: title,color: selectedIndex.value == index ? CustomColors.black : CustomColors.subtitle ),
          ),
        ),
      ),
    );
  }
}
