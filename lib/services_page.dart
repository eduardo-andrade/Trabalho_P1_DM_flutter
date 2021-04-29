import 'package:flutter/material.dart';
import 'package:trabalho/drawer_widget.dart';

class ServicesPage extends StatefulWidget {
  @override
  State<ServicesPage> createState() {
    return ServicesPageState();
  }
}

class ServicesList {
  String imageUrl;
  String name;

  ServicesList({this.imageUrl, this.name});
}

List services = [
  ServicesList(
      imageUrl:
          "https://i0.wp.com/blog.lucianoreis.com/wp-content/uploads/2020/03/Computer-Repair-01.jpg?fit=1000%2C667&ssl=1",
      name: "Consertos de computadores"),
  ServicesList(
      imageUrl:
          "https://1.bp.blogspot.com/-rmhkD5R3XoM/XQPr8pPIhoI/AAAAAAAAOBY/4tnA9Np-GeQomyfbP-pdk05ioFnAR3FwwCEwYBhgL/s400/curso-manuten%25C3%25A7%25C3%25A3o-de-celular.jpg",
      name: "Consertos de celulares"),
  ServicesList(
      imageUrl:
          "https://1.bp.blogspot.com/-rmhkD5R3XoM/XQPr8pPIhoI/AAAAAAAAOBY/4tnA9Np-GeQomyfbP-pdk05ioFnAR3FwwCEwYBhgL/s400/curso-manuten%25C3%25A7%25C3%25A3o-de-celular.jpg",
      name: "Consertos de tablets"),
  ServicesList(
      imageUrl:
          "https://1.bp.blogspot.com/-rmhkD5R3XoM/XQPr8pPIhoI/AAAAAAAAOBY/4tnA9Np-GeQomyfbP-pdk05ioFnAR3FwwCEwYBhgL/s400/curso-manuten%25C3%25A7%25C3%25A3o-de-celular.jpg",
      name: "Consertos de notebooks"),
];

class ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Serviços')),
        drawer: CustomDrawer(),
        body: Container(
          child: ListView.separated(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            itemCount: services.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(services[index].imageUrl),
                title: Text(services[index].name),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.lightBlueAccent])),
        ));
  }
}
