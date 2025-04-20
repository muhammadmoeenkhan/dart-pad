import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData.dark(),
    );
  }
}

class HomePage extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i0.wp.com/thenerdsofcolor.org/wp-content/uploads/2021/10/batman_banner.jpg?fit=2759%2C1441&ssl=1'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        elevation: 8,
        leading: Icon(Icons.menu, color: Colors.white),
        title: Text(
          'BatBox',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Search clicked")));
            },
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://png.pngtree.com/png-clipart/20231002/original/pngtree-dc-batman-logo-symbol-of-superhero-war-superhero-movie-vector-png-image_12939308.png',
              ),
              radius: 18,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    'https://miro.medium.com/v2/resize:fit:1400/0*0BvPk_N2euETE3zA.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Batman Begins (2005)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    'https://occ-0-8407-92.1.nflxso.net/dnm/api/v6/Z-WHgqd_TeJxSuha8aZ5WpyLcX8/AAAABc0eOOKKMjd7F3YJY6jIYsJ-fJGQXU2sP0Lk6RUSuE8JkerBfCLkT8HHfRUwBBxh-UQITsrZ9WsedBf6KFUtOkBGz8Z7WHs1bdCl.jpg?r=24e',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'The Dark Knight (2008)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    'https://ntvb.tmsimg.com/assets/p8757074_v_h10_ah.jpg?w=1280&h=720',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'The Dark Knight Rises (2012)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          ),
            child: Column(
            children:[
              ClipRRect(
              borderRadius: BorderRadius.vertical(top:
                                                 Radius.circular(15)
                                                 ),
                child: Image.network(
                'https://musicart.xboxlive.com/7/4d955a00-0000-0000-0000-000000000002/504/image.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                ),
                ),
                
                Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                'The Batman (2020)',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
                ),
                ),
                
            ],
            ),
          ),
        ],
      ),
    );
  }
}
