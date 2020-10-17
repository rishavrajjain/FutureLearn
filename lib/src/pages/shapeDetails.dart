import 'package:agora_flutter_quickstart/src/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'videoClass.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
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
                videoURL: 'https://www.youtube.com/watch?v=xhN5Zkm82DA',
                title: 'Preview ',
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shapes',
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
                            '10 am',
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
                        '42 days left',
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
                      header: '     Learn     ',
                      subheader: '   Shape   ',
                      data: ' Square '),
                  FundraiseCard(
                      theme: theme,
                      header: 'Revise',
                      subheader: 'Shape',
                      data: 'Rectangle')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FundraiseCard(
                      theme: theme,
                      header: ' Minimum ',
                      subheader: 'Hour',
                      data: '1/2'),
                  FundraiseCard(
                      theme: theme,
                      header: '   Identify   ',
                      subheader: ' Different ',
                      data: 'Shapes')
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
                    'Nostrud sint dolor cillum aliquip ut ea officia velit duis reprehenderit incididunt minim. Nisi do do nulla nulla pariatur. Minim incididunt Lorem ex aliquip deserunt deserunt tempor ullamco id eu do. Nostrud tempor minim sit sunt ut cupidatat aliquip esse. Anim anim officia eu labore.'),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Pariatur duis elit aliquip et esse est est veniam. Aliquip Lorem minim pariatur pariatur ut in sint Lorem sit. Officia proident labore laborum laboris duis consequat culpa do ea aliqua elit ex.'),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    'Voluptate et sunt ullamco minim do minim aliquip sit cillum adipisicing. Fugiat esse aliqua incididunt excepteur consequat veniam aliqua culpa do Lorem amet nisi. Duis duis ad et cillum anim ad commodo adipisicing sit sint sint do. Non commodo ullamco dolore cillum labore. Nostrud est mollit mollit laboris voluptate consequat dolore commodo. Eiusmod duis anim et excepteur.'),
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
                    'Eiusmod sit commodo ipsum voluptate pariatur deserunt anim tempor. Excepteur tempor adipisicing sit nostrud pariatur ex cillum aute. Anim ipsum reprehenderit adipisicing magna sunt laborum duis mollit ex incididunt. Elit est eiusmod commodo consequat anim enim velit ea labore incididunt anim. Dolor nulla incididunt exercitation do commodo aliqua. Pariatur deserunt quis do commodo incididunt eiusmod est irure voluptate culpa. Eiusmod ad dolore consectetur fugiat nisi amet irure aliquip enim minim.Sunt consequat enim dolor non ullamco duis nostrud dolore anim nostrud ex. Ut non consequat irure aute magna. Nisi velit culpa ea occaecat amet veniam pariatur culpa culpa velit quis laboris voluptate voluptate. Occaecat eiusmod dolor voluptate incididunt duis pariatur labore ea fugiat proident laborum ullamco labore sit.Commodo anim incididunt ad ullamco ipsum velit. Exercitation exercitation ea exercitation veniam ipsum adipisicing enim adipisicing. Ea excepteur aliquip tempor est. Dolor nulla nostrud do dolore proident pariatur Lorem pariatur qui et veniam fugiat id. Ea qui irure nulla tempor cillum veniam consectetur pariatur.',
                    )
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
