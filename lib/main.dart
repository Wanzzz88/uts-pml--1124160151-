import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title:'profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 67, 224, 28)),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: profile()
    );
  }
}
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 213, 10, 57),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('tidak ada')),
              );
            },
            icon: Icon(Icons.search),
            tooltip: 'search',
          )
        ]
      ),
      body: SingleChildScrollView(child: Padding(padding: EdgeInsets.all(25),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 25,
              child: Icon(Icons.person),
            ),
            SizedBox( height: 1,),
            Text('ridwan'),
            Text('1124160151'),
          ],
        ),
      ),
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('data')));
      },
      child: Icon(Icons.add),
      
      ),
    );
  }

}