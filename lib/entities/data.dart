import 'package:eaudelux/entities/branch.dart';
import 'package:eaudelux/entities/defect.dart';
import 'package:eaudelux/presentation/pages/widgets/full_pie_chart.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:eaudelux/presentation/pages/inventory_dashboard/widgets/restock_request.dart';

class DataSample {
  static const String urlDiorSauvage =
      'https://product.hstatic.net/1000340570/product/dior-sauvage-eau-de-toilette-100ml_36e992d44a0a445ca78551e4d54626f6_master.jpg';
  static const String urlDiorHomme =
      "https://product.hstatic.net/1000340570/product/dior-homme-_2020_-1_6c94dab996ba4d8582f6e0080652c934_master.jpg";
  static const String urlGucciBloom =
      "https://product.hstatic.net/1000340570/product/gucci_bloom_intense_f8d8a691e77b46758e53c399b83b2ddd_master.jpeg";
  static const String urlGucciGuilty =
      "https://product.hstatic.net/1000340570/product/gucci-guilty-pour-homme-eau-de-parfum-50ml_2079ce53f39f4878bc02340e93e457be_master.jpg";
  static const String urlTomFordBlackOrchid =
      "https://product.hstatic.net/1000340570/product/tom-ford-black-orchid_4af20be652c44080819ea9e7115f7852_master.jpg";
  static const String urlTomFordOudWood =
      "https://product.hstatic.net/1000340570/product/tom-ford-oud-wood-50ml_f13af8f727844b449ab792fee47d2f9a_master.jpg";
  static const String urlArmaniCode =
      "https://product.hstatic.net/1000340570/product/armani-code-for-women-edp_5a14dfd3f98f4f039ff81f48835d3e8b_master.jpg";
  static const String urlArmaniSi =
      "https://product.hstatic.net/1000340570/product/si-eau-de-parfum_2e2e9b13f4af443d9e91ed05c9f0aaa7_master.jpg";
  static const String urlYvesSaintLaurentBlackOpium =
      "https://product.hstatic.net/1000340570/product/nuoc-hoa-yves-saint-laurent-black-opium-neon-edp_644226317dbd460d975eef27c47f2f12_master.jpg";
  static const String urlYvesSaintLaurentBlackLibre =
      "https://product.hstatic.net/1000340570/product/libre-edt_6caa3634e13740c78c951a4b681c1ab6_master.jpg";
  static const String urlHermesTerreHermes =
      "https://theperfume.vn/wp-content/uploads/2017/04/Terre-dHermes-Parfum-1-340x340.jpg";
  static const String urlHermesVoyageHermes =
      "https://product.hstatic.net/200000201387/product/033cc2fb-3bbf-44df-89d7-ff78fde63cc4_dcf1e399a3cb41cd89df126ac91826f5_master.jpg";
  static const String urlVersaceEros =
      "https://theperfume.vn/wp-content/uploads/2018/10/Nuoc-hoa-Versace-Eros-EDT-200ml-e1672732873530.png";
  static const String urlVersaceBrightCrystal =
      "https://theperfume.vn/wp-content/uploads/2018/10/Nuoc-hoa-Versace-Bright-Crystal-EDT-200ml-e1672732873530.png";
  static const String urlPradaCandy =
      "https://product.hstatic.net/200000201387/product/prada_candy_b9ed819ae4fc42f987735459a9a9509d_master.jpg";
  static const String urlPradaLHomme =
      "https://product.hstatic.net/1000340570/product/prada_l_homme_bed9353469f54252bf93a2c3074f5824_master.jpg";
  static const String urlBurberryHer =
      "https://theperfume.vn/wp-content/uploads/2018/11/nuoc-hoa-burberry-her-eau-de-parfum-e1669705415981-340x340.png";
  static const String urlBurberryBrit =
      "https://theperfume.vn/wp-content/uploads/2017/11/Burberry-Brit-For-Her-5-e1673017491973-340x340.jpg";

  static List<RestockRequest> request = [
    RestockRequest(
        perfumeName: 'Chanel No. 5',
        requestedQuantity: 10,
        status: 'Not Taken',
        branch: 'A'),
    RestockRequest(
        perfumeName: 'Dior Sauvage',
        requestedQuantity: 5,
        status: 'Processing',
        branch: 'B'),
    RestockRequest(
        perfumeName: 'Dior Addict',
        requestedQuantity: 5,
        status: 'Finished',
        branch: 'C')
  ];

  static List<Perfume> perfumes = [
    Perfume(
        name: 'Dior Sauvage',
        stock: [10, 5, 5],
        price: [95.0, 100.0, 110.0],
        unitCost: [40.0, 45.0, 50.0],
        sizes: [3.0, 5.0, 6.4],
        brand: Brand(name: 'Dior'),
        sizeType: 'ml',
        description:
            'A bold, fresh, and earthy fragrance that combines the ruggedness of the wild with refined elegance. With notes of bergamot, pepper, and ambroxan, Dior Sauvage offers a timeless scent for confident men.',
        branchData: {
          "A": BranchPerfumeData(
            sold: [12, 0, 0], // Ensure length = 3
            storage: [10, 0, 0], // Ensure length = 3
            sizes: [95.0, 0, 0], // Ensure length = 3
            isShippingFromStock: [12, 0, 0], // Ensure length = 3
          ),
          "B": BranchPerfumeData(
            sold: [20, 0, 0],
            storage: [2, 0, 0],
            sizes: [95.0, 0, 0],
            isShippingFromStock: [12, 0, 0],
          ),
          "C": BranchPerfumeData(
            sold: [12, 0, 0],
            storage: [10, 0, 0],
            sizes: [95.0, 0, 0],
            isShippingFromStock: [12, 0, 0],
          ),
        },
        imageUrl: urlDiorSauvage,
        receiveFromBrand: [10, 5, 5],
        defects: [
          Defect(
              defectiveUnits: 2,
              defectReason: "Damaged packaging",
              defectResolved: false,
              defectCase: "After receive shipment from storage",
              defectDate: DateTime.now().toString(),
              fromBranch: "A"),
          Defect(
            defectiveUnits: 1,
            defectReason: "Leaking bottle",
            defectResolved: true,
            defectCase: "During checking product quality for processing order",
            defectDate: DateTime.now().toString(),
          ),
        ]),
    Perfume(
      name: 'Dior Homme',
      stock: [20, 15, 20],
      price: [105.0, 110.0, 115.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Dior'),
      sizeType: 'ml',
      description:
          'An intense, masculine scent that combines the ruggedness of the wild with refined elegance. With notes of bergamot, pepper, and ambroxan, Dior Homme offers a timeless scent for confident men.',
      imageUrl: urlDiorHomme,
      branchData: {
        "A": BranchPerfumeData(
          sold: [12, 0, 0], // Ensure length = 3
          storage: [10, 0, 0], // Ensure length = 3
          sizes: [95.0, 0, 0], // Ensure length = 3
          isShippingFromStock: [12, 0, 0], // Ensure length = 3
        ),
        "B": BranchPerfumeData(
          sold: [20, 0, 0],
          storage: [2, 0, 0],
          sizes: [95.0, 0, 0],
          isShippingFromStock: [12, 0, 0],
        ),
        "C": BranchPerfumeData(
          sold: [12, 0, 0],
          storage: [10, 0, 0],
          sizes: [95.0, 0, 0],
          isShippingFromStock: [12, 0, 0],
        ),
      },
      receiveFromBrand: [0, 0, 2],
    ),
    Perfume(
      name: 'Gucci Bloom',
      stock: [20, 15, 15],
      price: [80.0, 85.0, 90.0],
      unitCost: [40.0, 42.0, 45.0],
      sizes: [30.0, 50.0, 75.0],
      brand: Brand(name: 'Gucci'),
      sizeType: 'ml',
      description:
          'A fresh, floral fragrance that captures the essence of nature and femininity. With notes of lavender, rose, and orchid, Gucci Bloom offers a feminine and floral scent for women.',
      branchData: {
        "A": BranchPerfumeData(
            sold: [10, 12, 8],
            storage: [20, 15, 15],
            sizes: [30.0, 50.0, 75.0],
            isShippingFromStock: [10, 12, 8]),
        "B": BranchPerfumeData(
            sold: [10, 12, 8],
            storage: [20, 15, 15],
            sizes: [30.0, 50.0, 75.0],
            isShippingFromStock: [10, 12, 8]),
        "C": BranchPerfumeData(
            sold: [10, 12, 8],
            storage: [20, 15, 15],
            sizes: [30.0, 50.0, 75.0],
            isShippingFromStock: [10, 12, 8]),
      },
      imageUrl: urlGucciBloom,
      receiveFromBrand: [10, 10, 8],
      defects: [],
    ),
    Perfume(
      name: 'Gucci Guilty',
      stock: [25, 20, 10],
      price: [90.0, 95.0, 100.0],
      unitCost: [50.0, 52.0, 55.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Gucci'),
      sizeType: 'ml',
      description:
          'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      branchData: {
        "A": BranchPerfumeData(
            sold: [18, 15, 17],
            storage: [25, 20, 10],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [18, 15, 17]),
        "B": BranchPerfumeData(
            sold: [18, 15, 17],
            storage: [25, 20, 10],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [18, 15, 17]),
        "C": BranchPerfumeData(
            sold: [18, 15, 17],
            storage: [25, 20, 10],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [18, 15, 17]),
      },
      imageUrl: urlGucciGuilty,
      receiveFromBrand: [10, 12, 15],
      defects: [],
    ),
    Perfume(
      name: 'Tom Ford Black Orchid',
      stock: [10, 8, 8],
      price: [145.0, 150.0, 155.0],
      unitCost: [75.0, 78.0, 80.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Tom Ford'),
      sizeType: 'ml',
      description:
          'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      branchData: {
        "A": BranchPerfumeData(
            sold: [5, 8, 7],
            storage: [10, 8, 8],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [5, 8, 7]),
        "B": BranchPerfumeData(
            sold: [5, 8, 7],
            storage: [10, 8, 8],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [5, 8, 7]),
        "C": BranchPerfumeData(
            sold: [5, 8, 7],
            storage: [10, 8, 8],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [5, 8, 7]),
      },
      imageUrl: urlTomFordBlackOrchid,
      receiveFromBrand: [6, 5, 5],
      defects: [],
    ),
    Perfume(
      name: 'Tom Ford Oud Wood',
      stock: [5, 3, 2],
      price: [120.0, 125.0, 130.0],
      unitCost: [80.0, 85.0, 90.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Tom Ford'),
      sizeType: 'ml',
      description:
          'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      branchData: {
        "A": BranchPerfumeData(
            sold: [2, 3, 5],
            storage: [5, 3, 2],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [2, 3, 5]),
        "B": BranchPerfumeData(
            sold: [2, 3, 5],
            storage: [5, 3, 2],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [2, 3, 5]),
        "C": BranchPerfumeData(
            sold: [2, 3, 5],
            storage: [5, 3, 2],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [2, 3, 5]),
      },
      imageUrl: urlTomFordOudWood,
      receiveFromBrand: [5, 5, 5],
      defects: [],
    ),
    Perfume(
      name: 'Armani Code',
      stock: [5, 4, 5],
      price: [95.0, 100.0, 105.0],
      unitCost: [60.0, 62.0, 65.0],
      sizes: [30.0, 50.0, 100.0],
      brand: Brand(name: 'Armani'),
      sizeType: 'ml',
      description:
          'A sensual, woody fragrance that captures the essence of femininity and mystery. With notes of cedar, violet, and musk, Gucci Guilty offers a feminine and sensual scent for women.',
      branchData: {
        "A": BranchPerfumeData(
            sold: [3, 5, 2],
            storage: [5, 4, 5],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [3, 5, 2]),
        "B": BranchPerfumeData(
            sold: [3, 5, 2],
            storage: [5, 4, 5],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [3, 5, 2]),
        "C": BranchPerfumeData(
            sold: [3, 5, 2],
            storage: [5, 4, 5],
            sizes: [30.0, 50.0, 100.0],
            isShippingFromStock: [3, 5, 2]),
      },
      imageUrl: urlArmaniCode,
      receiveFromBrand: [2, 2, 3],
      defects: [],
    ),
  ];

  Map<String, double> genderRatioData = {'male': 60, 'female': 40};

static List<PieChartDataModel> getGenderData(
    Map<String, double> genderRatioData) {
  return genderRatioData.entries.map((e) {
    return PieChartDataModel(
      value: e.value,
      color: e.key.toLowerCase() == 'male' ? AppColors.blueDeFrance : AppColors.pinkSpyro,
      title: '${e.value}%',
      iconPath: e.key.toLowerCase() == 'male'
          ? 'assets/icons/pngs/man.png'
          : 'assets/icons/pngs/woman.png',
    );
  }).toList();
}

  Map<String, double> ageGroupData = {
  '18-25': 30,
  '26-35': 40,
  '36-45': 20,
  '46+': 10
};

  static List<PieChartDataModel> getAgeGroupData(Map<String, double> ageGroupData) {
  return ageGroupData.entries.map((e) {
    return PieChartDataModel(
      value: e.value,
      color: _getAgeGroupColor(e.key),
      title: '${e.value}%',
      iconPath: _getAgeGroupIcon(e.key),
    );
  }).toList();
}

static Color _getAgeGroupColor(String ageGroup) {
  switch (ageGroup) {
    case '18-25':
      return AppColors.karimunBlue; // Example color for age group 18-25
    case '26-35':
      return AppColors.brightLightGreen; // Example color for age group 26-35
    case '36-45':
      return AppColors.circus; // Example color for age group 36-45
    case '46+':
      return AppColors.bethlehemRed; // Example color for age group 46+
    default:
      return AppColors.goshawkGrey; // Default color if age group is unknown
  }
}

static String _getAgeGroupIcon(String ageGroup) {
  switch (ageGroup) {
    case '18-25':
      return 'assets/icons/pngs/young_adult.png'; // Replace with an appropriate icon for young adults
    case '26-35':
      return 'assets/icons/pngs/adult.png'; // Replace with an appropriate icon for adults
    case '36-45':
      return 'assets/icons/pngs/mature_adult.png'; // Replace with an appropriate icon for mature adults
    case '46+':
      return 'assets/icons/pngs/senior.png'; // Replace with an appropriate icon for seniors
    default:
      return 'assets/icons/pngs/default.png'; // Default icon if the group is unknown
  }
}

  static List<Perfume> getPerfumes() {
    return perfumes;
  }

  static List<RestockRequest> getRestockRequests() => request;

  static List<String> getBrands() {
    List<String> brands =
        perfumes.map((perfume) => perfume.brand.name).toSet().toList();
    return brands;
  }

  static List<String> getSizeTypes() {
    return ['ml', 'oz'];
  }

  static List<String> inventoryRoles = [
    'Operation Director',
    'Operation Manager',
    'Operation Staff'
  ];

  static String getInventoryRole(int index) => inventoryRoles[index];

  static List<String> salesRoles = [
    'Sales Director',
    'Sales Manager',
    'Sales Staff'
  ];

  static String getSalesRole(int index) => salesRoles[index];
}