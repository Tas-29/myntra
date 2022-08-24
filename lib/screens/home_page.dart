import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _appBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Row(children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  fillColor: MaterialStateProperty.all<Color>(Colors.pink),
                ),
                const Text(
                  '2/2 Items Selected ',
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  '(₹2,998)',
                  style: TextStyle(color: Colors.pink),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.delete_outline_rounded,
                    color: Colors.black,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
              ]),
              SizedBox(
                // height: size.height * .2,
                width: size.width,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        height: size.height * .01,
                        color: Colors.grey[200],
                      );
                    },
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return _card(size);
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 1,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: const Text(
        'SHOPPING BAG',
        style: TextStyle(color: Colors.black),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'STEP 1/3',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }

  Container _card(Size size) {
    return Container(
                      height: size.height * .2,
                      width: size.width,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              'https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/10339033/2022/4/25/3170e623-ab80-4678-9628-14cb6033ab171650883660619USPoloAssnMenWhiteClarkinSneakers1.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'U.S Polo Assn.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: size.width * .31,
                                    ),
                                    const Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.cancel,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  'Men White Clarkin Sneakers',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                const Text(
                                  'Sold by: Supercom Net',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Row(
                                        children: const [
                                          Text('Size: 6'),
                                          Icon(
                                            Icons.arrow_drop_down_rounded,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Row(
                                        children: const [
                                          Text('Qty: 1'),
                                          Icon(
                                            Icons.arrow_drop_down_rounded,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '₹1,449 ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '₹2,999 ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    Text(
                                      '50% OFF',
                                      style: TextStyle(
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
  }
}
