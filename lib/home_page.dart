import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram Clone',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _buildbody(),
    );
  }

  _buildbody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Instagram에 오신 것을 환영합니다',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 8),
                Text('사진과 동영상을 보려면 팔로우하세요'),
                SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://d2v80xjmx68n4w.cloudfront.net/gigs/JaqkS1637331647.jpg'),
                          ),
                          SizedBox(height: 8),
                          Text('이메일 주소'),
                          Text('이름'),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/tistory/237215365613687D10',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 2),
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/tistory/237215365613687D10',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 2),
                              SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.network(
                                  'https://t1.daumcdn.net/cfile/tistory/237215365613687D10',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('팔로우'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}