import 'package:flutter/material.dart';
import 'package:flutter_contact_us/pet_app/detailed_screen.dart';
import  'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool isdrawer = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scaleFactor),
      duration: Duration(
        milliseconds: 250,
      ),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 45),

            ///Customized AppBar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(isdrawer ? Icons.arrow_back : Icons.menu),
                    onPressed: () {
                      setState(() {
                        xoffset = isdrawer ? 0 : 230;
                        yoffset = isdrawer ? 0 : 150;
                        scaleFactor = isdrawer ? 1 : 0.6;

                        isdrawer = !isdrawer;
                      });
                    },
                   ),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.location_on,
                              color: primaryColor,
                            ),
                            onPressed: () {},
                          ),
                          Text('India'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            /// Search Bar
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0,10.0,40.0,10.0  ),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: primaryColor),
                      ),
                      prefixIcon: Icon(Icons.search, color: primaryColor),
                      hintText: 'Search Pet',
                      filled: true,
                      fillColor: Colors.grey.shade200),
                ),
              ),
            ),

            /// Animate Outlined icon list view
            Container(
              height:120,
              // padding: EdgeInsets.only(left: ),
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index){
                  return Container(
                    child: Column(

                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(categories[index]['iconPath'],height: 50,width: 50,),
                        ),
                        Text(categories[index]['name'])
                      ],
                    ),
                  );
                },
              ),
            ),

            /**
             * Note: Make list View for this
             */
            ///Row one of the last items of design
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailedScreen()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),

                child:Row(
                  children: [
                    Expanded(
                      child:Stack(
                        children: [
                          Container(

                            decoration: BoxDecoration(
                              color:Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: listShadow
                            ),
                            margin: EdgeInsets.only(top: 40),
                          ),
                          Align(
                            child: Image.asset('images/pet-cat2.png'),
                          )
                        ],
                      )
                    ),
                    Expanded(
                        child:Container(
                          margin: EdgeInsets.only(top:60,bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                            )
                          ),
                        )
                    )
                  ],
                )
              ),
            ),
            ///Row two of the last items of design
            Container(
              height: 240,
              margin: EdgeInsets.symmetric(horizontal: 20),

              child:Row(
                children: [
                  Expanded(
                    child:Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: listShadow
                          ),
                          margin: EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Image.asset('images/pet-cat1.png'),
                        )
                      ],
                    )
                  ),
                  Expanded(
                      child:Container(
                        margin: EdgeInsets.only(top:60,bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                          )
                        ),
                      )
                  )
                ],
              )
            ),

          ],
        ),
      ),
    );
  }
}
