class ProductModel {
  final String productName;
  final bool isLazMall;
  final String productImage;
  final bool isDiscounted;
  final String discountedPrice;
  final String notDiscountedPrice;
  final String productSelected;
  final String sellerName; // 🆕

  const ProductModel({
    required this.productName,
    required this.isLazMall,
    required this.productImage,
    required this.isDiscounted,
    required this.discountedPrice,
    required this.notDiscountedPrice,
    required this.productSelected,
    required this.sellerName, // 🆕
  });
}

final List<ProductModel> productList = [
  ProductModel(
    productName: 'Attack Shark X3 Super Light Mouse',
    isLazMall: true,
    productImage:
        'https://img.lazcdn.com/g/p/c1635ec862a0c742218080956e33fdb7.jpg_720x720q80.jpg',
    isDiscounted: true,
    discountedPrice: '₱495.00',
    notDiscountedPrice: '₱595.00',
    productSelected: 'Black',
    sellerName: 'Attack Shark Official Store',
  ),
  ProductModel(
    productName: 'Logitech G Pro X Superlight',
    isLazMall: true,
    productImage:
        'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTt9GEy0V6TB4iYIgj0MMDU6ZBHtrFYhqZM0x9g7iPEg-RdC-6QMBqW8CQTPEyUnSbDL5IlJ6pkhD-YfOq1vPHu_8ru7uSoy1KXwuVdpZ1Q6ZTugtqEyp9wkw',
    isDiscounted: false,
    discountedPrice: '',
    notDiscountedPrice: '₱6,495.00',
    productSelected: 'White',
    sellerName: 'Logitech Flagship',
  ),
  ProductModel(
    productName: 'Razer DeathAdder Essential',
    isLazMall: false,
    productImage:
        'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSZvmrXKctvonbh4S_q6I0IhTdu9wXNfYPsKMnm1B4QwGM3ONhzDBaE7gwQGx-FKjxOWauirRe0uto9KfiOAMk9wRNsryEj9WXRAkXR1sQcgWBTy33P5ZKsbus',
    isDiscounted: true,
    discountedPrice: '₱899.00',
    notDiscountedPrice: '₱1,299.00',
    productSelected: 'Green',
    sellerName: 'Razer Store PH',
  ),
  ProductModel(
    productName: 'SteelSeries Rival 3',
    isLazMall: true,
    productImage:
        'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcROUCvyNAofvkWsXvrjAN8LNG2jtmZ36sP5rxfic-MDVzO13SWWh4ghA8HVF7IIoLZgsNezUuSfIrrWYgRwFhVPVvhTegyhMbgYlxUQJqnTTsyWZ_Q3MpSKFOk',
    isDiscounted: true,
    discountedPrice: '₱1,250.00',
    notDiscountedPrice: '₱1,599.00',
    productSelected: 'Black',
    sellerName: 'SteelSeries Official',
  ),
  ProductModel(
    productName: 'Glorious Model O Wireless',
    isLazMall: false,
    productImage:
        'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRV6HfEnH3fan4P31d_-L_MiqdJ-RqQxvx77bWr-ExonSVfCUrB91VTnj8vnSkTpugGV7cqmOVZtt3Myt5kNyU_UNb4eGRB4vZQ8xepcVX3GNPDXWQLIgr_',
    isDiscounted: false,
    discountedPrice: '',
    notDiscountedPrice: '₱3,999.00',
    productSelected: 'Matte White',
    sellerName: 'Glorious Gear Hub',
  ),
];
