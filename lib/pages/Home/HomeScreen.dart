import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:gdgwebflutter/components/components.dart';
import 'package:gdgwebflutter/utils/jsonDatas.dart';
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
          // HomeBgRequest(),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).screenWidth * 0.08,vertical: 25),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       CustomTitle(
          //         title: "About",
          //         fontColor: CustomColors.black,
          //       ),
          //       AboutTitleNdButtons(
          //         title: "GDG DevFest Ahmedabad brings together the world class experts in Android, Web and Cloud technologies to Ahmedabad for sessions, workshops and showcases.",
          //         btnTitle: "EXPLORE FEATURED SESSION",
          //       ),
          //       AboutTitleNdButtons(
          //         title: "Described by many as 'Google I/O of Ahmedabad', our team creates DevFest to be the best place for experience sharing in a phenomenal atmosphere.",
          //         btnTitle: "SEE HOW IT WAS IN 2019",
          //       ),
          //       SizedBox(height: 30,),
          //       Row(
          //         children: [
          //           AboutAttendRecord(
          //             title: "500+",
          //             subtitle: "Attendees",
          //           ),
          //           AboutAttendRecord(
          //             title: "1",
          //             subtitle: "Days",
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 30,),
          //       Row(
          //         children: [
          //           AboutAttendRecord(
          //             title: "20+",
          //             subtitle: "Sessions",
          //           ),
          //           AboutAttendRecord(
          //             title: "3",
          //             subtitle: "Tracks",
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 30,),
          //       CustomTitle(
          //         title: "Rockstar speakers",
          //         fontColor: CustomColors.black,
          //       ),
          //       RockStartSpeakersView(),
          //       SizedBox(height: 30,),
          //       Center(child: TicketsView()),
          //       SizedBox(height: 20,),
          //       OrganizerView(),
          //       HighlightsView(),
          //     ],
          //   ),
          // ),
          JobOpportunities(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).screenWidth * 0.08,vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LatestNews(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LatestNews extends StatelessWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        CustomTitle(
          title: "The latest news",
          fontColor: CustomColors.black,
        ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(LatestNewsData.length, (index) => Container(
              padding: EdgeInsets.only(right: 20),
              width: ResponsiveWrapper.of(context).screenWidth / 3.5,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset(LatestNewsData[index]['image'].toString(),width: ResponsiveWrapper.of(context).screenWidth / 3.5,)),
                      SizedBox(height: 10,),
                      CustomText(
                        text: LatestNewsData[index]['title'].toString(),
                        color: CustomColors.grey,
                        fontSize: 18,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            )),
            // children: List.generate(HighlightsData.length, (index) => Container(
            //   padding: EdgeInsets.only(right: 20),
            //   width: ResponsiveWrapper.of(context).screenWidth / 3.5,
            //   child: Column(
            //     children: [
            //       ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset(HighlightsData[index]['image'].toString(),width: ResponsiveWrapper.of(context).screenWidth / 3.5,)),
            //       SizedBox(height: 10,),
            //       CustomText(
            //         text: HighlightsData[index]['title'].toString(),
            //         color: CustomColors.grey,
            //         fontSize: 18,
            //         maxLines: 2,
            //       ),
            //     ],
            //   ),
            // )),
          ),
        ),
        SizedBox(height: 20,),
        TextButton.icon(
          onPressed: () {

          },
          label: Icon(Icons.arrow_circle_right_rounded),
          icon: CustomText(text: "SEE ALL VIDEOS",color: CustomColors.blue ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}


class JobOpportunities extends StatelessWidget {
  const JobOpportunities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.blue,
      width: double.infinity,
      child: Container(
        width: ResponsiveWrapper.of(context).screenWidth * 0.8,
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: ResponsiveWrapper.of(context).screenWidth * 0.1),
        child: Column(
          children: [
            CustomTitle(
              title: "Job Opportunities from the companies",
              fontColor: CustomColors.white,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 20,),
            CustomText(
              text: "We are currently passing through the panic time, in between the news of lay-off and recession are being spread over social medias, and so our this initiative is to “Connect Dots” of the community, by connecting Talents (who are always in search of the right opportunity) and the Companies (who are always looking for the bright talents).",
              color: CustomColors.white,
              maxLines: 10,
              fontSize: 17,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.normal,
            ),
            SizedBox(height: 20,),
            CustomText(
              text: "Disclaimer: We are not responsible nor associated with anything in this initiative. We collect openings from the companies from the community and we list it out over here for the talents. You may check anything and everything before you apply, and only you and company are responsible while finalising the offer details.",
              color: CustomColors.white,
              maxLines: 10,
              fontSize: 13,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.normal,
            ),
            SizedBox(height: 20,),
            TextButton.icon(
              onPressed: () {

              },
              style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.white.withOpacity(0.1))
              ),
              label: Icon(Icons.arrow_circle_right_rounded,color: CustomColors.white),
              icon: CustomText(text: "APPLY NOW",color: CustomColors.white ),
            ),
          ],
        ),
      ),
    );
  }
}


class HighlightsView extends StatelessWidget {
  HighlightsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        CustomTitle(
          title: "DevFestAhm Highlights",
          fontColor: CustomColors.black,
        ),
        SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(HighlightsData.length, (index) => Container(
              padding: EdgeInsets.only(right: 20),
              width: ResponsiveWrapper.of(context).screenWidth / 3.5,
              child: Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset(HighlightsData[index]['image'].toString(),width: ResponsiveWrapper.of(context).screenWidth / 3.5,)),
                  SizedBox(height: 10,),
                  CustomText(
                    text: HighlightsData[index]['title'].toString(),
                    color: CustomColors.grey,
                    fontSize: 18,
                    maxLines: 2,
                  ),
                ],
              ),
            )),
          ),
        ),
        SizedBox(height: 20,),
        TextButton.icon(
          onPressed: () {

          },
          label: Icon(Icons.arrow_circle_right_rounded),
          icon: CustomText(text: "SEE ALL VIDEOS",color: CustomColors.blue ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}

class OrganizerView extends StatelessWidget {
  const OrganizerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset(ImagePath.imgTeam,height: 350,fit: BoxFit.fitHeight,),
          ),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(
                  title: "Organizer",
                  fontColor: CustomColors.black,
                  fontWeight: FontWeight.w500,
                ),
                AboutTitleNdButtons(
                  title: "GDG Ahmedabad with support of Google Sponsorship and other community partners from all over india is proud organizer of DevFest Ahmedabad",
                  btnTitle: "OPEN TEAM PAGE",
                ),
                SizedBox(height: 20,),
                CustomTitle(
                  title: "What is a GDG?",
                  fontColor: CustomColors.black,
                  fontWeight: FontWeight.w500,
                ),
                AboutTitleNdButtons(
                  title: "A Google Developer Group is a community of volunteers who create exciting projects and share experiences about Google technologies.",
                  btnTitle: "READ MORE",
                ),
                SizedBox(height: 20,),
                CustomTitle(
                  title: "What is DevFest?",
                  fontColor: CustomColors.black,
                  fontWeight: FontWeight.w500,
                ),
                AboutTitleNdButtons(
                  title: "DevFests are community-led developer events hosted by Google Developer Groups around the globe.",
                  btnTitle: "READ MORE",
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}



class TicketsView extends StatelessWidget {
  const TicketsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitle(
          title: "Tickets",
          fontColor: CustomColors.black,
        ),
        SizedBox(height: 20,),
        Container(
          width: ResponsiveWrapper.of(context).isMobile ? double.infinity : 300,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  CustomText(
                    text: "Regular",
                    color: CustomColors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                  SizedBox(height: 30,),
                  CustomTitle(
                    title: "₹300",
                    fontColor: CustomColors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.normal,
                    fontSize: 35,
                  ),
                  SizedBox(height: 30,),
                  CustomText(
                    text: "Dec 7 - Dec 9",
                    color: CustomColors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.normal,
                  ),
                  CustomText(
                    text: "I Love DevFestAhm",
                    color: CustomColors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(height: 30,),
                  CustomText(
                    text: "YOU MISSED IT!",
                    color: CustomColors.grey.withOpacity(0.6),
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          width: ResponsiveWrapper.of(context).isMobile ? double.infinity : 400,
          child: CustomText(
            text: "*To ensure quality participation, the submitted entries are filtered based on the details filled in the registration form. If you are shortlisted then you will receive a coupon code via email, with the registration link to buy a confirmed ticket.",
            color: CustomColors.grey,
            maxLines: 15,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}


class RockStartSpeakersView extends StatelessWidget {
  const RockStartSpeakersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: 15),
          itemCount: RockstarSpeakers.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: ResponsiveWrapper.of(context).isMobile ? 2 : ResponsiveWrapper.of(context).isTablet ? 3 : 4,
            childAspectRatio: ResponsiveWrapper.of(context).isMobile ? 3/3.5 : 3/2.82,
          ),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(RockstarSpeakers[index]['image'].toString()),
                  radius: 65,
                ),
                SizedBox(height: 10,),
                Image.asset(RockstarSpeakers[index]['company'].toString(),height: 20),
                SizedBox(height: 10,),
                CustomTitle(
                  title: RockstarSpeakers[index]['name'].toString(),
                  fontColor: CustomColors.black,
                  fontWeight: FontWeight.normal,
                ),
                CustomText(text: RockstarSpeakers[index]['place'].toString(),color: CustomColors.black ),
              ],
            );
          },
        ),
        TextButton.icon(
          onPressed: () {

          },
          label: Icon(Icons.arrow_circle_right_rounded),
          icon: CustomText(text: "VIEW ALL SPEAKERS",color: CustomColors.blue ),
        ),
      ],
    );
  }
}


class AboutTitleNdButtons extends StatelessWidget {
  String title;
  String btnTitle;
  AboutTitleNdButtons({Key? key,required this.title,required this.btnTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15,),
        CustomText(
          text: title,
          color: CustomColors.black,
          maxLines: 3,
          fontSize: 15,
        ),
        SizedBox(height: 15,),
        TextButton.icon(
          onPressed: () {

          },
          label: Icon(Icons.arrow_circle_right_rounded),
          icon: CustomText(text: btnTitle,color: CustomColors.blue ),
        ),
      ],
    );
  }
}


class AboutAttendRecord extends StatelessWidget {
  String title;
  String subtitle;
  AboutAttendRecord({Key? key,required this.title,required this.subtitle,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          title: title,
          fontColor: CustomColors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 6,),
        Container(height: 2,width:55,color: CustomColors.blue,),
        SizedBox(height: 6,),
        CustomText(text: subtitle,color: CustomColors.black ),
      ],
    ),);
  }
}
