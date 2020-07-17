import 'package:flutter/material.dart';

class MyNormalText extends StatelessWidget {
  const MyNormalText({Key key, this.text, this.color:Colors.black, this.overflow}) : super(key: key);

  final String text;
  final Color color;
  final TextOverflow overflow;

  @override
  Widget build (BuildContext context) {
    
    return Text(
      text ?? "",
      overflow: overflow,
      style: TextStyle(
        fontSize: 16,        
        color: color
      )
    );
  }
}

class MyTitleText extends StatelessWidget {
  const MyTitleText({Key key, this.text, this.color:Colors.black, this.alignment: TextAlign.left, this.overflow}) : super(key: key);

  final String text;
  final Color color;
  final TextAlign alignment;
  final TextOverflow overflow;

  @override
  Widget build (BuildContext context) {
    
    return Text(
      text ?? "",
      textAlign: alignment,
      overflow: overflow,
      style: TextStyle(
        fontSize: 16,
        color: color,
        fontWeight: FontWeight.bold
      )
    );
  }
}

class MyBoldText extends StatelessWidget {
  const MyBoldText({Key key, this.text, this.color: Colors.black, this.alignment:TextAlign.left, this.overflow}) : super(key: key);

  final String text;
  final Color color;
  final TextAlign alignment;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    
    return Text(
      text ?? "",
      textAlign: alignment,
      overflow: overflow,
      style: TextStyle(
        color: color,
        letterSpacing: 1,
        fontSize: 20,
        fontWeight: FontWeight.bold
      )
    );
  }
}

class MyRowText extends StatelessWidget {
  const MyRowText({Key key, this.title:"", this.content:"", this.widgetContent}) : super(key: key);

  final String title;
  final String content;
  final Widget widgetContent;
  
  @override
  Widget build (BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          flex: 1,  
          child: MyTitleText(text: title ?? "")
        ),

        Flexible(
          flex: 2,  
          child: content == null ? Container(): MyNormalText(text: content ?? "")
        ),
        
        Flexible(
          flex: 2,  
          child: widgetContent == null ? Container(): widgetContent
        )
      ],
    );
  }
}