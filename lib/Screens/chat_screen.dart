import 'package:flutter/material.dart';

class Chat{
  Widget chat(BuildContext context){

    return ListView.builder(itemCount: 8,
        itemBuilder: (context,item){
      return ListTile(title: const Text('Srk'),
       subtitle: const Row(
         children: [Icon(Icons.check,color: Colors.grey,),
           Text('Sorry please  Shedule for Tom'),
         ],
       ),
       leading: CircleAvatar(child: ClipRRect(borderRadius: BorderRadius.circular(60),child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7WhEmud_rzK4vr_j_StigRXX1eU5uOJFeVA&usqp=CAU',
       fit: BoxFit.fill,
       height:100,
       width: 100,),),
       ),
     );
   });
    
  }
}

