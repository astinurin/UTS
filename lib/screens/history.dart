import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class HistoryScreen extends StatefulWidget {
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.red,
            tabs: const [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(child: const Text('No pending transactions')),
                ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    _buildTransactionCard("Google Play", "Rp57.720", "Success", "Weverse", "22 Oct 2024, 16.38 WIB"),
                    _buildTransactionCard("Google Play", "Rp84.000", "Success", "Google Play Store", "19 Oct 2024, 16:45 WIB"),
                    _buildTransactionCard("Pay QRIS", "Rp1000.000", "Success", "Weverse Shop", "18 Oct 2024, 22:00 WIB"),
                    _buildTransactionCard("Google Play", "Rp100.000", "Success", "Google Play Store", "17 Oct 2024, 15:35 WIB"),
                    _buildTransactionCard("Pay QRIS", "Rp300.000", "Success", "Access by KAI", "10 Oct 2024, 20:36 WIB"),
                    _buildTransactionCard("Pay QRIS", "Rp20.000", "Success", "PT Apresiasi Karya Nusantara", "1 Oct 2024, 11:26 WIB"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card _buildTransactionCard(String title, String amount, String status, String description, String date) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            Text(description),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(status, style: const TextStyle(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
