import 'package:flutter/material.dart';
import 'package:whats_app_ui/utils.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Row(children: [
        Padding(padding: EdgeInsets.only(left: 15,top:17,bottom: 22,right: 0),
          child: CircleAvatar(
            backgroundColor: Color(0Xff009688),
            radius: 25,
            child: Icon(Icons.link),
          ),
        ),
       Expanded(child: Padding(padding: EdgeInsets.only(bottom:14,left:0),
         child: ListTile(title: Text('Create call link',

         style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),

         subtitle: Text('Share a link for your whatsApp call ',
         style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize: 15),),),
       ))
      ],),
      const Padding(padding: EdgeInsets.only(left: 15,bottom: 10), child:Text('Recent',style:TextStyle(fontSize: 17,fontWeight: FontWeight.w700),)),
        Expanded(
          child: ListView(children: [
   Utilities().listtile('Seema Di',
      false,
       'https://cdn.pixabay.com/photo/2019/11/11/17/42/indian-4619020_640.jpg')
          ],
          ),

        ),
        Expanded(
          child: ListView(children: [
            Utilities().listtile('Naarendra Meena',
                true,
                'https://cdn.pixabay.com/photo/2023/09/02/04/49/man-8228179_640.jpg')
          ],
          ),

        ),
        Expanded(
          child: ListView(children: [
            Utilities().listtile('Rahul Rundala',
                false,
                'https://cdn.pixabay.com/photo/2017/11/26/01/05/bollywood-2977939_640.png')
          ],
          ),

        ),
        Expanded(
          child: ListView(children: [
            Utilities().listtile('Surendra Bhai',
                true,
                'https://cdn.pixabay.com/photo/2019/11/11/17/42/indian-4619020_640.jpg')
          ],
          ),

        ),
        Expanded(
          child: ListView(children: [
            Utilities().listtile('Raju',
                true,
                'https://cdn.pixabay.com/photo/2022/10/26/08/56/bollywood-7547855_640.png')
          ],
          ),

        )
    ],);
  }
}
