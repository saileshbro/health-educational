import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/common/ui/components/drawer/drawer_viewmodel.dart';
import 'package:stacked/stacked.dart';

class KDrawer extends StatefulWidget {
  @override
  _KDrawerState createState() => _KDrawerState();
}

class _KDrawerState extends State<KDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ViewModelBuilder<DrawerViewModel>.nonReactive(
          viewModelBuilder: () => locator<DrawerViewModel>(),
          disposeViewModel: false,
          builder: (context, model, child) {
            return ListView(
              padding: const EdgeInsets.only(bottom: 20.0),
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/heart_sliver_image.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "We DiseaseFree",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                _ListTile(
                  label: "Home",
                  logo: "assets/images/icons/home.png",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    height: 10,
                    color: Colors.blueGrey[900]!.withOpacity(0.5),
                  ),
                ),
                _ListTile(
                  label: "Diseases",
                  logo: "assets/images/icons/disease.png",
                  onPressed: model.toDiseases,
                ),
                _ListTile(
                  label: "Symptoms",
                  logo: "assets/images/icons/symptoms.png",
                ),
                _ListTile(
                  label: "Health News",
                  logo: "assets/images/icons/news.png",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    height: 10,
                    color: Colors.blueGrey[900]!.withOpacity(0.5),
                  ),
                ),
                _ListTile(
                  label: "Health Tools and Tips",
                  logo: "assets/images/icons/healthtool.png",
                )
              ],
            );
          }),
    );
  }
}

class _ListTile extends StatelessWidget {
  final String logo;
  final String label;
  final void Function()? onPressed;
  const _ListTile({
    Key? key,
    required this.logo,
    required this.label,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: onPressed,
        contentPadding: EdgeInsets.only(left: 30),
        leading: Image.asset(
          logo,
          width: 35,
        ),
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
