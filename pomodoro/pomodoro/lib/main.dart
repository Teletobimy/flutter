import 'package:flutter/material.dart';

//import 'package:pomodoro/screens/home_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           backgroundColor: const Color(0xFFE7626C),
//         ),
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(
//             color: Color.fromARGB(255, 21, 51, 202),
//           ),
//         ),
//         cardColor: const Color.fromARGB(255, 131, 108, 49),
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

//runApp은 위젯 값을 가져야한다(argument = widget)
//main(), reunApp() 함수의 이름은 소문자로 시작
//MyApp() 클래스라는 뜻 camel case
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //material import로 사용 가능한 MaterialApp 기능 시작
      title: 'First app',

      theme: ThemeData(
        primarySwatch: Colors.blue, // 앱에서 사용할 대표 견본색깔
      ),
      //home - 앱의 가장 기본 경로 home
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold혼자 해낼 수 있도록 발판을 만들다 = 도화지
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First app'),
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: const Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello'),
          ],
        ),
      ),

      // const Center(
      //   //body에서 가운데 주겠다.

      //   child: Column(
      //     //세로에 두는 것
      //     children: [
      //       Text('Hello1'),
      //       Text('Hello2'),
      //       Text('Hello3'),
      //     ],
      //   ),
      // ),
    );
  }
}
