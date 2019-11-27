import 'package:deli_meals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String desc,
    bool currentVal,
    Function updateVal,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentVal,
      subtitle: Text(desc),
      onChanged: updateVal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Adjust your meal selection.',
                  style: Theme.of(context).textTheme.title),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                    'Gluten-free',
                    'Show only Gluten-free meals',
                    _glutenFree,
                    (newVal) {
                      setState(() {
                        _glutenFree = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Lactose-free',
                    'Show only Lactose-free meals',
                    _lactoseFree,
                    (newVal) {
                      setState(() {
                        _lactoseFree = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegetarian',
                    'Show only Vegetarian meals',
                    _vegetarian,
                    (newVal) {
                      setState(() {
                        _vegetarian = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegan',
                    'Show only Vegan meals',
                    _vegan,
                    (newVal) {
                      setState(() {
                        _vegan = newVal;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
