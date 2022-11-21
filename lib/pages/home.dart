import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List tempo = [
    'https://imgs.search.brave.com/dKdtLXT1HMdCM3I4SIONZ0aXQVCmqGnuaVTKSg-JhGs/rs:fit:320:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5k/ZXlXUkttdzVJdzJ6/U3V4SEZsa3pRSGFL/OSZwaWQ9QXBp',
    'https://imgs.search.brave.com/gRy97D9WjRR3hJp3MbkgjhN9UGzpEyF4oGSIhcV42Bc/rs:fit:249:225:1/g:ce/aHR0cHM6Ly90c2Ux/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5PamRLcm5P/YmFxZEUydzByMUY5/VFFBSGFPRyZwaWQ9/QXBp',
    'https://imgs.search.brave.com/0qS9TNynrz3KF9OvomSBj2dg7g7aFRjBTVoE2oxGFqQ/rs:fit:320:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5P/eVhUaVJjUWFRZi1v/ajNNOV9aX3lnSGFL/LSZwaWQ9QXBp',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 63, 63),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height / 1.553,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://imgs.search.brave.com/mN7k2TYpySFdViFFRvu27fbc73scGSnC2uLN7s0OPmc/rs:fit:1200:1200:1/g:ce/aHR0cDovL3d3dy5h/cHBvY2FseXBzZS5j/by93cC1jb250ZW50/L3VwbG9hZHMvMjAx/OS8wMS9TdHJhbmdl/ci1UaGluZ3MtU2Vh/c29uLTMtTmV3LVll/YXItVGVhc2VyLVBv/c3Rlci5qcGc',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Color.fromARGB(255, 63, 63, 63),
                          Colors.transparent
                        ])),
                  ),
                ),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  bottom: 10,
                  child: Center(
                      child: Column(
                    children: [
                      const Text(
                        'STRANGER\n   THINGS',
                        style: TextStyle(
                            fontSize: 46,
                            color: Colors.white,
                            fontFamily: 'Times new roman',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Ominus',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            minRadius: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Exiting',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            minRadius: 5,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Teen',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                'My List',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          MaterialButton(
                              onPressed: (() => print('')),
                              color: Colors.white,
                              elevation: 2,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                children: const [
                                  Icon(Icons.play_arrow, size: 25),
                                  Text(
                                    'Play',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              )),
                          Column(
                            children: const [
                              Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                'Info',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.network(
                          'https://cdn.iconscout.com/icon/free/png-128/netflix-3521600-2945044.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      _navitems('Tv Shows'),
                      _navitems('Movies'),
                      _navitems('My List'),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                'Previews',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemExtent: 130,
                shrinkWrap: true,
                itemBuilder: ((context, index) => _previweitems(index, index)),
                itemCount: 100,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                'Popular on Netflix',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) => _popularitem(tempo[index])),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(height: 35,),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                'Trending Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) => _popularitem(tempo[index])),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
              ),
            ),

          ],
        ),
      ),
    ));
  }

//navigation items
  Widget _navitems(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 19),
    );
  }

//preview items section
  Widget _previweitems(int ind, int ind1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          maxRadius: 60,
          backgroundImage: NetworkImage('https://imgs.search.brave.com/GDeExXzSfFSpiT0p1c2Sz1TdZAFYIqQV65z91Q-qUIQ/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/ZWdvT0ZVUUF3NUJa/dlUtT0IxV1ZnSGFI/YSZwaWQ9QXBp'),          
        )
      ],
    );
  }

  Widget _popularitem(String link) {
    return Container(
      margin: EdgeInsets.only(left: 5, bottom: 5),
      child: Image.network(link,fit: BoxFit.cover,),
      height: 300,
      width: 130,
      decoration: BoxDecoration(color: Colors.white),
    
    );
  }
}
