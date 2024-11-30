import '../../widgets/import_packages.dart';

class TrendPredictPage extends StatefulWidget {
  const TrendPredictPage({super.key});

  @override
  State<TrendPredictPage> createState() => _TrendPredictPageState();
}

class _TrendPredictPageState extends State<TrendPredictPage> {
  late double deviceWidth, deviceHeight;
  late Size appBarSize, deviceSize, bodySize;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    appBarSize = Size(deviceWidth, deviceHeight * 0.1);
    bodySize = Size(deviceWidth, deviceHeight * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
      preferredSize: Size(appBarSize.width, appBarSize.height),
      child: SalesAppBar(appBarSize: appBarSize, role: 'CEO'),
    ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Customer Prediction Chart
            Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    const Text(
                      'Visualizing customer buy perfume by gender',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                        height: 300,
                        width: deviceWidth*0.5,
                        child: const CustomerPredictionChart()
                    ),
                    SizedBox(
                      width: deviceWidth*0.5,
                      child: const Text(
                        '''
                        
                        
                        Summary Analysis of Perfume Purchases by Gender
                        
                        Recent sales data reveals:
                        - 74% of perfume purchases are made by female customers.
                        - 26% are made by male customers.
                        
                        Recommendations:
                        
                        1. Prioritize Women's Perfumes:
                        2. Targeted Marketing for Female Customers:
                        3. Maintain Men's Fragrance Selection:
                        4. Introduce Unisex Fragrances:
                        
                        ''',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              
              ),
            ),
        
            const Divider(),
            // Most Bought Sizes Chart
            Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Visualizing size trends of all fragrances',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                        height: 500,
                        width: deviceWidth*0.5,
                        child: MostBoughtSizesChart()
                    ),
                    SizedBox(
                      width: deviceWidth*0.5,
                      child: const Text(
                        '''
                        
                        
        Analysis of Most Bought Perfume Sizes
        Recent sales data from the bar chart indicates the popularity of different perfume sizes among customers:
        
        Key Notice
        
        1. 4.0 Oz is the Most Purchased Size
        2. Medium Sizes Show Strong Sales
        3. Lower Demand for Smallest and Largest Sizes
        
        Recommendations
        
        1. Prioritize Stock of 4.0 Oz Perfumes
        2. Promote Medium Sizes (3.2 Oz and 2.4 Oz)
        3. Assess Smallest and Largest Sizes
        4. Understand Customer Preferences
        
        Conclusion
        
        The data indicates a clear customer preference for the 4.0 Oz perfume size, with medium sizes also performing well. Focusing on stocking and promoting these sizes can enhance sales and customer satisfaction. Reevaluating the demand for smaller and the largest sizes will help optimize inventory and reduce costs. Understanding customer motivations through feedback will further inform strategic decisions.
        ''',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
              
                  ],
                ),
              ),
            ),
        
            const Divider(),
            // Product Trends Chart
            Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Text(
                      'Visualizing product trends that is bought the most',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                        height: 500,
                        width: deviceWidth*0.5,
                        child: const ProductTrendsChart()
                    ),
                    SizedBox(
                      width: deviceWidth*0.5,
                      child: const Text(
                        '''
                        
                        
        Analysis of Top-Selling Perfume Products
        Recent sales data from the bar chart indicates the following units sold for each perfume:
        
        Key Notice
        
        1. Nautica is the Best-Seller (88 unit sold)
        
        2. Strong Performance by Luxury Brands (e.g. Iris De Fath, Bleu De Chanel, and Black Carolina Herrera)
        
        3. Lower Sales for Some Brands (e.g Roja Elysium, Dior, EDT, etc.)
        
        Recommendations
        
        1. Prioritize Stocking Nautica
        2. Enhance Marketing for Luxury Brands
        3. Assess and Improve Lower-Selling Brands
        
        Conclusion
        By focusing on the best-selling perfumes like Nautica and strong luxury brands, and addressing the lower sales of other fragrances, you can optimize your inventory and marketing strategies to enhance overall sales performance.
        ''',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
