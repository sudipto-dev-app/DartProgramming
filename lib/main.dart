import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 06',
      color: Colors.white,
      home: Home(),

    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  List<String>image=[
    'https://res.cloudinary.com/petrescue/image/upload/b_auto:predominant,f_auto,c_pad,h_638,w_638/v1683545741/l9xgfhc08kg5oxaootxb.jpg',
    'https://as2.ftcdn.net/v2/jpg/00/97/58/97/1000_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/36/99/22/1000_F_236992283_sNOxCVQeFLd5pdqaKGh8DRGMZy7P4XKm.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/27/76/44/1000_F_227764486_nAcFB4FnDTiyk0WLgKBXArOsqaUCuk7X.jpg',
    'https://as1.ftcdn.net/v2/jpg/06/05/37/40/1000_F_605374009_hEUHatmKPzuHTIacg7rLneAgnLHUgegM.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/11/25/91/1000_F_211259199_n0LBMIpx3FGIsKjqQHt7g8u3pjH2i9OL.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/03/26/39/1000_F_203263902_cJ2ShGURsrS5NYeUe4EQzGAAEstFA3jd.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text('Photo Gallery',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10),
              child: Text('Welcome to My Photo Gallery!',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),

            ),
            Padding(
              padding:  EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for photos',
                  border: OutlineInputBorder(gapPadding: 10,borderSide: BorderSide(color: Colors.white38)),
                ),
              ),
            ),
            GridView.builder(

              padding:EdgeInsets.all(15),
              physics:  NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context,index){
                return  GridTile(
                  footer: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(2),
                    child: Center(
                      child: Text('Photo $index',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('GridView Image $index clicked.'),
                        ),
                      );
                    },
                    child: SizedBox(
                      height: 130,
                      child: Image.network(image[index],fit: BoxFit.cover,),
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(image[index]),

                  ),
                  title: Text('Photo ${index+1}'),
                  subtitle: Text('Description for Photo ${index+1}'),
                );
              },
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              shape: CircleBorder(
              ) ,
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photos Uploaded Successfully!'),
                  ),
                );
              },
              child:Icon(Icons.upload, weight: 12,color: Colors.white,),
            )

          ],
        ),

      ),

    );
  }
}
