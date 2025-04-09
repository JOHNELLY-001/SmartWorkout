import 'package:flutter/material.dart';
import '/colors.dart' as color;
import '/screens/homepage01.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.BackgroundColor,
      body:  SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24, // Adjust size as needed
                    color: Colors.cyan, // Match color with text if desired
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage01()
                      ),
                    );
                  },
                ),
                Text("TRAINING", style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold, fontSize: 30, color: color.AppColor.HeadingColor,),
                ),
                Expanded(child: Container()),
                Icon(Icons.sports, size: 30, color: color.AppColor.WidgetsColor,),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Text("Seasonal training schedule", style: TextStyle(fontSize: 20, color: color.AppColor.fortuneColor,),
                ),
                Expanded(child: Container()),
                Text("DETAILS", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 20, color: color.AppColor.TitlesColor,),
                ),
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 20, color: color.AppColor.fortuneColor,),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/pexels-photo-3814408.jpeg'), // Correct usage
                  fit: BoxFit.cover,
                ),

                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
                boxShadow: [
                  BoxShadow(offset: const Offset(8, 8), blurRadius: 10, color: color.AppColor.LightGray,),
                ],
              ),
              child: Container(
                  padding: const EdgeInsets.only(left: 20,top: 10, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text("Next WorkOut", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 15, color: color.AppColor.WidgetsColor,),
                      ),
                   Text("Jogging workout", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.italic, fontSize: 22, color: color.AppColor.OffWhite,),
                ),
                 Text("From 05:00 AM to 06:00AM          03Km Route", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 22,
                    color: color.AppColor.OffWhite,
                  ),
                ),
                  const SizedBox(height: 40,),
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.timer, size: 23, color: color.AppColor.fortuneColor,),
                        const SizedBox(width: 10,),
                        Text("60 mins", style: TextStyle(fontSize: 18, color: color.AppColor.OffWhite,
                          ),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        boxShadow: [
                          BoxShadow(color: color.AppColor.SutitlesColor, blurRadius: 3, offset: const Offset(1, 1),
                          ),
                        ],
                      ),
                        child: Icon(Icons.play_circle_fill, size: 50, color: color.AppColor.fortuneColor,),
                    ),
                  ],
                ),
                  ],
                ),
                ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Aligns them to the left
                children: [
                const Text(
                "Push Up Workouts",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                ),),
                  const SizedBox(width: 100,),
                  Icon(
                    Icons.schedule,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 8), // Adds space between icon and text
                  const Text(
                    "Schedule",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Colors.amber, // You can match the color with the icon
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(offset: const Offset(8, 8), blurRadius: 7, color: color.AppColor.LightGray,),],
              ),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    //color: Colors.blueGrey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/push_ups.jpg'), // Correct usage
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [BoxShadow(
                        blurRadius: 10,
                        color: color.AppColor.HeadingColor,
                        offset: const Offset(-1, 1),
                      ),
                      ]
                    ),
              ),
      ],
            ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Squats Workouts", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 18,),),
                  const SizedBox(width: 100,),
                  Icon(
                    Icons.schedule,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 8), // Adds space between icon and text
                  const Text(
                    "Schedule",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Colors.amber, // You can match the color with the icon
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage('assets/images/istockphoto-13squatsup-612x612.jpg'),
                fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Stretching Workouts", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 18,)),
                  const SizedBox(width: 100,),
                  Icon(
                    Icons.schedule,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 8), // Adds space between icon and text
                  const Text(
                    "Schedule",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Colors.amber, // You can match the color with the icon
                    ),
                  ),
                ],
              ),
            ),

           const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
              image: AssetImage('assets/images/istockphoto-8body-stretch-612x612.jpg'),
              fit: BoxFit.cover,
           ),
         ),
        ),

            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: Row (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sits Up Workouts", style: TextStyle(fontFamily: 'Lato', fontStyle: FontStyle.normal, fontSize: 18,),),
                  const SizedBox(width: 100,),
                  Icon(
                    Icons.schedule,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 8), // Adds space between icon and text
                  const Text(
                    "Schedule",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Colors.amber, // You can match the color with the icon
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/istockphoto-5sits_up-612x612.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 5, right: 5,top: 7),
                child: const Column(
                  children: [
                    Text("Plan your own schedule",style: TextStyle(fontSize: 17),),
                    Text("Set up your strategies",style: TextStyle(fontSize: 17),),
                    Text("See your progress",style: TextStyle(fontSize: 17),),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
      ),
    );
  }
}
