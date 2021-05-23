import 'package:desafio/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeDesafio.theme(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> texts = [
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
    '''Soluções para\ndescomplicar a gestão\nfinanceira,''',
  ];
  final List<String> texts2 = [
    '''pensadas para você e\nseu negócio.''',
    '''pensadas para você e\nseu negócio.''',
    '''pensadas para você e\nseu negócio.''',
    '''pensadas para você e\nseu negócio.''',
    '''pensadas para você e\nseu negócio.''',
    '''pensadas para você e\nseu negócio.''',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            double.infinity,
            MediaQuery.of(context).size.height * .75,
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace: Stack(
              children: [
                Container(
                    color: Theme.of(context).primaryColor,
                    height: MediaQuery.of(context).size.height * .74,
                    width: double.infinity,
                    child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(50),
                        child: Image.asset('assets/logo.png'))),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .35,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                          child: CarouselSlider.builder(
                              unlimitedMode: true,
                              slideTransform: CubeTransform(),
                              slideIndicator: CircularSlideIndicator(
                                itemSpacing: 20,
                                currentIndicatorColor: Colors.white,
                                alignment: Alignment.bottomLeft,
                                indicatorRadius: 4,
                                indicatorBackgroundColor: Colors.white70,
                                padding: EdgeInsets.only(bottom: 32),
                              ),
                              slideBuilder: (index) {
                                return Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        texts[index],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 35,
                                        ),
                                      ),
                                      Text(
                                        texts2[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 37,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                );
                              },
                              itemCount: 6)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 140,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 60,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FlutterIcons.person_mdi,
                                    color: Colors.white),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Acessar conta',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ],
                            ),
                            color: Theme.of(context).buttonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 60,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FlutterIcons.person_add_mdi,
                                    color: Theme.of(context).primaryColor),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Abrir uma conta',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Theme.of(context).primaryColor),
                                ),
                              ],
                            ),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Ink(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        shape: BoxShape.circle),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.help,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('  Precisa\nde Ajuda?')
                ],
              ),
              Column(
                children: [
                  Ink(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        shape: BoxShape.circle),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.card_membership_sharp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('PIX')
                ],
              ),
              Column(
                children: [
                  Ink(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        shape: BoxShape.circle),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.assignment_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Termos\nde uso?')
                ],
              ),
            ],
          ),
        ));
  }
}
