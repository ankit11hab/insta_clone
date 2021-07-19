import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Instagram",style: TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontFamily: 'Billabong',
        )),
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 32,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.send_outlined,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        //child: Image(
        //image: AssetImage('assets/picc1.JPG')
        //),
          child: ListView(
            children: const <Widget>[
              Card(
                  elevation: 0.0,
                  child: Image(
                    image: AssetImage('assets/picc1.JPG'),
                  )
              ),
              Card(
                elevation: 0.0,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  title: Text('hustlers_deniitg',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text('IIT Guwahati'),
                  trailing: Icon(Icons.more_vert),
                ),

              ),
              Card(
                  child: Image(
                    image: AssetImage('assets/burj.jpg'),
                  )
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.favorite_border, color:Colors.black, size:27),
                    trailing: Icon(Icons.bookmark_border, color: Colors.black, size:27)
                ),
              ),
              Card(
                elevation: 0.0,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  title: Text('_zeus_is_here',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text('Pritam, Arijit Singh'),
                  trailing: Icon(Icons.more_vert),
                ),

              ),
              Card(
                  elevation: 0.0,
                  child: Image(
                    image: AssetImage('assets/house.jpg'),
                  )
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.favorite_border, color:Colors.black, size:27),
                    trailing: Icon(Icons.bookmark_border, color: Colors.black, size:27)
                ),
              ),
              Card(
                elevation: 0.0,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  title: Text('nahar_anish_2223',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text('Somewhere in the Woods'),
                  trailing: Icon(Icons.more_vert),
                ),

              ),
              Card(
                  elevation: 0.0,
                  child: Image(
                    image: AssetImage('assets/mark.jpg'),
                  )
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.favorite_border, color:Colors.black, size:27),
                    trailing: Icon(Icons.bookmark_border, color: Colors.black, size:27)
                ),
              ),
              Card(
                elevation: 0.0,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 32,
                  ),
                  title: Text('hustlers_deniitg',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text('IIT Guwahati'),
                  trailing: Icon(Icons.more_vert),
                ),

              ),
              Card(
                  elevation: 0.0,
                  child: Image(
                    image: AssetImage('assets/nature.jpg'),
                  )
              ),
              Card(
                child: ListTile(
                    leading: Icon(Icons.favorite_border, color:Colors.black, size:27),
                    trailing: Icon(Icons.bookmark_border, color: Colors.black, size:27)
                ),
              ),
            ],
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 32,
        //selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color:Colors.black),
            title: Text(''),
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                );
              },
            ),
            title: Text(''),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, color:Colors.black),
            title: Text(''),
            backgroundColor: Colors.yellow,
          ),
          //BottomNavigationBarItem(
            //icon: Icon(Icons.favorite_border_outlined, color:Colors.black),
            //title: Text(''),
            //backgroundColor: Colors.blue,
          //),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                );
              },
            ),
            title: Text(''),
            backgroundColor: Colors.blue,
          ),
          
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/person4.jpg')
            ),
            title: Text(''),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: (index) {
          setState(){
            _currentIndex = index;
          }
        },
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("ankit_02",style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        )),
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 32,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 32,
            ),

            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        //child: Image(
        //image: AssetImage('assets/picc1.JPG')
        //),
        child: ListView(
        children: const <Widget>[
          Card(
          elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person1.jpg')
              ),
              title: Text('Person 1',
              style: TextStyle(
              fontWeight: FontWeight.bold,
                  fontSize: 18,
            )),
              subtitle: Text('This is a dummy message',
                style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
          ),
        ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person2.jpg')
              ),
              title: Text('Person 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person3.jpg')
              ),
              title: Text('Person 3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person4.jpg')
              ),
              title: Text('Person 4',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person5.jpg')
              ),
              title: Text('Person 5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person6.jpg')
              ),
              title: Text('Person 6',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person7.jpg')
              ),
              title: Text('Person 7',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person8.jpg')
              ),
              title: Text('Person 8',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person2.jpg')
              ),
              title: Text('Person 9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
          Card(
            elevation: 0.0,
            child: ListTile(
              leading: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage('assets/person4.jpg')
              ),
              title: Text('Person 10',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              subtitle: Text('This is a dummy message',
                  style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.camera_alt_outlined, size: 32),
            ),
          ),
      ])
      )
    );
  }
}


class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("ankit_02",style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        )),
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 32,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 32,
            ),

            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        primary: false,
        //padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Image here"),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Image here'),
            color: Colors.teal[100],
          ),














        ],
      )
    );
  }
}
