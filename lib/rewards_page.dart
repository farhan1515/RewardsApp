import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<String> _photos = [
      'images/grid-1.png',
      'images/grid-2.png',
      'images/grid-3.png',
      'images/grid-3.png',
      'images/grid-2.png',
      'images/grid-1.png',
      'images/grid-2.png',
      'images/grid-1.png',
      'images/grid-3.png',
      'images/exp-1.png',
      'images/exp-2.png',
      'images/exp-3.png',
      'images/exp-3.png',
      'images/exp-2.png',
      'images/exp-1.png',
    ];
    int crossAxisCount = MediaQuery.of(context).size.width > 600 ? 3 : 2;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset('images/claim-reward-banner.png'),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: _photos.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                  itemBuilder: (context, rowIndex) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Container(
                            width: MediaQuery.of(context).size.width /
                                    crossAxisCount -
                                20,
                            //width: MediaQuery.of(context).size.width / 3 - 16,
                            height: MediaQuery.of(context).size.height / 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(_photos[rowIndex]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
