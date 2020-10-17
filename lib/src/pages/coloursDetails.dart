import 'package:agora_flutter_quickstart/src/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'videoClass.dart';

class CDetails extends StatefulWidget {
  @override
  _CDetailsState createState() => _CDetailsState();
}

class _CDetailsState extends State<CDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              VideoClass(
                videoURL: 'https://www.youtube.com/watch?v=9_WBQISVHnw',
                title: 'Preview ',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Colours',
                      style: theme.textTheme.headline1,
                    ),
                    
                    RaisedButton(
                      color: Colors.cyan,
                  onPressed: () {  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IndexPage()),
                              );},
                  child: Text('Join Class'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.cyan)),
                ),
             
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.indigo[700],
                          ),
                          SizedBox(width: 5),
                          Text(
                            '11 am',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '41 days left',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border.all(
                          color: Colors.grey[200],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.person_pin_circle,
                              color: Colors.indigo[700]),
                          SizedBox(width: 5),
                          Text(
                            'India',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
             
              
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Your Tasks',
                    style: theme.textTheme.headline3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FundraiseCard(
                      theme: theme,
                      header: 'Total',
                      subheader: '   Investor   ',
                      data: '150'),
                  FundraiseCard(
                      theme: theme,
                      header: 'Raise',
                      subheader: 'Description',
                      data: 'Series C')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FundraiseCard(
                      theme: theme,
                      header: 'Minimum',
                      subheader: 'Investment',
                      data: '10'),
                  FundraiseCard(
                      theme: theme,
                      header: ' Pre-Money',
                      subheader: 'Valuation',
                      data: '\$3,000')
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Class Highlights',
                    style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'People connect better with stories than they do with a list of facts. If you want people to actually remember the information from your company profile, take the Zappos approach and tell a story about your brand. ',style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'This sounds easy, but when you consider how much Google has done and the hundreds of acquisitions and projects it has been involved in, it\'s hard to limit that to one page.',style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'It\'s also important to note that the company keeps the page dynamic and up-to-date including highlights from Q4. Most company profiles are static and left to gather dust, but Philips updates its at least four times a year.',style: theme.textTheme.headline2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Teacher Notes', style: theme.textTheme.headline3),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                      'I love this story on teamwork I heard the other day. I think you will agree it is powerful. Feel free to share with your teams. A team of about 35 employees had come together for a team building event. They were a young, bright and enthusiastic team.However, one big problem this team had was they wouldn’t share information or solutions with each other. The leader felt they were too focused on self and not enough on team.So she started off with a fun team activity that would allow her to teach the importance of each team member working together and sharing more.She brought the team into the cafeteria. All of the tables and chairs had been stacked and put away. Placed around the room were fun decorations and hundreds of different colored balloons.Everyone was excited, but not sure what it was all about. In the center of the room was a big box of balloons that had not been blown up yet.The team leader asked each person to pick a balloon, blow it up and write their name on it. But they were instructed to be careful because the balloon could pop!A few balloons did indeed pop and those members of the team were given another chance, but were told that if the balloon popped again they were out of the game.'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('Teachers', style: theme.textTheme.headline3),
                    SizedBox(width: 30),
                    Text('Learn More', style: theme.textTheme.headline4)
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  buildFounderRow(name: 'Rishav Raj Jain',position: 'Maths Teacher'),
                  buildFounderRow(name: 'Chandra Prakash',position: 'Science Teacher'),
                  
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 25, 8, 25),
                child: Text('Course Completed', style: theme.textTheme.headline3),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                              'The graph below illustrated the percentage of course completed'),
                              CircularPercentIndicator(
                              radius: 120.0,
                              lineWidth: 13.0,
                              animation: true,
                              percent: 0.2,
                              center: new Text(
                                "20.0%",
                                style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                              
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.cyan[200],
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
             
            ],
          ),
        ),
      ),
    );
  }

  Padding buildFounderRow({String name, String position}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: ClipOval(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("lib/images/person.png"),
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            children: <Widget>[Text(name), Text(position)],
          ),
        ],
      ),
    );
  }
}



class FundraiseCard extends StatelessWidget {
  const FundraiseCard(
      {Key key,
      @required this.theme,
      @required this.header,
      @required this.subheader,
      @required this.data})
      : super(key: key);

  final ThemeData theme;
  final String header;
  final String subheader;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(children: [
          Text(header, style: theme.textTheme.headline4),
          Text(subheader, style: theme.textTheme.headline4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(data, style: theme.textTheme.headline3),
          )
        ]),
      ),
    );
  }
}
