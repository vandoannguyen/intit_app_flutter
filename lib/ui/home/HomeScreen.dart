import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:init_app/ui/home/HomeViewModel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeViewModel _homeViewModel;

  @override
  void initState() {
    // TODO: implement initState
    _homeViewModel = HomeViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: ChangeNotifierProvider(
              create: (context) => _homeViewModel.getProvider(),
              child: Home(_homeViewModel),
            ),
          ),
          Container(
            height: 100,
            color: Colors.amberAccent,
          )
        ],
      ),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement builre
    print("build2");
    return Scaffold(
      body: Container(
        height: 40,
      ),
    );
  }
}

class Home extends StatelessWidget {
  HomeViewModel _homeViewModel;

  Home(this._homeViewModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("build");
    var provider = Provider.of<HomeProvider>(context);

    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            elevation: 4,
            child: GestureDetector(
              onTap: () => _homeViewModel.changeCity(),
              child: Container(
                height: 40,
                child: Text("City   ${provider.city}"),
              ),
            ),
          ),
          Card(
            elevation: 4,
            child: GestureDetector(
              onTap: () => _homeViewModel.changeCity(),
              child: Container(
                height: 40,
                width: 80,
                child: Text("Country     ${provider.countryCode}"),
              ),
            ),
          ),
          Card(
            elevation: 4,
            child: GestureDetector(
              onTap: () => _homeViewModel.changeCity(),
              child: Container(
                height: 40,
                width: 80,
                child: Text("Ip     ${provider.ip}"),
              ),
            ),
          ),
          Card(
            elevation: 4,
            child: GestureDetector(
              onTap: () => _homeViewModel.changeRegion(),
              child: Container(
                height: 40,
                width: 80,
                child: Text("Region     ${provider.region}"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
