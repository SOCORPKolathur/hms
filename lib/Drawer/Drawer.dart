import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import '../Building_screen/Building_screen.dart';
import '../Complaint_Screen/Complaint_Screen.dart';
import '../Const_File.dart';
import '../Dashboard_Screen/DashBoard_Screen.dart';
import '../Message_Screen/Message_screen.dart';
import '../Rooms_Screen/Rooms_Screen.dart';
import '../Uers_screen/Uers_screen.dart';


class Drawercus extends StatefulWidget {
  const Drawercus({Key? key}) : super(key: key);

  @override
  State<Drawercus> createState() => _DrawercusState();
}

class _DrawercusState extends State<Drawercus> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _key,
      drawer: ExampleSidebarX(controller: _controller),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ExampleSidebarX(controller: _controller),
          ),
          Expanded(
            child: Center(
              child: _ScreensExample(
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
    );

  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: drawerColor,
            borderRadius: BorderRadius.circular(8)
        ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15,top: 15),
            child: SizedBox(
              height: 70,
              width: 70,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(LogoImg,fit: BoxFit.contain,),
              ),
            ),
          ),
          Expanded(
            child: SidebarX(
              controller: _controller,
              theme: SidebarXTheme(
                margin:  const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: drawerColor,
                  borderRadius: BorderRadius.circular(3),
                ),
                hoverColor: hoverColor1,
                textStyle: textStyle(TextColor: DrawerTextColor,TextSize: TextSizeMedium,fontWeight: fontWeightmedium),
                selectedTextStyle: textStyle(TextColor: SelectedColor,TextSize: TextSizeMedium,fontWeight: fontWeightmediumextraPlus),
                itemTextPadding: const EdgeInsets.only(left: 30),
                selectedItemTextPadding: const EdgeInsets.only(left: 30),
                itemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                selectedItemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient:  LinearGradient(
                    colors: [DrawerTextSelectedColor, DrawerTextSelectedColor],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.28),
                      blurRadius: 30,
                    )
                  ],
                ),
                iconTheme: const IconThemeData(
                  color: Colors.white,
                  size: 20,
                ),
                selectedIconTheme: const IconThemeData(
                  color: Colors.black,
                  size: 20,
                ),
              ),
              extendedTheme:  SidebarXTheme(
                width: 200,
                decoration: BoxDecoration(
                    color: drawerColor,
                    borderRadius: BorderRadius.circular(7)
                ),
              ),
              items: const [

                SidebarXItem(
                  icon: Icons.home,
                  label: 'Dash Board',),
                SidebarXItem(
                  icon: Icons.dashboard,
                  label: 'Hostel Lists',
                ),
                SidebarXItem(
                  icon: Icons.report,
                  label: 'Complaint Lists',
                ),
                SidebarXItem(
                  icon: Icons.message,
                  label: 'Message',
                ),
                SidebarXItem(
                  icon: Icons.room,
                  label: 'Rooms',
                ),
                SidebarXItem(
                  icon: Icons.build_outlined,
                  label: 'Buildings',
                ),
                SidebarXItem(
                  icon: Icons.auto_graph_outlined,
                  label: 'Graph',
                ),
                SidebarXItem(
                  icon: Icons.person,
                  label: 'Abouts',
                ),
                SidebarXItem(
                  icon: Icons.settings_outlined,
                  label: 'Settings',
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {

          case 0:
            return  DashBoard_Scren();
          case 1:
            return   const Uers_screen();
          case 2:
            return const Complaint_Screen();
          case 3:
            return const Message_Screen();
          case 4:
            return const Rooms_Screen();
          case 5:
            return const Building_screen();
          case 6:
            return const SizedBox();
          case 7:
            return const SizedBox();
          case 8:
            return const SizedBox();
          case 9:
            return const SizedBox();
          case 10:
            return const SizedBox();



          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headline5,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Usrs';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'index 5';
    default:
      return 'Not found page';
  }
}

final primaryColor = const Color(0xFFE7E7E7).withOpacity(0.32);
final canvasColor = const Color(0xFFE7E7E7).withOpacity(0.32);
final scaffoldBackgroundColor = const Color(0xFFE7E7E7).withOpacity(0.32);
final accentCanvasColor = const Color(0xFFE7E7E7).withOpacity(0.32);
const white = Colors.white;
final actionColor = const Color(0xFFFFFFFF).withOpacity(0.6);