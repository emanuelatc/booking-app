import 'package:flutter/material.dart';
import 'package:booking_app/vehicle_data.dart';
import 'package:flutter/widgets.dart';
// import 'package:booking_app/article.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

// tutorial: https://www.kindacode.com/article/how-to-read-local-json-files-in-flutter/

class Vehicles extends StatefulWidget {
  @override
  _VehiclesState createState() => _VehiclesState();
}

class _VehiclesState extends State<Vehicles> {
  bool _isGridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book a vehicle'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() => _isGridView = !_isGridView);
            },
            icon: Icon(_isGridView
                ? Icons.format_list_bulleted_rounded
                : Icons.grid_view_rounded),
            tooltip: 'Change display layout',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            _isGridView ? GridWidget() : ListWidget(),
          ],
        ),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: <Widget>[
          Vehicle(),
          Vehicle(),
          Vehicle(),
          Vehicle(),
          Vehicle(),
          Vehicle(),
          Vehicle(),
          Vehicle(),
        ],
      ),
    );
  }
}

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List _items = [];

  Future<void> readJson() async {
    final String response = await rootBundle
        .loadString('./lib/assets/cars-and-dealers-search.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Load Data'),
              onPressed: readJson,
            ),
            _items.length > 0
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(_items[index]["seller_name_o"]),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context, int index) {
    return Text("List item");
  }
}
