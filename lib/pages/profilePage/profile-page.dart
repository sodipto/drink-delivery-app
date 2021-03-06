import 'package:drink_app/constants/color-utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double thikness = 0.3;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

      return SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: size.height,
                  padding: EdgeInsets.only(top: 0, left: 0, right: 0),
                  width: double.infinity,
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: size.height * 0.45,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.png'),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).padding.top + 10,
                    right: 14,
                    child: IconButton(
                        icon: SvgPicture.asset('assets/icons/copy.svg',
                            color: Colors.white, height: 25),
                        onPressed: () {
                          print(size.height);
                        })),
                Positioned(
                  top: size.height * 0.45 / 2 - 65,
                  left: size.width / 2 - 60,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 4
                                  ),
                                ],
                                image: DecorationImage(
                                    image: AssetImage('assets/images/user.png'),
                                    fit: BoxFit.fill),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              height: 24,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFF6e8e01),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/diamond.svg',
                                      color: Colors.white, height: 12),
                                  SizedBox(width: 5),
                                  Text("VIP",
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Roton Pondit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Positioned(
                    top: size.height * 0.45,
                    child: Container(
                        height: size.height / 2 + 80,
                        width: size.width,
                        padding: EdgeInsets.only(
                            top: 30, left: 20, right: 20, bottom: 80),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: ListView(
                          children: [

                            Divider(thickness: thikness, color: Colors.grey),
                            ProfileItem(
                                text: 'My Collection',
                                icon: 'assets/icons/star.svg'),
                            Divider(thickness: thikness, color: Colors.grey),
                            ProfileItem(
                                text: 'Purchase record',
                                icon: 'assets/icons/edit.svg'),
                            Divider(thickness: thikness, color: Colors.grey),
                            ProfileItem(
                                text: 'Notice',
                                icon: 'assets/icons/notice.svg'),
                            Divider(thickness: thikness, color: Colors.grey),
                            ProfileItem(
                                text: 'Settings',
                                icon: 'assets/icons/settings.svg'),
                            Divider(thickness: thikness, color: Colors.grey),
                            SizedBox(height: 30),
                          ],
                        ))),
                Positioned(
                    top: size.height * 0.45 - 40,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30, right: 25),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                        height: 80,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 8,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text('1053',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 3),
                                Text('Balance',
                                    style: TextStyle(
                                        color: OpacityColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                            Container(
                              height: double.infinity,
                              width: 2,
                              color: Colors.grey.withOpacity(0.3),
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/wallet.svg',
                                  color: BrandColor,
                                  height: 24,
                                  width: 24,
                                ),
                                SizedBox(height: 3),
                                Text('My Wallet',
                                    style: TextStyle(
                                        color: OpacityColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      );
  }
}

class ProfileItem extends StatelessWidget {
  final String text;
  final String icon;
  final Function onTap;

  const ProfileItem(
      {Key key, @required this.text, @required this.icon, this.onTap = null})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.only(left: 0.0, right: 0.0, top: 0, bottom: 0),
      leading: SvgPicture.asset(
        this.icon,
        color: BrandColor,
        height: 22,
        width: 22,
      ),
      title: Text(this.text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        icon: Icon(Icons.navigate_next, size: 32, color: IConColor),
      ),
    );
  }
}
