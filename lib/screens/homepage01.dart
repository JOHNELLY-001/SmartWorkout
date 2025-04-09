import 'package:flutter/material.dart';
//import '/colors.dart' as color;
import '/screens/homepage.dart';


class Homepage01 extends StatefulWidget {
  const Homepage01({super.key});

  @override
  State<Homepage01> createState() => _Homepage01State();
}

class _Homepage01State extends State<Homepage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("WORKOUTS", style: TextStyle(fontSize: 30, fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                const Icon(Icons.sports_gymnastics),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text("Schedule your workouts",style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                  ),
                  Expanded(child: Container()),
                  const Icon(Icons.schedule),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  const Text("TRAININGS", style: TextStyle(fontSize: 25,fontFamily: 'Roboto', fontStyle: FontStyle.italic, fontWeight: FontWeight.w500, color: Colors.blueGrey),
                  ),
                  Expanded(child: Container()),
                  const Text("DETAILS", style: TextStyle(fontSize: 20,fontFamily: 'Roboto', fontStyle: FontStyle.normal, fontWeight: FontWeight.w500,
                      color: Colors.cyan),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 22, // Adjust size as needed
                      color: Colors.cyan, // Match color with text if desired
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()
                        ),
                      );
                    },
                  ),
                    ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/pexels-warmup-3768916.webp'),
                  fit: BoxFit.cover),
                    boxShadow: const [
                      BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                      ),
                    ]
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage('assets/images/images_diet.jpg'),
                      fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),


                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('assets/images/images_exercises.jpg'),
                            fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/images_meditate.jpg'),
                      fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),

                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/istockphoto-696178526-1024x1024.jpg'),
                      fit: BoxFit.cover),
                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),
                  )
                ],
              ),

              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bodystretch.jpg'),
                            fit: BoxFit.cover),

                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),

                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 180,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/gain_weight.jpg'),
                            fit: BoxFit.cover),

                        boxShadow: const [
                          BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                          ),
                        ]

                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("HEALTH BODY PHYSIC DIAGNOSIS", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(80),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/lossweight.jpg'),
                    fit: BoxFit.cover,

                  ),
                  boxShadow: [
                   BoxShadow ( offset: Offset(4, 6), blurRadius: 10, color: Colors.black26,
                   ),
                  ]

                ),

              ),
            ],
          ),
        )
      ),
    );
  }
}
