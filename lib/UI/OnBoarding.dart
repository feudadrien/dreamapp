import 'package:dream_guild_flutter/UI/HomePage.dart';
import 'package:dream_guild_flutter/UI/Subscription.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class onBoarding extends StatefulWidget {
  @override
  _onBoardingState createState() => _onBoardingState();
}

var _fontHeaderStyle = TextStyle(
  fontFamily: "Gotik",
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
  color: Colors.black87,
  letterSpacing: 1.5
);

var _fontDescriptionStyle = TextStyle(
  fontFamily: "Sans",
  fontSize: 15.0,
  color: Colors.black38,
  fontWeight: FontWeight.w400
);

final pages = [

  new PageViewModel(
      pageColor:  Colors.white,
      bubbleBackgroundColor: Colors.black54,
      title: Text(
        'Education',style: _fontHeaderStyle,
      ),
      body: Text(
        'get info related to transcript, career paths and other collage rellated trands',textAlign: TextAlign.center,
        style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/image/onboarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Colors.white,
      bubbleBackgroundColor: Colors.black54,
      title: Text(
        'Jobs and Internships',style: _fontHeaderStyle,
      ),
      body: Text(
          'get info pertaining to new jobs interview, resume and internships you can apply',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/image/onboarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Colors.white,
      bubbleBackgroundColor: Colors.black54,
      title: Text(
        'Discover Place',style: _fontHeaderStyle,
      ),
      body: Text(
          'Haselfree  booking  of  flight  tickets  \nwith  full  refund  on  cancelation',textAlign: TextAlign.center,
          style: _fontDescriptionStyle
      ),
      mainImage: Image.asset(
        'assets/image/onboarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

];

class _onBoardingState extends State<onBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text("SKIP",style: _fontDescriptionStyle.copyWith(color: Colors.purple,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      doneText: Text("DONE",style: _fontDescriptionStyle.copyWith(color: Colors.purple,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      onTapDoneButton: (){
        Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (_,__,___)=> new subscription()));
      },


    );
  }
}

