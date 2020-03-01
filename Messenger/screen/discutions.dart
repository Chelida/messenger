import 'package:domiflutter/whatsapp/providers/data.dart';
import 'package:flutter/material.dart';
import '../widget/appbarM.dart';
import '../widget/story.dart';

class Discutions extends StatelessWidget {
  @override

List<Widget> listData() {
    return userData
        .map(
          (item) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item["photo"]),
              maxRadius: 28,
            ),
            title: Text(item["name"]),
            subtitle: Row(
              children: <Widget>[
                Container(
                  width: 150,
                  child:
                  Text(item["message"],overflow: TextOverflow.ellipsis,), 
                ),
                Text(item["date"]),
              ],
            ),
            trailing:Icon(Icons.check_circle) ,

          ),
        ).toList();
  }
  

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarM("Discussions", Icons.camera_alt, Icons.edit),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(100)),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 15,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Rechercher",
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userData.length,
                      itemBuilder: (context, i) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border:(i % 2 == 0)?
                                          
                                          
                                           Border.all(
                                              width: 0,
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1)):Border.all(
                                              width: 3,
                                              color: Color.fromRGBO(
                                                  0, 132, 255, 1))),
                                      child: ClipOval(
                                        child: (i == 0)
                                            ? IconButton(
                                                icon: Icon(
                                                  Icons.add,
                                                  size: 30,
                                                  color: Color.fromRGBO(
                                                      195, 195, 195, 1),
                                                ),
                                                onPressed: () {})
                                            : Image.asset(userData[i]["photo"],
                                                
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 10,
                                      child:
                                      
                                       Container(
                                        width: 10,
                                        height: 10,
                                        decoration:(i % 2 == 0) ?
                                        
                                        
                                         BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100)):
                                                BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(100))
                                      ),
                                    ),
                                  ],
                                ),
                                Text(userData[i]["name"]),
                              ],
                            ),
                          ),
                         
                        );
                      },
                      
                    )),
                    
              ),
               ...listData (),
            ],
          ),
        ),
      ),
      
    );
  }
}
