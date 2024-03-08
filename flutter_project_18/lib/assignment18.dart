import 'package:flutter/material.dart';

class Assignment18 extends StatefulWidget{
  const Assignment18({super.key});

  State<Assignment18> createState() => _Assignment18();
}

class _Assignment18 extends State<Assignment18>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("BookMyShow",style: TextStyle(color: Color.fromARGB(255, 242, 237, 237),fontFamily: "Oswald", fontWeight: FontWeight.w600),),
        backgroundColor: Colors.red[500],
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.search_sharp),
            tooltip: "Search anything"
          ),
          IconButton(onPressed: (){},
           icon: const Icon(Icons.notifications_none_sharp),
           tooltip: "Notifications",
           ),
          const Icon(Icons.qr_code_scanner),
        ],
      ),
      body:ListView(
        shrinkWrap: true,
          children:[ Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton.outlined(onPressed: (){},
                       icon: const Icon(Icons.movie_creation_sharp),
                       iconSize: 45,
                       tooltip: "Movies",
                       ),
                       IconButton.outlined(onPressed: (){},
                       icon: const Icon(Icons.mic_sharp),
                       iconSize: 45,
                       tooltip: "Stand-ups",
                       ),
                       IconButton.outlined(onPressed: (){},
                       icon: const Icon(Icons.music_note),
                       iconSize: 45,
                       tooltip: "Music Shows",
                       ),
                       IconButton.outlined(onPressed: (){},
                       icon: const Icon(Icons.theater_comedy),
                       iconSize: 45,
                       tooltip: "Theatre & Plays",
                       ),
                       IconButton.outlined(onPressed: (){}, 
                       icon: const Icon(Icons.directions_bike),
                       iconSize: 45,
                       tooltip: "Sports",
                       )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MOVIES",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://i.pinimg.com/236x/cc/61/68/cc61688a82c5ce7a5de92e11cd85646f.jpg",
                        height: 300,
                      ),
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@like_202006280402.png,lx-24,ly-617,w-29,l-end:l-text,ie-NjBLIExpa2Vz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00383266-szpbxycebs-portrait.jpg",
                        height: 300,
                      ),
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OS42LzEwICAxMzAuOEsgVm90ZXM%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00363787-vvnpakrgls-portrait.jpg",
                        height: 300,
                      ),
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OC4zLzEwICAxLjNLIFZvdGVz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00370265-zznydugymg-portrait.jpg",
                        height: 300,
                      ),
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-Ny4yLzEwICAxLjZLIFZvdGVz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00371535-xebtsklhsy-portrait.jpg",
                        height: 300,
                      ),
                      const SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203010609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OS41LzEwICAxLjdLIFZvdGVz,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00378248-arxxtajgyk-portrait.jpg",
                        height: 300,
                      ),
                      
                      
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Stand-ups",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(children: [
                       const  SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://i.pinimg.com/236x/8e/33/90/8e3390cd9386ed874da2c61b42be3a90.jpg",
                          height: 250,
                        ),
                        const SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://i.pinimg.com/236x/7f/ab/02/7fab02469eaeb02646b476bb8e04b079.jpg",
                          height: 250,
                        ),
                        const SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://i.pinimg.com/236x/59/49/17/5949178f95a21b184629844d33554d0f.jpg",
                          height: 250,
                        ),
                      ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 30,
                  width: 200,
                  child: Text("Advertisment", style: TextStyle(fontSize: 19)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:Row(
                        children: [
                        Container(
                        height: 100,
                        width: 200,
                        color: Colors.red[300],
                        child: Image.asset("assets/ads1.jpg"),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                        height: 100,
                        width: 200,
                        color: Colors.red[300],
                        child: Image.asset("assets/ads2.jpg"),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                        height: 100,
                        width: 200,
                        color: Colors.red[300],
                        child: Image.asset("assets/ads3.jpg"),
                        ),
                        const SizedBox(width: 10,),
                        ElevatedButton(
                        onPressed: (){}, 
                        child: const Text("Report?")
                        ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Movies-to-rent",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                        children: [
                        const SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                        "https://i.pinimg.com/236x/94/e3/64/94e3640ac360717de88fc9cbe3deaa15.jpg",
                        height: 200,
                      ),
                      const SizedBox(
                        height: 200,
                        width: 10,
                      ),
                      Image.network(
                        "https://i.pinimg.com/236x/ad/7f/82/ad7f825e9c74698a9dd7ab390071a5da.jpg",
                        height: 200,
                      ),
                      const SizedBox(
                        height: 200,
                        width: 10,
                      ),
                      Image.network(
                        "https://i.pinimg.com/236x/bd/34/eb/bd34eb90ee4a45e953c8a75a06f6f396.jpg",
                        height: 200,
                      ),
                      const SizedBox(
                        height: 200,
                        width: 10,
                      ),
                      Image.network(
                        "https://i.pinimg.com/236x/fa/e5/f0/fae5f0013ce88dc991038f804a70183f.jpg",
                        height: 200,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                        Image.network(
                          "https://i.pinimg.com/236x/88/48/4b/88484b6fc3cbb4504da1a17a25ce7421.jpg",
                          height: 200,
                        ),
                        const SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                          "https://i.pinimg.com/236x/10/17/d6/1017d65e8ce5f87675b63e8667053e98.jpg",
                          height: 200,
                        ),
                        const SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                          "https://i.pinimg.com/236x/ed/45/16/ed4516338fa5df348c13a2a7ce1e7998.jpg",
                          height: 200,
                        ),
                ]
              ),
            ),
          ]
        ),
      );
    }
  }