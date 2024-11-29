import 'package:eaudelux/entities/branch.dart';
import 'package:eaudelux/entities/defect.dart';
import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:eaudelux/presentation/widgets/restock_request.dart';

class DataSample {
  static const String urlDiorSauvage =
      'https://www.dior.com/dw/image/v2/BGXS_PRD/on/demandware.static/-/Library-Sites-DiorSharedLibrary/default/dw7a190948/images/beauty/01-FRAGRANCES/2024/RENO_SAUVAGE/SVG_EF_Mood_Hero-Solo_3000x3000-1.jpg?sw=640';
  static const String urlDiorHomme =
      "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2024/05/nuoc-hoa-nam-dior-homme-ban-2020-edp-intense-100ml-664c122bb34e9-21052024101659.jpg";
  static const String urlGucciBloom =
      "https://media.gucci.com/style/DarkGray_Center_0_0_2400x2400/1545327905/488830_99999_0099_001_100_0000_Light-Gucci-Bloom-100ml-eau-de-parfum.jpg";
  static const String urlGucciGuilty =
      "https://product.hstatic.net/1000340570/product/gucci-guilty-pour-homme-eau-de-parfum-50ml_2079ce53f39f4878bc02340e93e457be_master.jpg";
  static const String urlTomFordBlackOrchid =
      "https://theperfume.vn/wp-content/uploads/2017/07/Tom-Ford-Black-Orchid-4-1-e1667273535459-340x340.jpg";
  static const String urlTomFordOudWood =
      "https://theperfume.vn/wp-content/uploads/2021/01/Nuoc-hoa-Tom-Ford-Oud-Wood-100ml-340x340.jpg";
  static const String urlArmaniCode =
      "https://cdn.vuahanghieu.com/unsafe/0x900/left/top/smart/filters:quality(90)/https://admin.vuahanghieu.com/upload/product/2024/05/nuoc-hoa-nam-giorgio-armani-code-parfum-125ml-663c33cf75b57-09052024092415.jpg";
  static const String urlArmaniSi =
      "https://product.hstatic.net/1000340570/product/si-eau-de-parfum_2e2e9b13f4af443d9e91ed05c9f0aaa7_master.jpg";
  static const String urlYvesSaintLaurentBlackOpium =
      "https://theperfume.vn/wp-content/uploads/2022/02/Black-Opium-Extreme-EDP-1-340x340.jpg";
  static const String urlYvesSaintLaurentBlackLibre =
      "https://theperfume.vn/wp-content/uploads/2021/11/Nuoc-hoa-YSL-Libre-90ml-e1670840224326-300x300.png";
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

  static List<String> roles = [
    'Operation Director',
    'Operation Manager',
    'Operation Staff'
  ];

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
        sizes: [3, 5, 6.4],
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

  static String getRole(int index) => roles[index];
}
