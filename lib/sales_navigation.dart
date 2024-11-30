import 'package:eaudelux/presentation/pages/inventory_dashboard/inventory_dashboard.dart';
import 'package:eaudelux/presentation/pages/sales_actions_center/sales_ation_center.dart';
import 'package:eaudelux/presentation/pages/sales_dashboard/sales_dashboard.dart';
import 'package:eaudelux/presentation/pages/sales_management_page/sales_management.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Role"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Inventory Director'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InventoryDashboard(
                        role: DataSample.getInventoryRole(0))),
              );
            },
          ),
          ListTile(
            title: const Text('Inventory Manager'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InventoryDashboard(
                        role: DataSample.getInventoryRole(1))),
              );
            },
          ),
          ListTile(
            title: const Text('Inventory Staff'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InventoryDashboard(
                        role: DataSample.getInventoryRole(2))),
              );
            },
          ),
          ListTile(
            title: const Text('Sales Director'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SalesDirectorPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sales Manager'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SalesManagerPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Sales Staff'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SalesStaffPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
