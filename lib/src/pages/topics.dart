//import 'package:align_positioned/align_positioned.dart';
import 'package:agora_flutter_quickstart/src/pages/coloursDetails.dart';
import 'package:agora_flutter_quickstart/src/pages/shapeDetails.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'subjects.dart';

class ProfileMenu extends StatefulWidget {
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  FocusNode nameFocusNode;
  FocusNode phoneNumberFocusNode;
  FocusNode addressFocusNode;

  TextEditingController name = TextEditingController(text: 'Initial value');
  String value;
  bool nameEnabled = false;
  bool phoneNumberEnabled = false;
  bool addressEnabled = false;

  @override
  void initState() {
    super.initState();

    nameFocusNode = FocusNode();
    phoneNumberFocusNode = FocusNode();
    addressFocusNode = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    nameFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    addressFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 28),
          Center(
            child: CircleAvatar(
              radius: 95,
              backgroundColor: Colors.white,
              child: Center(
                child: ClipOval(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset("lib/images/kid2.png"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Text(
              'Khush Jain',
              style: TextStyle(
                  fontFamily: 'Typewriter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 15, 8, 10),
            child: Text(
              'What are you learning',
              style: TextStyle(
                  fontFamily: 'Typewriter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 170),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                color: Colors.grey[200],
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Details()),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.indigo[700],
                                    ),
                                    Text(
                                      ' 10 am',
                                      style: TextStyle(
                                          fontFamily: 'Typewriter',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.indigo[700]),
                                    ),
                                  ],
                                ),
                              ),
                              Text('Shapes',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                              Text('Notes',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('To Do',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('Highlights',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600])),
                              Text('Started on 3/8/20',
                                  style: TextStyle(
                                      fontFamily: 'Typewriter',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.indigo[700]))
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 38, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 180,
                    width: 170,
                    child:
                    Image.asset("lib/images/shapes.png",fit: BoxFit.cover,),
                    //  Image.network(
                    //   "https://lh3.googleusercontent.com/proxy/zVp7waRm7eykv-kGMM7iAQd5AZXDeAKOA1Tw7617M-XS2Qp8v6yB_9pMDzGDiNdDlx1S2GLgnOQJZJAdvAKrhaRUfzeu6_U3uikjnDoVEnF0xuwnoKhgRS2L_3ro7-hMlA",
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Row(
              children: <Widget>[
                Text('Study Next',
                    style: Theme.of(context).textTheme.headline3),
                SizedBox(width: 30),
                FlatButton(
                    onPressed: () {},
                    child: Text('Highlights',
                        style: Theme.of(context).textTheme.headline4))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
            constraints: BoxConstraints.expand(height: 200),
            child: ListView(
                padding: EdgeInsets.only(left: 40),
                scrollDirection: Axis.horizontal,
                children: getRecentJobs()),
          ),
        ],
      ),
    );
  }

  Widget getJobCard(Job job) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CDetails()),
        );
      },
      child: Stack(
        children: <Widget>[
          //  FlatButton(
          //   shape: new RoundedRectangleBorder(
          //       borderRadius: new BorderRadius.circular(30.0)),
          //   color: Colors.grey[200],
          //   onPressed: () {},
          //   child: Text('\$10 Investment'),
          // ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20, bottom: 30, top: 20),
            height: 180,
            width: 220,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: job.companyLogo,
                    ),
                    SizedBox(width: 5),
                    Text(
                      job.workTitle,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Text(job.workSubTitle,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
                Text(job.moneyRaised,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
                Text(job.investors,
                    style: TextStyle(
                        fontFamily: 'Typewriter',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.indigo[700])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getRecentJobs() {
    List<Widget> recentJobCards = [];
    List<Job> jobs = findJobs();
    for (Job job in jobs) {
      recentJobCards.add(getJobCard(job));
    }
    return recentJobCards;
  }

  List<Job> findJobs() {
    List<Job> jobs = [];
    jobs.add(Job(
        workTitle: 'Colours',
        workSubTitle: 'The primary colors are red, yellow and blue',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/kidC.png"),
        moneyRaised: '41 days left',
        investors: '11 am',
        days: '15 days left'));
    jobs.add(Job(
        workTitle: 'Places',
        workSubTitle: 'Learn about different places',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/place.png"),
        moneyRaised: '10 days left',
        investors: '12 pm',
        days: '10 days left'));
    jobs.add(Job(
        workTitle: 'Animal',
        workSubTitle: 'Know about different animals',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/animal.png"),
        moneyRaised: '21 days left',
        investors: '11 am',
        days: '15 days left'));

    jobs.add(Job(
        workTitle: 'Thing',
        workSubTitle: 'The primary colors are red, yellow and blue',
        workType: 'Hardware',
        companyLogo: AssetImage("lib/images/kidC.png"),
        moneyRaised: '41 days left',
        investors: '11 am',
        days: '15 days left'));
    
    return jobs;
  }
}
