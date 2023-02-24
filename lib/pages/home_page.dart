import 'package:flutter/material.dart';
import 'package:nubank_clone/widgets/credit_card_bill_widget.dart';
import 'package:nubank_clone/widgets/main_content_widget.dart';
import '../colors/palette.dart';
import '../widgets/top_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool canSee = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 25,
          color: Palette.nuPurple,
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Top bar widget
                topSectionWidget(),
                MainContentWidget(canSee: canSee),
                SizedBox(
                  height: 1,
                ),
                Divider(thickness: 2),
                CreditCardWidget(
                  eyeOpen: canSee,
                ),
                SizedBox(
                  height: 1,
                ),
                Divider(thickness: 2),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget topSectionWidget() {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Palette.nuPurple,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*
                  Badge that goes to the top-right
                  part of the container
                 */
                Badge(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.white,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color(0xFF9436E2),
                        borderRadius: BorderRadius.circular(22)),
                    /*
                          Icon inside container to add a certain image idk
                         */
                    child: Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /*
                      Gesture detector to change info behaviours
                     */
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            canSee = !canSee;
                          });
                        },
                        child: Image.asset(
                          canSee
                              ? 'assets/images/eye-opened.png'
                              : 'assets/images/hidden.png',
                          height: 30,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.help_outline_rounded,
                            color: Colors.white,
                            size: 25,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/add-user.png',
                        height: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            /*
            Padding to fix text position
             */
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: Text(
                'Olá, Be',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
