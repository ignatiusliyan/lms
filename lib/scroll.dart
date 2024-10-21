import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screenSize.height * 0.30,
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
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 22,
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
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Mariah Gonzalez',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
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
                  // First widget: A simple container
                  return Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.red[100],
                    child: Text(
                      'Welcome Back!',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  );
                } else if (index == 1) {
                  // Second widget: GridView inside the SliverList
                  return Container(
                    padding: EdgeInsets.all(8),
                    height: 200, // Set a height for the GridView
                    child: GridView.builder(
                      itemCount: 6, // Number of grid items
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, gridIndex) {
                        return Card(
                          color: Colors.blue[200],
                          child: Center(
                            child: Text('Grid Item $gridIndex'),
                          ),
                        );
                      },
                    ),
                  );
                } else if (index == 2) {
                  // Third widget: Another Container
                  return Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.green[100],
                    child: Text(
                      'Your Notifications',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  );
                } else if (index == 3) {
                  // Fourth widget: A ListView inside the SliverList
                  return Container(
                    padding: EdgeInsets.all(8),
                    height: 200, // Set a height for the ListView
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, listIndex) {
                        return ListTile(
                          leading: Icon(Icons.notification_important),
                          title: Text('Notification $listIndex'),
                        );
                      },
                    ),
                  );
                } else if (index == 4) {
                  // Fifth widget: A chart or a complex widget
                  return Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.orange[100],
                    child: Center(
                      child: Text(
                        'Chart Widget (or other complex widget)',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else if (index == 5) {
                  // Second widget: GridView inside the SliverList
                  return Container(
                    padding: EdgeInsets.all(8),
                    height: 200, // Set a height for the GridView
                    child: GridView.builder(
                      itemCount: 6, // Number of grid items
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, gridIndex) {
                        return Card(
                          color: Colors.blue[200],
                          child: Center(
                            child: Text('Grid Item $gridIndex'),
                          ),
                        );
                      },
                    ),
                  );
                } else if (index == 6) {
                  // Third widget: Another Container
                  return Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.green[100],
                    child: Text(
                      'Your Notifications',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  );
                } else if (index == 7) {
                  // Fourth widget: A ListView inside the SliverList
                  return Container(
                    padding: EdgeInsets.all(8),
                    height: 200, // Set a height for the ListView
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, listIndex) {
                        return ListTile(
                          leading: Icon(Icons.notification_important),
                          title: Text('Notification $listIndex'),
                        );
                      },
                    ),
                  );
                } else if (index == 8) {
                  // Fifth widget: A chart or a complex widget
                  return Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.orange[100],
                    child: Center(
                      child: Text(
                        'Chart Widget (or other complex widget)',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                } else {
                  // Add more widgets or default content here
                  return SizedBox.shrink(); // Empty space for extra indexes
                }
              },
              childCount: 8, // Total number of sections/widgets
            ),
          ),
        ],
      ),
    );
  }
}
