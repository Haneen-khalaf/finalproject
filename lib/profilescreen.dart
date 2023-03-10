
import 'package:flutter/material.dart';
import 'appdrawer.dart';
import 'homescreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, }) : super(key: key);


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor:Colors.white ,
        appBar: AppBar(
          centerTitle: true,

          elevation: 10,
          backgroundColor: Colors.green,
          title: Text(
            "الصفحة الشخصية ",
          ),
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:40.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                 backgroundColor: Colors.green,
                  child: Icon(Icons.person,size:130,color: Colors.grey[200],),
                ),
                SizedBox(height:10,),
                Text('User',style: TextStyle(fontSize: 30),),
                Divider(color: Colors.green,endIndent: 50,indent: 50,thickness: 2,),
                Column(
                  children: [
                    ListTile(
                     leading:const Icon(Icons.phone_iphone,color: Colors.green,size: 40,),
                      title:const Text('رقم الهاتف',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      subtitle: Text('+962'.toString(),
                          style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
                    ),
                   const Divider(color: Colors.green,endIndent: 200,indent: 60,thickness: 1,),

                    ListTile(
                      leading:const Icon(Icons.email_outlined,color: Colors.green,size: 40,),
                      title:const Text('البريد الالكتروني',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      subtitle: Text('user@gmail.com',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
                    ),

                    Divider(color: Colors.green,endIndent:  200,indent: 60,thickness: 1),
                    ListTile(
                      leading: Icon(Icons.location_on,color: Colors.green,size: 40,),
                      title: Text('العنوان',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      subtitle: Text('Amman-Jordan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => ProfileScreen()));
                    },
                    icon: Icon(Icons.person,color: Colors.green,)
                ),
                IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) => HomeScreen()));
                    },
                    icon: Icon(Icons.home,color: Colors.green,)),
                IconButton(
                  onPressed: (){

                  },
                  icon: Icon(Icons.directions_run,color: Colors.green,),),

                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.stadium,color: Colors.green,),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
