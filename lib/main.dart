// import 'dart:html';
// import 'dart:html';
import 'dart:ui';

import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    // items: List<String>.generate(10000, (i) => "Item $i"),
  ));
}

//【レス】アプリ全体＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//【フル＿ウィジェット＿ビュー】ーーーーーーーーーーーーー
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



//【フル＿ステート＿コントローラー】ーーーーーーーーーーーーー
class _MyHomePageState extends State<MyHomePage> {

  // final items = List<String>.generate(10000, (i) => "Item $i");
  final items = [
    "ゴジラ","モスラ","キングギドラ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strength Rec"), // テキストwidget
      ),
      body: Container(
        width: double.infinity,
        // columnは高さでエラ出るが、ListViewならスクロール前提
          //  --- Use List --------
        // child: ListView(
        //   children: <Widget>[
        //     ListTile(
        //       leading: Icon(Icons.map),
        //       title: Text('Map'),
        //       trailing: Icon(Icons.arrow_forward_ios), //個人プロフィールにアイコンつけてボタンで遷移して、詳細ページ
        //       onTap: () {
        //         //TODO: onTapとNavigatorで画面遷移
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => NextPage("個人プロフィール")),
        //         );
        //       },
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.photo_album),
        //       title: Text('Album'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.phone),
        //       title: Text('Phone'),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.info),
        //       title: Text('問い合わせ'),
        //     ),
        //     Text("テキストも挿入可能"),
        //   ],
        // ),
        // child: ListView.builder(  //----  Work with long lists(DBから全データ持ってきて乗せる一覧)  -----
        //   itemCount: items.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text('${items[index]}'),  //変数index配列のindex番号で表示する
        //       // title: Text('繰り返す内容とインデックス番号'),
        //     );
        //   },
        // ),
        // child: GridView.count(     // grid list -------------------------
        //   // Create a grid with 2 columns. If you change the scrollDirection to
        //   // horizontal, this produces 2 rows.
        //   crossAxisCount: 3,  // 3列
        //   // Generate 100 widgets that display their index in the List.
        //   children: List.generate(100, (index) {  //ここのindexが0,1,2,3,4と抽出され、配列の繰り返し処理として以下のItemが読まれる
        //     // return Center(
        //     //   child: Text(
        //     //     'Item $index',
        //     //     style: Theme.of(context).textTheme.headline5,
        //     //   ),
        //     // );
        //     return Column(
        //       children: <Widget>[
        //         Expanded(
        //             child: Image.network(
        //               'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', width: 200, height: 300,)
        //         ),
        //         Text("$index"),
        //       ],
        //     );
        //   }),
        // )
          child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Column(
            //   children: <Widget>[
            //     Expanded(
            //         child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', width: 200, height: 300,')
            //   ],
            //
            // )
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        )
      ),
    );
  }
}
