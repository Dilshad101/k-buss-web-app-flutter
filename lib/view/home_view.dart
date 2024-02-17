import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:k_buss/utils/colors.dart';
import 'package:k_buss/utils/text_styles.dart';
import 'package:k_buss/view/add_routes_view.dart';
import 'package:k_buss/view/dashboard_view.dart';
import 'package:k_buss/view/add_bus_view.dart';

import '../widgets/nav_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final _beamerKey = GlobalKey<BeamerState>();
  final List<String> routes = ['/dashboard', '/addbuss', '/addroute'];
  final List<String> labels = ['Dashboard', 'Add Buss', 'Add Route'];
  final List<IconData> icons = [
    Icons.dashboard_sharp,
    Icons.directions_bus,
    Icons.route
  ];
  final ValueNotifier<int> tileNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: NavBar(),
      ),
      body: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ValueListenableBuilder(
                  valueListenable: tileNotifier,
                  builder: (context, isSelected, _) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: ListTile(
                          leading: Icon(icons[index], size: 20),
                          title: Text(
                            labels[index],
                            style: AppText.medium.copyWith(
                              color: index == isSelected
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                          ),
                          selected: index == isSelected,
                          selectedTileColor: AppColor.primaryColor,
                          selectedColor: Colors.white,
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onTap: () {
                            tileNotifier.value = index;
                            _beamerKey.currentState?.routerDelegate
                                .beamToNamed(routes[index]);
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Expanded(
            flex: 5,
            child: Beamer(
              key: _beamerKey,
              routerDelegate: BeamerDelegate(
                initializeFromParent: false,
                initialPath: '/addroute',
                locationBuilder: RoutesLocationBuilder(
                  routes: {
                    '*': (context, state, data) => const SizedBox(),
                    '/dashboard': (context, state, data) {
                      return const BeamPage(
                        key: ValueKey('dashboard'),
                        type: BeamPageType.fadeTransition,
                        child: DashBoardView(),
                      );
                    },
                    '/addbuss': (context, state, data) {
                      return BeamPage(
                        key: const ValueKey('addbuss'),
                        type: BeamPageType.fadeTransition,
                        child: AddBussView(),
                      );
                    },
                    '/addroute': (context, state, data) {
                      return BeamPage(
                        key: const ValueKey('addroute'),
                        type: BeamPageType.fadeTransition,
                        child: AddRouteView(),
                      );
                    },
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
