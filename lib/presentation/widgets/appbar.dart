import 'package:eaudelux/presentation/pages/inventory_dashboard/inventory_dashboard.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

class InventoryAppBar extends StatelessWidget {
  final Size appBarSize;
  final List<String> brands;
  final List<String> sizeTypes;
  final String role;

  const InventoryAppBar(
      {super.key,
      required this.appBarSize,
      required this.brands,
      required this.sizeTypes,
      required this.role});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navyBlue,
      height: appBarSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonSection(
              height: appBarSize.height,
              width: appBarSize.width * 0.35,
              brands: brands,
              sizeTypes: sizeTypes,
              role: role),
          Text(
              role == 'Operation Staff'
                  ? 'Update Order Status'
                  : 'Inventory Dashboard',
              style: AppTheme.whiteMediumStyle.copyWith(fontSize: 25)),
          SizedBox(
            width: appBarSize.width * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: const BoxDecoration(
                      color: AppColors.karimunBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/svgs/logout.svg',
                      height: 24.0, // Adjust the size as needed
                      width: 24.0,
                      colorFilter: const ColorFilter.mode(AppColors.white,
                          BlendMode.srcIn), // Adjust the color if required
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SalesAppBar extends StatelessWidget {
  final Size appBarSize;
  final String role;

  const SalesAppBar({
    super.key,
    required this.role,
    required this.appBarSize,
  });

  String _getRoleTitle(String role) {
    switch (role) {
      case 'CEO':
        return 'Prediction Center';
      case 'Sales Staff':
        return 'Sales Action Center';
      case 'Sales Manager':
        return 'Sales Management';
      case 'Sales Director':
        return 'Sales Dashboard';
      default:
        return 'Sales Action Center'; // Default title for any other role
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navyBlue,
      height: appBarSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonSection(
              height: appBarSize.height,
              width: appBarSize.width * 0.35,
              role: role),
          Text(
            _getRoleTitle(role),
            style: AppTheme.whiteMediumStyle.copyWith(fontSize: 25),
          ),
          SizedBox(
            width: appBarSize.width * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: const BoxDecoration(
                      color: AppColors.karimunBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/svgs/logout.svg',
                      height: 24.0, // Adjust the size as needed
                      width: 24.0,
                      colorFilter: const ColorFilter.mode(AppColors.white,
                          BlendMode.srcIn), // Adjust the color if required
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  final double height, width;
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';
  final List<String>? brands;
  final List<String>? sizeTypes;
  final String role;

  const ButtonSection(
      {super.key,
      required this.height,
      required this.width,
      this.brands,
      this.sizeTypes,
      required this.role});

  Widget buildButton(BuildContext context, String role) {
    if (role == 'Operation Director') {
      return Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => InventoryDashboard(
                      role: role,
                    ))),
            child: Text(
              'Inventory',
              style: AppTheme.whiteMediumStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          TextButton(
            onPressed: () => ExcelExporter.exportPerfumeDataToExcel(
                DataSample.perfumes, context),
            child: Text(
              'Print Report',
              style: AppTheme.whiteMediumStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    } else if (role == 'Operation Manager') {
      return Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => InventoryDashboard(
                      role: role,
                    ))),
            child: Text(
              'Inventory',
              style: AppTheme.whiteMediumStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: Text(
              'Import Product',
              style: AppTheme.whiteMediumStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => InventoryDashboard(
                        role: role,
                      ))),
              style: AppTheme.navigationLogoButtonStyle,
              child: SvgPicture.asset(
                logoImagePath,
                semanticsLabel: logoSemanticsLabel,
              ),
            ),
            buildButton(context, role)
          ],
        ));
  }
}
