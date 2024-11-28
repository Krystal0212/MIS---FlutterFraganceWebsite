import 'package:eaudelux/presentation/pages/inventory_dashboard/inventory_dashboard.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

class InventoryAppBar extends StatelessWidget {
  final Size appBarSize;

  const InventoryAppBar({super.key, required this.appBarSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navyBlue,
      height: appBarSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonSection(
              height: appBarSize.height, width: appBarSize.width * 0.35),
          Text('Inventory Dashboard', style: AppTheme.whiteMediumStyle.copyWith(fontSize: 25)),
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

  const ButtonSection({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InventoryDashboard())),
              style: AppTheme.navigationLogoButtonStyle,
              child: SvgPicture.asset(
                logoImagePath,
                semanticsLabel: logoSemanticsLabel,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InventoryDashboard())),
              child: Text(
                'Inventory',
                style: AppTheme.whiteMediumStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            TextButton(
              onPressed: () => ExcelExporter.exportPerfumeDataToExcel(DataSample.perfumes, context),
              child: Text(
                'Print Report',
                style: AppTheme.whiteMediumStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ));
  }
}
