import 'package:flutter/material.dart';

 class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   State<HomeScreen> createState() => _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen> {
   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
         length: 4,
         child: Scaffold(
           appBar: AppBar(
             title:const Text('WhatsApp'),
             bottom:const TabBar(
                 tabs: [
                   Tab(
                     child: Icon(Icons.camera_alt),
                   ),
                   Tab(
                     child: Text('Chats'),
                   ),
                   Tab(
                     child: Text('Status'),
                   ),
                   Tab(
                     child: Text('Calls'),
                   ),
                 ],
             ),
             actions:  [
               const   Icon(Icons.search),
               const  SizedBox(width: 10,),
               PopupMenuButton(
                 icon:const Icon(Icons.more_vert_sharp),
                   itemBuilder: (context) => const[
                     PopupMenuItem(
                       value: '1',
                         child: Text('New Group')
                     ),
                     PopupMenuItem(
                         value: '2',
                         child: Text('Settings')
                     ),
                     PopupMenuItem(
                         value: '3',
                         child: Text('Logout')
                     ),
                   ]
               ),
               SizedBox(width: 10,)
             ],
           ),
           body: TabBarView(
             children: [
           const  Center(
               child: Icon(Icons.camera_alt_rounded,size: 40,color: Colors.grey,),
             ),
             ListView.builder(
               itemCount: 12,
                 itemBuilder: (context , index){
                   return const ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                     ),
                     title: Text('Jhon wicked'),
                     subtitle: Text('yrrr jawab bhi do'),
                     trailing: Text('12:32 PM'),
                   );
                 }
             ),
               ListView.builder(
                   itemCount: 12,
                   itemBuilder: (context , index){
                     return  ListTile(
                       leading: Container(
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                               color:Colors.lightGreen,
                             width: 3
                           )
                         ),
                         child: const CircleAvatar(
                           backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                         ),
                       ),
                       title: Text('Jhon wicked'),
                       subtitle: Text('12m ago'),
                     );
                   }
               ),
               ListView.builder(
                   itemCount: 12,
                   itemBuilder: (context , index){
                     return  ListTile(
                       leading:const CircleAvatar(
                         backgroundImage: NetworkImage('https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                       ),
                       title: Text('Jhon wicked'),
                       subtitle: Text(index /2 == 0? 'You have missed audio call': 'You have missed video call'),
                       trailing:Icon(index /3 == 0? Icons.phone:Icons.video_call),
                     );
                   }
               ),
             ],
           ),
         ));
   }
 }
