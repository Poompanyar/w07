import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisdom Suwanrasamee',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '6414421037',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: Text(
            'Next to',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );

    Widget textSection = Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        'ฉันภูมิใจในตัวฉันที่เป็นคนเก่ง'
        'ฉันเป็นคนฉลาดและเรียนรู้สิ่งใหม่ ๆ ได้อย่างรวดเร็ว'
        'ฉันเป็นคนสร้างสรรค์และคิดไอเดียใหม่ๆ ได้เสมอ '
        'ฉันเป็นคนมีน้ำใจและช่วยเหลือผู้อื่น '
        'ฉันเป็นคนมีความสุขและสนุกกับชีวิต',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Work_w_07'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://scontent.fbkk21-1.fna.fbcdn.net/v/t1.6435-9/49298253_2053766464717144_6529989696116752384_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGOsyUyR0nOpxbVoYPzeKw9f8AsdjBdWqp_wCx2MF1aqg-bkv-GoN9oPtSxGrlgZwMKgUinZsLmwCa26sJgqLrF&_nc_ohc=KvVE806UN4IAX9UqMbf&_nc_ht=scontent.fbkk21-1.fna&_nc_e2o=f&oh=00_AfARKE1bi54Wc5PoG4MoOVXmAaZwe-8AKOZm2YPzVC2LSw&oe=6537ECF3',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              ('https://scontent.fbkk21-1.fna.fbcdn.net/v/t1.6435-9/46446872_1978154918944966_5503569254848397312_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeH2U1gUooNmHZrlgI0u129te2vHpBMXW4B7a8ekExdbgEnc1bc1SNPfIA5VUiHNeEuiVsDhzt5FBFLP4sF7jHoH&_nc_ohc=wvEoawlSS-oAX-2b1Rj&_nc_ht=scontent.fbkk21-1.fna&_nc_e2o=f&oh=00_AfD6Rnkdfzj40ydrVw5wwJp682I4EiL_jPRvLBNamfBoOg&oe=6537DD66'),
              width: 400,
              height: 400,
            ),
            const Text(
              'ภูมิปัญญา สุวรรณรัศมี',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridListScreen()),
                );
              },
              child: const Text('Grid List'),
            ),
          ],
        ),
      ),
    );
  }
}

class GridListScreen extends StatelessWidget {
  const GridListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://scontent.fbkk21-1.fna.fbcdn.net/v/t1.18169-9/18700159_1373091732784624_9104691905543162081_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeHHsJIMtzvp5Aps5hJDaehfaJW189kqReNolbXz2SpF4yD_CkoBZJNsdeMpBsAMNbZIX67vl8s3mDlAngxQd3q3&_nc_ohc=4ApRFQNnMzcAX_RhWHC&_nc_ht=scontent.fbkk21-1.fna&_nc_e2o=f&oh=00_AfATvX7cxXdgoPQBsqJFL1t2vQDe260t7OnOIQ6zzrctCw&oe=6537F719${index + 1}.jpg',
                    width: 500,
                    height: 500,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Box ${index + 1}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}
