import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args['index']);
    index = args['index'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
                //title:Text(hotelList[index]['place']) ,
                background: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset(
                  "assets/images/images/${hotelList[index]['image']}",
                  fit: BoxFit.cover,
                )),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                          hotelList[index]['place'],
                          style:   TextStyle(color: Colors.white, fontSize: 24,
                              shadows:[Shadow(
                                blurRadius: 10, color: AppStyles.primaryColor, offset: Offset(2.0, 2.0)
                              ) ]),
                        )))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                  "I’m passionate about leveraging data and user insights to drive decision-making and create value for businesses. I enjoy working in cross-functional teams, where I can bring my organizational skills and adaptability to bridge the gap between business needs and technical solutions. Outside of work, I’m someone who thrives on learning, whether it's staying updated on emerging tech trends or brainstorming innovative ideas"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'More Images',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(8),
                        child: Image.network(
                            'https://dummyimage.com/200x200/000/fff&text=Placeholder'));
                  }),
            )
          ])),
        ],
      ),
    );
  }
}
