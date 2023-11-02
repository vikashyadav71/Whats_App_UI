import 'package:flutter/material.dart';

class Utilities {
  Widget imagecompo(String url, String name) {
    return Column(
      children: [
        CircleAvatar(
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                height: 100,
                width: 200,
              ),
            )),
        const SizedBox(
          height: 8,
        ),
        Text(name),
      ],
    );
  }

  Widget containerwithImage(String name) {
    return Center(
        child: Card(
      elevation: 3,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                    radius: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7WhEmud_rzK4vr_j_StigRXX1eU5uOJFeVA&usqp=CAU',
                        fit: BoxFit.cover,
                        height: 40,
                        width: 80,
                      ),
                    )),
                const Padding(
                    padding:
                        EdgeInsets.only(bottom: 3, right: 0, left: 17, top: 20),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.verified_rounded,
                        color: Color(0xff00C853),
                      ),
                    ))
              ],
            ),
            Text(name)
          ],
        ),
      ),
    ));
  }

  Widget listtile(String title, bool flag, String url) {
    return ListTile(
      title: Text(title.toString(),
          style: flag
              ? const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w700)
              : const TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.w700)),
      subtitle: Row(
        children: [
          flag
              ? const Icon(
                  Icons.call_made_rounded,
                  color: Colors.green,
                )
              : const Icon(
                  Icons.call_received,
                  color: Colors.red,
                ),
          const Text('Yesterday,18:30'),
        ],
      ),
      leading: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.network(
            url,
            fit: BoxFit.fill,
            height: 100,
            width: 100,
          ),
        ),
      ),
      trailing:  const Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }

  Widget listtileforchat(String name, String subtitle, String url,bool flag) {
    return ListTile(
      title: Text(name),
      subtitle: Row(
        children: [
         flag?Icon(
            Icons.check,
            color: Colors.grey,
          ):Icon(Icons.done_all,color: Colors.blue,),
          Text(subtitle),
        ],
      ),
      leading: CircleAvatar(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60),
          child: Image.network(
            url,
            fit: BoxFit.fill,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
