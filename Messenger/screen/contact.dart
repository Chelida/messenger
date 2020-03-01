import 'package:domiflutter/whatsapp/providers/data.dart';

import '../widget/appbarM.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appbarM("Contacts", Icons.perm_contact_calendar, Icons.person_add),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 25,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(100)),
                    child: Text("STORIES (8)",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 16,
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: Text("ACTIFS (0)"),
                  ),
                ],
              ),
            ),
           
           
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 4, crossAxisCount: 2),
              itemCount: userData.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
                            image: AssetImage(
                              userData[i]["photo"],
                            ),
                            fit: BoxFit.cover)),
                    height: MediaQuery.of(context).size.height / 2.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            child: (i==0)?
                            CircleAvatar(
                            child: Icon(Icons.add,color: Colors.black,),
                              backgroundColor: Colors.white,
                            ):CircleAvatar(
                              backgroundImage: AssetImage(userData[i]["profil"]),
                              backgroundColor: Colors.white,
                            ),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(100),
                              border: (i==0)? Border.all(width: 0,
                                  color: Colors.transparent):
                                  Border.all(width: 2,
                                  color: Color.fromRGBO(0, 132, 255, 1)),
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              child:(i==0)? Text(
                                "Ajouter a votre Story",style: TextStyle(color: Colors.white,fontSize: 17),
                              ): Text(
                                userData[i]["name"],style: TextStyle(color: Colors.white,fontSize: 17),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
