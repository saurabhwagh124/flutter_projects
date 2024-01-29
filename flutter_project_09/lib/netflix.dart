import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});
  @override
  State<Assignment1> createState() => _Assignment1();
}

class _Assignment1 extends State<Assignment1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Netflex"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MOVIES",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                        height: 300,
                      ),
                      SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                        height: 300,
                      ),
                      SizedBox(
                        height: 300,
                        width: 10,
                      ),
                      Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                        height: 300,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "WEBSERIES",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(children: [
                        SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                          height: 250,
                        ),
                        SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          height: 250,
                        ),
                        SizedBox(
                          height: 250,
                          width: 10,
                        ),
                        Image.network(
                          "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                          height: 250,
                        ),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "WEBSERIES",
                  style: TextStyle(color: Colors.black, fontSize: 19),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Row(children: [
                        SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                          height: 200,
                        ),
                        SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                          height: 200,
                        ),
                        SizedBox(
                          height: 200,
                          width: 10,
                        ),
                        Image.network(
                          "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                          height: 200,
                        ),
                      ]),
                    ],
                  ),
                ),
              ]),
        ));
  }
}