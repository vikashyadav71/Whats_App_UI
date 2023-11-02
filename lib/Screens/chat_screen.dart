import 'package:flutter/material.dart';
import 'package:whats_app_ui/utils.dart';

class Chat{
  List<String> name=['vikash','Seema Yadav','Mintu Di','Dr.Bhai','Meena Di','Shivani','Manish','Neeraj'];
  List<String>messages=['aa gaya','nahi','tu bata','','okay','yaar bhej de','good night ','say her','done','i will'];
  List<String>url=['https://cdn.pixabay.com/photo/2016/01/06/23/04/thinking-1125154_640.jpg',
    'https://cdn.pixabay.com/photo/2018/05/16/07/19/india-3405041_640.png',

  'https://cdn.pixabay.com/photo/2023/09/11/03/29/ai-generated-8245983_640.jpg',
    'https://cdn.pixabay.com/photo/2020/12/11/21/02/mountain-5823822_640.jpg',
  'https://cdn.pixabay.com/photo/2021/02/18/16/25/wedding-6027624_640.jpg',
    'https://cdn.pixabay.com/photo/2021/08/03/21/20/woman-6520542_640.jpg',
    'https://cdn.pixabay.com/photo/2015/11/08/20/23/sea-1034166_640.jpg'
    'https://cdn.pixabay.com/photo/2016/08/30/02/01/friends-1629658_640.jpg'
        'https://cdn.pixabay.com/photo/2015/11/08/20/23/sea-1034166_640.jpg'

  ];

  Widget chat(BuildContext context){

    return ListView.builder(itemCount: 7,
        itemBuilder: (context,item){
      return Utilities().listtileforchat(name[item], messages[item], url[item],item%2==0);
   });
    
  }
}

