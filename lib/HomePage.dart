import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lms/Widgets/Header.dart';
import 'package:lms/Widgets/Leave%20Tile.dart';
import 'package:lms/Widgets/Recent%20Leave.dart';

import 'Widgets/DashboardTile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedPage = 0;
  void _onItemTapped(int index) {
    if (index == 2) {
      _openBottomSheet();
    }
    setState(() {
      _selectedPage = index;
    });
  }

  void _openBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          final screenSize = MediaQuery.of(context).size;
          return Container(
            // width: screenSize.width,
            height: screenSize.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Container(
                    width: screenSize.width * 0.15,
                    child: Divider(
                      thickness: 3.5,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: screenSize.height * 0.7,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Leave Status',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            width: screenSize.width,
                            height: screenSize.height * 0.1,
                            decoration: BoxDecoration(
                                color: Colors.orange.shade500,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              'PENDING',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Leave Type:',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            'Annual Leave',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '1 September 2023 - 2 September 2023',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: RichText(
                              text: TextSpan(
                                  style: TextStyle(fontSize: 16),
                                  children: [
                                TextSpan(
                                  text: 'Leave Period: ',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'Full Day',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ])),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: screenSize.width * 0.95,
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Reason:',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Attached File: ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 16),
                              ),
                              Text(
                                'filename.jpeg',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                              Spacer(),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('View'),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(screenSize.width * 0.23,
                                      screenSize.height * 0.017),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 13, 112, 251),
                                ),
                              )
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            width: screenSize.width * 0.95,
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Job Will Be Covered By:',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Container(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 20),
                              height: screenSize.height * 0.08,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(72, 77, 213, 240),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Steven Parkson',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'stevenparkson@gmail.com',
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.call_outlined)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.message_outlined))
                                    ],
                                  )
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(screenSize.width * 0.8,
                                    screenSize.height * 0.05),
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    Color.fromARGB(255, 13, 112, 251),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    'Download as PDF',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Spacer(),
                                  Icon(Icons.download)
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.person_2_outlined,
      //     color: Colors.white,
      //   ),
      //   title: Center(
      //     child: Text(
      //       'Home',
      //       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.notifications_none_outlined),
      //       color: Colors.white,
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.settings_outlined),
      //       color: Colors.white,
      //     ),
      //   ],
      //   elevation: 0,
      //   backgroundColor: const Color.fromARGB(255, 13, 112, 251),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screenSize.height * 0.33,
            floating: false,
            pinned: false,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: screenSize.height * 0.30,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 13, 112, 251),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                        Spacer(),
                        SizedBox(
                          width: 50,
                          height: screenSize.height * 0.09,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: screenSize.height * 0.035,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none_outlined),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings_outlined),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    Spacer(),
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Welcome back,',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.height * 0.025),
                    ),
                    Text(
                      'Mariah Gonzalez',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.height * 0.028,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ),

          // Scrollable content that moves over the SliverAppBar
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      HomeHeader(screenSize, 'Dashboard', 'Leave History'),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          dashboardTile(screenSize, 'Annual', '14', '07',
                              Icons.calendar_month_outlined),
                          Spacer(),
                          dashboardTile(screenSize, 'Medical', '14', '10',
                              Icons.medical_services_outlined),
                          Spacer(),
                          dashboardTile(screenSize, 'Hospitalization', '60',
                              '40', Icons.apartment_outlined),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          dashboardTile(screenSize, 'Compassionate', '03', '03',
                              Icons.favorite_border_outlined),
                          Spacer(),
                          dashboardTile(screenSize, 'Marriage', '05', '05',
                              Icons.boy_outlined),
                          Spacer(),
                          dashboardTile(screenSize, 'Maternity', '60', '60',
                              Icons.girl_outlined),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          dashboardTile(screenSize, 'Replacement', '01', '01',
                              Icons.swap_horiz_outlined),
                          Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (index == 1) {
                  return Column(
                    children: [
                      HomeHeader(
                          screenSize, 'Colleague\'s on leave', 'Full List'),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        height: screenSize.height * 0.08,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            LeaveTile(
                                screenSize,
                                'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg',
                                'Marc Jacob',
                                '01/01/2023',
                                Icons.medical_services_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            LeaveTile(
                                screenSize,
                                'https://thumbs.dreamstime.com/b/unknown-male-avatar-profile-image-businessman-vector-unknown-male-avatar-profile-image-businessman-vector-profile-179373829.jpg',
                                'Jason Stunham',
                                '01/01/2023',
                                Icons.swap_horiz_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            LeaveTile(
                                screenSize,
                                'https://static.vecteezy.com/system/resources/previews/014/194/215/non_2x/avatar-icon-human-a-person-s-badge-social-media-profile-symbol-the-symbol-of-a-person-vector.jpg',
                                'Elisabeth White',
                                '01/01/2023',
                                Icons.calendar_month_outlined)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: screenSize.width,
                          // height: screenSize.height * 0.27,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(236, 46, 56, 79),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HR\'s Announcement \& News',
                                style: TextStyle(
                                    fontSize: screenSize.height * 0.02,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text('Training',
                                      style: TextStyle(
                                        fontSize: screenSize.height * 0.019,
                                        color: Colors.white,
                                      )),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          color: Colors.white,
                                          size: screenSize.height * 0.02,
                                          Icons.arrow_forward_ios_sharp))
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Sports Day',
                                      style: TextStyle(
                                        fontSize: screenSize.height * 0.019,
                                        color: Colors.white,
                                      )),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          size: screenSize.height * 0.02,
                                          color: Colors.white,
                                          Icons.arrow_forward_ios_sharp))
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Policies and Guides',
                                      style: TextStyle(
                                        fontSize: screenSize.height * 0.019,
                                        color: Colors.white,
                                      )),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          size: screenSize.height * 0.02,
                                          color: Colors.white,
                                          Icons.arrow_forward_ios_sharp))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                } else if (index == 2) {
                  return Column(
                    children: [
                      HomeHeader(screenSize, 'Your Recent Leaves', 'See more'),
                      recentLeave(
                          screenSize,
                          'Annual Leave',
                          '1 Jan 2023 - 1 Jan 2023 (1 Day)',
                          'Personal Matter',
                          Icons.calendar_month_rounded),
                      recentLeave(
                          screenSize,
                          'Medical Leave',
                          '22 Dec 2022 - 23 Dec 2022 (2 Days)',
                          'Ear infection cause by a polluted swimming pool',
                          Icons.medical_services_outlined),
                      recentLeave(
                          screenSize,
                          'Medical Leave',
                          '16 Nov 2022 - 23 Nov 2022 (7 Days)',
                          'Got COVID and need to be quarantine atleast a week',
                          Icons.medical_services_outlined)
                    ],
                  );
                } else if (index == 3) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            '\"Ride the waves of work and leisure, and surf your way to blissful balance\"',
                            style: TextStyle(
                                fontSize: screenSize.height * 0.02,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Image.network(
                          'https://ignatiusliyan.github.io/portfolio/1.png')
                    ],
                  );
                } else {
                  // Add more widgets or default content here
                  return SizedBox.shrink(); // Empty space for extra indexes
                }
              },
              childCount: 4, // Total number of sections/widgets
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedPage,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color.fromARGB(255, 1, 83, 247),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add), label: 'Apply Leave'),
            BottomNavigationBarItem(
                icon: Icon(Icons.checklist_outlined), label: 'Leave Status'),
          ]),
    );
  }
}
