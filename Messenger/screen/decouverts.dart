import '../../whatsapp/providers/data.dart';
import 'package:flutter/material.dart';
import '../widget/appbarM.dart';

class Decouverts extends StatelessWidget {
  List<Widget> listData() {
    return userData
        .map(
          (item) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item["photo"]),
              maxRadius: 28,
            ),
            title: Text(
              item["name"],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Container(
              width: 250,
              child: Text(
                item["message"],
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appbarM("Decouverte", Icons.perm_contact_calendar, Icons.person_add),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Text("ENTREPRISES",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Text("JEUX"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 26),
                child: Text(
                  "Populaires",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ...listData(),
            ],
          ),
        ),
      ),
    );
  }
}
