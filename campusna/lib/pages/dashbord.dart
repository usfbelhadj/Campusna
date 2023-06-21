import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../widgets/card_widgets.dart';
import 'home.dart';
import 'login.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: GradientText(
          'Campusna',
          style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              fontFamily: "Roboto",
              height: 1),
          colors: [
            Color.fromARGB(255, 218, 52, 93),
            Color.fromARGB(255, 132, 39, 148),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'https://store-images.s-microsoft.com/image/apps.38136.9007199266248608.5b4b1636-33b2-487a-bca5-b47c2dbf9aed.bea9adcf-2870-4442-9b72-92adab55243c',
                      text: "Mail",
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Zulip-icon-square.svg/1200px-Zulip-icon-square.svg.png',
                      text: "zulip",
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'https://store-images.s-microsoft.com/image/apps.47156.14141525700856349.6cb32918-57b4-48f6-a08a-1a68b084ceb7.f58be292-bfeb-4eed-ae02-6a0c91032b0c',
                      text: "Moodle",
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Jupyter_logo.svg/640px-Jupyter_logo.svg.png',
                      text: "Jupyter",
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'https://cdn3.iconfinder.com/data/icons/files-2/512/arrow_upload_file-512.png',
                      text: "Send File",
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CardWidget(
                      image:
                          'data:image/png;base64,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',
                      text: "OrangeHRM",
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'LogOut',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 96, 24, 109),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))))),
          ),
        ],
      ),
    );
  }
}
