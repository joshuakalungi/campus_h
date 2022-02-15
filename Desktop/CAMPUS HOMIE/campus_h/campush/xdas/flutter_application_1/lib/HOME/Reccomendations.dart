import 'package:flutter/material.dart';
import 'package:flutter_application_1/HOME/Weather/main.dart';
import 'package:flutter_application_1/HOME/chat/chat.dart';
import 'package:flutter_application_1/HOME/noter/home.dart';
import 'Constants/constants.dart';
import 'placePicker/stf.dart';

class HomePagex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        children: const [
          MenuEntry(
            iconData: Icons.location_on_rounded,
            title: 'placePicker',
            bgColor: kLightYellow,
            iconColor: kDarkYellow,
            destination: stf(),
          ),
          MenuEntry(
            iconData: Icons.pending_actions_rounded,
            title: 'Chatify',
            bgColor: kLightRed,
            iconColor: kDarkRed,
            destination: ChannelListPage(),
          ),
          MenuEntry(
            iconData: Icons.timer_10_select_rounded,
            title: 'Location Notepad',
            bgColor: kLightBlue,
            iconColor: kDarkBlue,
            destination: Home(),
          ),
          MenuEntry(
            iconData: Icons.timer_10_select_rounded,
            title: 'Weather',
            bgColor: kLightBlue,
            iconColor: kDarkBlue,
            destination: Coolet(),
          ),
        ],
      ),
    );
  }
}

HomePage() {}

class MenuEntry extends StatelessWidget {
  const MenuEntry({
    Key? key,
    required this.title,
    required this.iconData,
    required this.destination,
    required this.iconColor,
    required this.bgColor,
  }) : super(key: key);

  final String title;
  final Widget destination;
  final IconData iconData;
  final Color iconColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => destination,
            ),
          );
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: FractionallySizedBox(
                heightFactor: 0.25,
                alignment: Alignment.bottomCenter,
                child: ColoredBox(
                  color: Colors.black.withOpacity(0.75),
                  child: Center(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
