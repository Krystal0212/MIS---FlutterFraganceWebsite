import 'package:eaudelux/presentation/pages/widgets/full_pie_chart.dart';
import 'package:eaudelux/presentation/pages/widgets/o_shape_pie_chart.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';

// Customer Segmentation Data Page
class CustomerSegmentationPart extends StatelessWidget {
  const CustomerSegmentationPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            'Customer Segmentation Overview',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    // Age group segmentation
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Customer by Age Group:',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  OShapePieChart(ageGroupData: {
                    '18-24': 30,
                    '25-34': 40,
                    '35-44': 20,
                    '45+': 10
                  })
                ],
              ),
    
              // Gender segmentation
              Column(
                children: [
                  const Text(
                    'Customer by Gender:',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  FullPieChart(
                      data: DataSample.getGenderData(
                          {'Male': 60, 'Female': 40})),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
