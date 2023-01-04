import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
int photoindex = 0;


List<String> slider = [
  'assets/images/slider/slider1.jpg',
  'assets/images/slider/slider2.jpg',
  'assets/images/slider/slider3.jpg',

];

List<String> sub = [
  'assets/images/sub/sub1.jpg',
  'assets/images/sub/sub2.jpg',
  'assets/images/sub/sub3.jpg',
  'assets/images/sub/sub4.jpg',
  'assets/images/sub/sub5.jpg',
  'assets/images/sub/sub6.jpg',
  'assets/images/sub/sub7.jpg',
  'assets/images/sub/sub8.jpg',
  'assets/images/sub/sub9.jpg',
  'assets/images/sub/sub10.jpg',
];

List<String> subtwo = [
  'assets/images/subtwo/subtwo1.jpg',
  'assets/images/subtwo/subtwo2.jpg',
  'assets/images/subtwo/subtwo3.jpg',
  'assets/images/subtwo/subtwo4.jpg',
  'assets/images/subtwo/subtwo5.jpg',
  'assets/images/subtwo/subtwo7.jpg',
  'assets/images/subtwo/subtwo8.jpg',
  'assets/images/subtwo/subtwo9.jpg',
];



class _AnasayfaState extends State<Anasayfa> {
  int secilenIndex = 0;

  @override
  void initState() {
    super.initState();

  }
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black12,
        body: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 190.0),
                          child: SizedBox(width: 110,
                            child: IconButton(onPressed: (){
                              debugPrint("Anasayfa buton");
                            },
                              icon:Image.asset("assets/icons/prime_video.png"),iconSize:15,),
                          ),
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){
                      debugPrint("Yayın buton");
                    },
                      icon:Image.asset("assets/icons/stream.png"),iconSize: 15,
                    ),
                    IconButton(onPressed: (){
                      debugPrint("User buton");
                    },
                      icon:Image.asset("assets/icons/user.png"),iconSize: 15,),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal:20),
                      child: TextButton(onPressed: (){},
                        child: Text("Tümü",style: TextStyle(color: Colors.black),),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))// butona kıvrım özelliğini ekledik.
                           ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal:10),
                      child: TextButton(onPressed: (){},
                        child: Text("Filmler",style: TextStyle(color: Colors.white),),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))// butona kıvrım özelliğini ekledik.
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0,horizontal:10),
                      child: TextButton(onPressed: (){},
                        child: Text("TV dizileri",style: TextStyle(color: Colors.white),),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))// butona kıvrım özelliğini ekledik.
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Column(
              children: [
                Container(
                  height: 180,
                  child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: slider.length,
                      pageSnapping: true,
                      itemBuilder:(context,int index){
                        return Container(
                          height: 180.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:AssetImage(slider[index],
                              ),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                                color: Colors.grey,
                                width: 2.0,
                                style: BorderStyle.none),
                              borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: slider.length,
                    decorator:const DotsDecorator(
                      color: Colors.grey, // Inactive color
                      activeColor: Colors.white,
                      size: Size.square(5),
                    ),
                  )
                ],
              ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 230,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10,right: 0,bottom: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Prime ", style:TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                              const Text("- Amazon Orjinal ve Özel İçerikler >", style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 180,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: sub.length,
                                  itemBuilder:(context,int index){
                                    return Container(
                                    width:140 ,
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 20))),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: Image.asset(sub[index],

                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    );
                                  }
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 170,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 0,right: 0,bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Prime ", style:TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                              const Text("- Önerilen Filmler >", style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 120,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: subtwo.length,
                                    itemBuilder:(context,int index){
                                      return Container(
                                        width:200 ,
                                        child: Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 20))),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8.0),
                                            child: Image.asset(subtwo[index],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 170,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 0,right: 0,bottom: 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Prime ", style:TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                              const Text("- Türk Filmleri ve Dizileri >", style:TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold) ,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 120,
                                child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: subtwo.length,
                                    itemBuilder:( context,int index){
                                      return Container(
                                        width:200 ,
                                        child: Card(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 20))),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8.0),
                                            child: Image.asset(subtwo[index],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ),
            ),



          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Anasayfa"),
            BottomNavigationBarItem(icon: Icon(Icons.file_download_outlined),label: "İndirilenler"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Bul"),
          ],
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: secilenIndex,
          onTap: (index){
            setState(() {
              secilenIndex=index;
            });
          },
        ),

    );
  }
}
