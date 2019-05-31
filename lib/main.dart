import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
    title: "word GAme",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("word game "),
      ),
      body: new Center(
        child:
          new RandomSentences()
        ),
      ),
   
    
    );
  }
}
class RandomSentences extends StatefulWidget{
    @override
    createState() =>new RandomSentencesState(); 
}
class RandomSentencesState extends State<RandomSentences>{
  @override
   Widget build(BuildContext context) {
   final noun=new WordNoun.random();
    final adjective=new WordAdjective.random();
    new Text(
          "NEw Text WIll ACtive HERe= ${adjective.asCapitalized}"
          "Noun: ${noun.asLowerCase}"
        
        //"Noun: ${noun.asCapitalized}"
        );
}
}