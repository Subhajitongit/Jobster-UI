// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final List jobs = [
    [
      "assets/icons/apple-logo.png",
      "Software Engineer",
      "USD 55/hr",
      "Full Time"
    ],
    [
      "assets/icons/google (1).png",
      "Software Designer",
      "USD 45/hr",
      "Internship"
    ],
    ["assets/icons/uber.png", "UI/UX Designer", "USD 50/hr", "Full Time"],
    ["assets/icons/nike.png", "Software Designer", "USD 51/hr", "Part Time"],
  ];

  final List recentjobs = [
    [
      "assets/icons/apple-logo.png",
      "Software Engineer",
      "USD 55/hr",
      "Full Time"
    ],
    [
      "assets/icons/google (1).png",
      "Software Designer",
      "USD 45/hr",
      "Internship"
    ],
    ["assets/icons/uber.png", "UI/UX Designer", "USD 50/hr", "Full Time"],
    ["assets/icons/nike.png", "Software Designer", "USD 51/hr", "Part Time"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            "assets/icons/hamburger.png",
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.grey[400],
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: Text(
                "Discover a new path",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // )
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width * 0.78,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for a job here..",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)),
                  height: 45,
                  width: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/icons/settings.png",
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 280,
              ),
              child: Text(
                "For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return JobCard(
                        image: jobs[index][0],
                        pay: jobs[index][2],
                        role: jobs[index][1],
                        type: jobs[index][3],
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0, bottom: 10),
              child: Text(
                "Recently Added",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Image.asset(
                                  jobs[index][0],
                                  height: 30,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(jobs[index][1],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(jobs[index][3],
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JobCard extends StatefulWidget {
  final String image;
  final String role;
  final String pay;
  final String type;
  const JobCard({
    Key? key,
    required this.image,
    required this.role,
    required this.pay,
    required this.type,
  }) : super(key: key);

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: 280,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    widget.image,
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(widget.type),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                  ),
                  child: Text(
                    widget.role,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(widget.pay),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
