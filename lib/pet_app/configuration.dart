import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff416d6d);

List<BoxShadow> listShadow = [
  BoxShadow(
    color: Colors.grey.shade300,
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'}
];


List<Map> drawerItem  =[

  {'icon':FontAwesomeIcons.paw  ,'title':'Adoption'},
  {'icon':Icons.mail  ,'title':'Donation'},
  {'icon':FontAwesomeIcons.plus  ,'title':'Add Pet'},
  {'icon':Icons.favorite  ,'title':'Favorites'},
  {'icon':FontAwesomeIcons.userAlt  ,'title':'Profile'},
];

final temp_data = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, '
'when an unknown printer took a galley of type and scrambled it to make a type specimen book.';
