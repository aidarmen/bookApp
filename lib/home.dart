
import 'package:book_app/aboutPage.dart';
import 'package:book_app/detail.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  



  @override
  Widget build(BuildContext context) {
    //app bar
    // final appBar = AppBar(
    //   elevation: .5,
    //   leading: IconButton(
    //     icon: Icon(Icons.menu),
    //     onPressed: () {
    //     },
    //   ),
      
      
    //   title: Text('Design Books'),
    //   actions: <Widget>[
    //     IconButton(
    //       icon: Icon(Icons.search),
    //       onPressed: () {},
    //     )
    //   ],
    // );

    ///create book tile hero
    createTile(DocumentSnapshot  book) => Hero(
          tag: book['title'],
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.blueGrey.shade900,
            
            child: InkWell(
              onTap: () {
                
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                       
                        builder: (BuildContext context) =>  Detail(book),
                        )
                        );
              },
              
              child: Image.network(book["image"]),
               
            ),
          ),
        );

    ///create book grid tiles
    // final grid = CustomScrollView(
    //   primary: false,
    //   slivers: <Widget>[
    //     SliverPadding(
    //       padding: EdgeInsets.all(16.0),
    //       sliver: SliverGrid.count(
    //         childAspectRatio: 2 / 3,
    //         crossAxisCount: 3,
    //         mainAxisSpacing: 20.0,
    //         crossAxisSpacing: 20.0,
    //         // children: books.map((book) => createTile(book)).toList(),

    //       ),
          
    //     )
    //   ],
    // );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text("Books")),
      
      
      body: StreamBuilder<QuerySnapshot>(
        
        stream: Firestore.instance.collection('books').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return new Text('Loading...');
          return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            // children: books.map((book) => createTile(book)).toList(),
            children: snapshot.data.documents.map((DocumentSnapshot document) {
              return createTile(document);
            }).toList(),

          ),
          
        )
      ],
    ) ;
        },
      ),
      



      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Name Here'),
              accountEmail: new Text('forme@test.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              title: new Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              },
            ),
          ],
        ),
      ),

      
    );



   
  }
}
