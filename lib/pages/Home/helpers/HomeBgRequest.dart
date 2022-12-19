import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:gdgwebflutter/components/components.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeBgRequest extends StatelessWidget {
  const HomeBgRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWrapper.of(context).screenHeight * 0.94,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagePath.imgHome),
            fit: BoxFit.cover,
          )
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: CustomColors.subtitle,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 100, // minimum width
                      maxWidth: 200,
                    ),
                    child: Image.asset(ImagePath.imgLogo,),
                  ),
                  SizedBox(height: 20,),
                  CustomTitle(
                    title: "Ahmedabad. 17th December, 2022\nJoin the community, Explore Opportunities!",
                    fontColor: CustomColors.white,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                        },
                        child: CustomText(text: "VIEW HIGHLIGHTS",color: CustomColors.white,fontSize: 13),
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.all(15))
                        ),
                      ),
                      SizedBox(width: 15,),
                      TextButton(
                        onPressed: () {
                        },
                        child: CustomText(text: "REQUEST A TICKET",color: CustomColors.blue,fontSize: 13),
                        style: ButtonStyle(
                            padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                            backgroundColor: MaterialStatePropertyAll(CustomColors.white),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.zero))
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
