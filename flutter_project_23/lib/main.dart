import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CricketPlayer(),
    );
  }
}

class CricketPlayer extends StatefulWidget {
  const CricketPlayer({super.key});

  @override
  State createState() => _CricketPlayer();
}

class _CricketPlayer extends State<CricketPlayer> {
  List imageList = [
      ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKxJ9KhWH-LgjQpLK2WugonvSX3RA2gAgC2Q&usqp=CAU",
      "https://th.bing.com/th?id=OVFT.-ghvWZg_dnfB-LGEXYkhMS&pid=News&w=300&h=186&c=14&rs=2&qlt=90&dpr=1.3",
      "https://th.bing.com/th?id=OSK.HEROjdrXO6MMLcPW5mlzqAjmRbFjZ34X4hgdg1Nfrw_3DwA&w=312&h=200&c=15&rs=2&o=6&oif=webp&dpr=1.3&pid=SANGAM",]
    ,
    ["https://th.bing.com/th/id/OIP.4zdiQmSe4-ANZcLEjghNuQHaJH?w=155&h=191&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "https://th.bing.com/th?id=ODL.6ee26fe3afd2626b769059beeb8256e3&w=150&h=196&c=10&rs=1&qlt=99&o=6&dpr=1.3&pid=13.1",
      "https://th.bing.com/th?id=OVFT.-ghvWZg_dnfB-LGEXYkhMS&pid=News&w=300&h=186&c=14&rs=2&qlt=90&dpr=1.3",]
    ,
    [
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/372600/372600.jpg",
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_800,q_50/lsci/db/PICTURES/CMS/371900/371912.jpg",
      "https://img.mensxp.com/media/content/2020/Aug/Fans-Advise-Yuzvendra-Chahal-To-Bulk-Up-For-His-Fiancee1200_5f43bea64cbfd.jpeg",
    ],
  ];

  List matchname = ["One day", "T-20", "Test-Match"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cricket Player"),
        backgroundColor: Color.fromARGB(255, 20, 203, 38),
      ),
      body: ListView.separated(
          itemCount: imageList.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              height: 20,
              width: 20,
              color: Colors.red,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Text(matchname[index]),
                ListView.builder(
                  physics: const ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  itemCount: imageList[index].length,
                  itemBuilder: (BuildContext context, int index1) {
                    return Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.all(10),
                      child: Image.network(imageList[index][index1]),
                    );
                  },
                ),
              ],
            );
          }),
    );
  }
}