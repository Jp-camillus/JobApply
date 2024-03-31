import 'package:fieldapp/Constants/Images.dart';
import 'package:fieldapp/Screens/CashDeposit/DashBoard.dart';
import 'package:fieldapp/Screens/CashDeposit/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class cashWithdrawal extends StatefulWidget {
  @override
  _cashWithdrawalState createState() => _cashWithdrawalState();
}

class _cashWithdrawalState extends State<cashWithdrawal> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';
  List<Map<String, String>> _items = [
    {'title': 'Victor Olibe', 'subtitle': 'victorolibe@gmail.com'},
    {'title': 'Emeka Docas', 'subtitle': 'emeika23@gmail.com'},
    {'title': 'Ugwu camillus', 'subtitle': 'camillus34@gmail.com'},
    {'title': 'Charles hillary', 'subtitle': 'charleshillary@gmail.com'},
  ];

  List<Map<String, String>> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _items;
  }

  void _filterList(String searchText) {
    setState(() {
      _filteredItems = _items
          .where((item) =>
              item['title']!.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.offAll(Dashboard());
            },
            child: Image(image: AssetImage(AppImages.cancel))),
        centerTitle: true,
        title: Text(
          'Cash Withdrawal',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
                'Search user by entering account name, account number and phone number'),
            SizedBox(
              height: 0.05.sh,
            ),
            TextField(
              controller: _searchController,
              textAlignVertical: TextAlignVertical.bottom,
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
                _filterList(value);
              },
              decoration: InputDecoration(
                constraints: BoxConstraints(minHeight: 0, maxHeight: 0.05.sh),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: _searchText.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchText = '';
                          });
                          _filterList('');
                        },
                      )
                    : null,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(0),
                    onTap: () {
                      Get.to(UserProfile());
                    },
                    title: Text(_filteredItems[index]['title']!),
                    subtitle: Text(_filteredItems[index]['subtitle']!),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
