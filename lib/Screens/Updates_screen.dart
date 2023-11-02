import 'package:flutter/material.dart';
import 'package:whats_app_ui/utils.dart';

class Updates {
  Widget updates(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: Text(
                'Status',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 279,
            ),
            InkWell(
              child: Icon(Icons.more_vert_rounded),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                          radius: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2023/05/24/16/40/ai-generated-8015305_640.png',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 200,
                            ),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(
                              bottom: 3, right: 0, left: 45, top: 50),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add_circle,
                              color: Color(0xff00C853),
                              size: 30,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text('My status')
                ],
              ),
              const SizedBox(
                width: 13,
              ),
              Utilities().imagecompo(
                  'https://cdn.pixabay.com/photo/2017/06/18/14/47/bindi-2416039_640.jpg',
                  'Aleina uyha'),
              const SizedBox(
                width: 13,
              ),
              Utilities().imagecompo(
                  'https://cdn.pixabay.com/photo/2022/02/26/16/18/actor-7035992_640.jpg',
                  'Shanshah'),
              const SizedBox(
                width: 13,
              ),
              Utilities().imagecompo(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN-D8SQZ-6mYfBCbw1h6HtnCPWWsk17HLwLA&usqp=CAU',
                  'Ganjewala'),
            ],
          ),
        ),
        const Divider(
          height: 50,
          thickness: 0.8,
          color: Colors.black26,
        ),
        const SizedBox(
          height: 2,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Channels',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 260,
                ),
                Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.black26,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    radius: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2023/09/03/15/15/dark-eyed-junco-8230875_640.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 200,
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'OFFICIAL FLUTTER',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'राम राम सा',
                  style: TextStyle(color: Colors.black45),
                )),
            const SizedBox(
              height: 10,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '26/10/23',
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                )),
            const Divider(
              height: 20,
              thickness: 0.8,
              color: Colors.black26,
            ),
             const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Find Channels',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 231,),
                Text('See all',
                style:TextStyle(color: Color(0Xff009688),
                fontWeight:FontWeight.bold),),
                Icon(Icons.chevron_right,color: Color(0Xff009688),)
              ],

            ),
            Row(
              children: [
                const SizedBox(width: 10,),
                Utilities().containerwithImage('Aslisona'),
              const SizedBox(width: 10,), Utilities().containerwithImage('Deewane'),
              ],
            ),
          ],
        )
      ],
    );
  }
}
