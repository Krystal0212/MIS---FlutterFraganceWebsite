import 'package:eaudelux/presentation/pages/sales_dashboard/sales_dashboard.dart';
import 'package:eaudelux/presentation/pages/widgets/sales_report_part.dart';
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
                MaterialPageRoute(builder: (context) => const SalesStaffPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return const Placeholder();
}

// Sales Manager Page
class SalesManagerPage extends StatelessWidget {
  const SalesManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Manager Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View Sales Report'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SalesReportPart()),
              );
            },
          ),
          ListTile(
            title: const Text('Transaction Status'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransactionStatusPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Create Promotion Program'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CreatePromotionPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Sales Staff Page
class SalesStaffPage extends StatelessWidget {
  const SalesStaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Staff Dashboard'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('View Order List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrderListPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Update Order List'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UpdateOrderListPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Make Payment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MakePaymentPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Contact Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ContactSupportPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Placeholder pages for Sales Director features


// Placeholder pages for Sales Manager features
class TransactionStatusPage extends StatelessWidget {
  const TransactionStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction Status')),
      body: const Center(child: Text('Transaction status management here')),
    );
  }
}

class CreatePromotionPage extends StatelessWidget {
  const CreatePromotionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Promotion')),
      body: const Center(child: Text('Create promotion program here')),
    );
  }
}

// Placeholder pages for Sales Staff features
class OrderListPage extends StatelessWidget {
  const OrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order List')),
      body: const Center(child: Text('Order list content here')),
    );
  }
}

class UpdateOrderListPage extends StatelessWidget {
  const UpdateOrderListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Order List')),
      body: const Center(child: Text('Order update functionality here')),
    );
  }
}

class MakePaymentPage extends StatelessWidget {
  const MakePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Make Payment')),
      body: const Center(child: Text('Payment processing page here')),
    );
  }
}

class ContactSupportPage extends StatelessWidget {
  const ContactSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Support')),
      body: const Center(child: Text('Support contact options here')),
    );
  }
}
