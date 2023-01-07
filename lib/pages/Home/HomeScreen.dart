import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gdgwebflutter/components/app_strings.dart';
import 'package:gdgwebflutter/components/imagepath.dart';
import 'package:gdgwebflutter/utils/jsonDatas.dart';
import 'package:gdgwebflutter/utils/utils.dart';
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
                  title: AppStrings.about,
                  fontColor: CustomColors.black,
                ),
                AboutTitleNdButtons(
                  title: "GDG DevFest Ahmedabad brings together the world class experts in Android, Web and Cloud technologies to Ahmedabad for sessions, workshops and showcases.",
                  btnTitle: "EXPLORE FEATURED SESSION",
                ),
                AboutTitleNdButtons(
                  title: "Described by many as 'Google I/O of Ahmedabad', our team creates DevFest to be the best place for experience sharing in a phenomenal atmosphere.",
                  btnTitle: "SEE HOW IT WAS IN 2019",
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    AboutAttendRecord(
                      title: "500+",
                      subtitle: AppStrings.attendees,
                    ),
                    AboutAttendRecord(
                      title: "1",
                      subtitle: AppStrings.days,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    AboutAttendRecord(
                      title: "20+",
                      subtitle: AppStrings.sessions,
                    ),
                    AboutAttendRecord(
                      title: "3",
                      subtitle: AppStrings.tracks,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                CustomTitle(
                  title: AppStrings.rockstar_speakers,
                  fontColor: CustomColors.black,
                ),
                RockStartSpeakersView(),
                SizedBox(height: 30,),
                Center(child: TicketsView()),
                SizedBox(height: 20,),
                OrganizerView(),
                HighlightsView(),
              ],
            ),
          ),
          JobOpportunities(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).screenWidth * 0.08,vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                LatestNews(),
                PartnersView(),
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PartnersView extends StatelessWidget {
   PartnersView({Key? key}) : super(key: key);
  List<String> titleSponsors = [
    ImagePath.imgPartnerGoogle,
    ImagePath.imgPartnerGdgX,
    ImagePath.imgPartnerGdg,
  ];
  List<String> platinumSponsors = [
    ImagePath.imgPartnerDhiwise,
  ];
  List<String> silverSponsors = [
    ImagePath.imgPartnerAkash,
    ImagePath.imgPartnerNovumLogic,
    ImagePath.imgPartnerQuickblox,
    ImagePath.imgPartnerSolvative,
    ImagePath.imgPartnerOneClick,
    ImagePath.imgPartnerJetbrains,
  ];
  List<String> cfpPartners = [
    ImagePath.imgPartnerSessionize,
  ];
  List<String> ticketingPartners = [
    ImagePath.imgPartnerAllEvents,
  ];
  List<String> templatePartners = [
    ImagePath.imgPartnerGdgLviv,
  ];
  List<String> partnerCommunity = [
    ImagePath.imgGdgCloudAhmedabad,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTitle(
          title: AppStrings.partners,
          fontColor: CustomColors.black,
        ),
        getImages(context,AppStrings.title_sponsor,titleSponsors),
        getImages(context,AppStrings.platinum_sponsor,platinumSponsors),
        getImages(context,AppStrings.silver_sponsor,silverSponsors),
        getImages(context,AppStrings.cfp_sponsor,cfpPartners),
        getImages(context,AppStrings.ticketing_sponsor,ticketingPartners),
        getImages(context,AppStrings.template_sponsor,templatePartners),
        getImages(context,AppStrings.partner_communities,partnerCommunity),
      ],
    );
  }

  getImages(BuildContext context,String title,List<String> sponsors){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        CustomText(
          text: title,
          color: CustomColors.black,
        ),
        SizedBox(height: 10,),
        Wrap(
          children: sponsors.map((e) => Container(
            margin: EdgeInsets.all(20),
            width: ResponsiveWrapper.of(context).isMobile ? 150 : 210,
            child: Image.asset(e,height: 60),
          )).toList(),
        ),
      ],
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isMobile
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            columnMainAxisSize: MainAxisSize.min,
            rowMainAxisSize: MainAxisSize.min,
            rowMainAxisAlignment: MainAxisAlignment.start,
            columnMainAxisAlignment: MainAxisAlignment.start,
            children: [
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {

                        },
                        icon: ImageIcon(AssetImage(ImagePath.icFacebook),color: CustomColors.buttonColor,),
                      ),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {

                        },
                        icon: ImageIcon(AssetImage(ImagePath.icTwitter),color: CustomColors.blue,),
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CustomText(text: AppStrings.follow_us,color: CustomColors.grey,),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {

                        },
                        icon: ImageIcon(AssetImage(ImagePath.icTwitter),color: CustomColors.grey,),
                      ),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {

                        },
                        icon: ImageIcon(AssetImage(ImagePath.icFacebook),color: CustomColors.grey,),
                      ),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {

                        },
                        icon: ImageIcon(AssetImage(ImagePath.icYoutube),color: CustomColors.grey,),
                      ),
                      SizedBox(width: 8,),
                      IconButton(
                        onPressed: () {

                        }, icon: ImageIcon(AssetImage(ImagePath.icInstagram),color: CustomColors.grey,),
                      ),
                    ],
                  ),
                ),
              ),
              // ResponsiveRowColumnItem(
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: <Widget>[
              //         IconButton(
              //           onPressed: () {
              //
              //           },
              //           icon: ImageIcon(AssetImage(ImagePath.icFacebook),color: CustomColors.grey,),
              //         ),
              //         SizedBox(width: 8,),
              //         IconButton(
              //           onPressed: () {
              //
              //           },
              //           icon: ImageIcon(AssetImage(ImagePath.icYoutube),color: CustomColors.grey,),
              //         ),
              //         SizedBox(width: 8,),
              //         IconButton(
              //           onPressed: () {
              //
              //           }, icon: ImageIcon(AssetImage(ImagePath.icInstagram),color: CustomColors.grey,),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Row(
                    children: [
                      CustomText(text: AppStrings.email_us,color: CustomColors.grey,textDecoration: TextDecoration.underline),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 15),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isMobile
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            columnMainAxisAlignment: MainAxisAlignment.start,
            // columnMainAxisSize: MainAxisSize.min,
            // rowMainAxisSize: MainAxisSize.min,
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      CustomTitle(title: AppStrings.about,fontColor: CustomColors.black.withOpacity(0.7),fontWeight: FontWeight.w500,),
                      SizedBox(height: 10,),
                      getTitle(AppStrings.gdg_ahmedabad),
                      getTitle(AppStrings.meet_the_team),
                      getTitle(AppStrings.google_developers),
                      getTitle(AppStrings.gdg_platform),
                      getTitle(AppStrings.devfest),
                    ],
                  ),
                ),
              ),

              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      CustomTitle(title: AppStrings.explore_past_devfest,fontColor: CustomColors.black.withOpacity(0.7),fontWeight: FontWeight.w500,),
                      SizedBox(height: 10,),
                      getTitle("DevfestAhm 2017"),
                      getTitle("DevfestAhm 2018"),
                      getTitle("DevfestAhm 2019"),
                    ],
                  ),
                ),
              ),

              ResponsiveRowColumnItem(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ResponsiveWrapper.of(context).isMobile ? 0 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      CustomTitle(title: AppStrings.event_resources,fontColor: CustomColors.black.withOpacity(0.7),fontWeight: FontWeight.w500,),
                      SizedBox(height: 10,),
                      getTitle("Announcing DevFestAhm 2022"),
                    ],
                  ),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }

  Widget getTitle(String title){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: title,color: CustomColors.grey,fontSize: 12,),
        SizedBox(height: 6,),
      ],
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
          title: AppStrings.the_latest_news,
          fontColor: CustomColors.black,
        ),
        SizedBox(height: 20,),
        ResponsiveWrapper.of(context).isMobile ? Container(
          child: Column(
            children: List.generate(LatestNewsData.length, (index) => Container(
              width: ResponsiveWrapper.of(context).screenWidth * 0.9,
              height: 350,
              margin: EdgeInsets.only(bottom: 20),
              child: getCardData(index),
            ),),
          ),
        ) : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: List.generate(LatestNewsData.length, (index) => Container(
                width: 320,
                height: 350,
                margin: EdgeInsets.only(bottom: 20),
                child: getCardData(index),
              ),),
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {

          },
          label: Icon(Icons.arrow_circle_right_rounded),
          icon: CustomText(text: "VIEW ALL STORIES",color: CustomColors.blue ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }

  getCardData(int index){
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),child: Image.asset(LatestNewsData[index]['image'].toString(),height: 150,width: double.infinity,fit: BoxFit.cover,)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                CustomText(
                  text: LatestNewsData[index]['title'].toString(),
                  color: CustomColors.blue,
                  fontSize: 18,
                  maxLines: 2,
                ),
                SizedBox(height: 10,),
                CustomText(
                  text: LatestNewsData[index]['description'].toString(),
                  color: CustomColors.grey,
                  maxLines: 3,
                  fontSize: 15,
                ),
              ],
            ),
          ),
          Expanded(child: Align(
            alignment: Alignment.bottomLeft,
            child:  Padding(
              padding: EdgeInsets.only(bottom: 20,left: 20),
              child: CustomText(
                text: LatestNewsData[index]['date'].toString(),
                color: CustomColors.grey,
                maxLines: 3,
              ),
            ),
          ),)
        ],
      ),
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
                    fontSize: 16,
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
    return Row(
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
