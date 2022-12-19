import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:gdgwebflutter/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'helpers/HomeBgRequest.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          HomeBgRequest(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).screenWidth * 0.08,vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: "About",
                  fontColor: CustomColors.black,
                ),
                SizedBox(height: 15,),
                CustomText(
                  text: "GDG DevFest Ahmedabad brings together the world class experts in Android, Web and Cloud technologies to Ahmedabad for sessions, workshops and showcases.",
                  color: CustomColors.black,
                  maxLines: 3,
                  fontSize: 15,
                ),
                SizedBox(height: 15,),
                TextButton(
                  onPressed: () {

                  },
                  child: CustomText(text: "EXPLORE FEATURED SESSION",color: CustomColors.blue ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
