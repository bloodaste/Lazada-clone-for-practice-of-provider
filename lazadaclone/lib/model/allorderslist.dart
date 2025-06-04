class Allorderslist {
  final String image;
  final String quantity;
  final String price;
  final String priceaftervoucher;
  final String orderstatus;
  final String sellername;
  final String productname;

  Allorderslist({
    required this.image,
    required this.price,
    required this.priceaftervoucher,
    required this.quantity,
    required this.orderstatus,
    required this.sellername,
    required this.productname,
  });
}

final List<Allorderslist> allOrders = [
  Allorderslist(
    image:
        'https://publish.purewow.net/wp-content/uploads/sites/2/2021/03/random-but-useful-beauty-products-vegamour.jpg?fit=680%2C489',
    quantity: '1',
    price: '₱999',
    priceaftervoucher: '₱899',
    orderstatus: 'To Pay',
    sellername: 'HealthMart',
    productname: 'Blood Pressure Monitor BP105',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '2',
    price: '₱1599',
    priceaftervoucher: '₱1399',
    orderstatus: 'To Ship',
    sellername: 'MediShop',
    productname: 'Thermometer Digital Pro',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShjUgi5XiLNmwTOXwz1syVrIhnL-uphRg1FQ&s',
    quantity: '1',
    price: '₱699',
    priceaftervoucher: '₱599',
    orderstatus: 'Completed',
    sellername: 'PharmaHub',
    productname: 'Nebulizer Compact',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNq5Yv2onY9qVBCxUT2WdNEB4ovibGXVpG0w&s',
    quantity: '3',
    price: '₱2999',
    priceaftervoucher: '₱2799',
    orderstatus: 'Cancelled',
    sellername: 'CarePlus',
    productname: 'First Aid Kit 50pcs',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '1',
    price: '₱1299',
    priceaftervoucher: '₱1099',
    orderstatus: 'To Pay',
    sellername: 'WellnessStore',
    productname: 'Infrared Thermometer X1',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '5',
    price: '₱4999',
    priceaftervoucher: '₱4599',
    orderstatus: 'To Ship',
    sellername: 'Medicare PH',
    productname: 'Oximeter Fingertip PRO',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '1',
    price: '₱599',
    priceaftervoucher: '₱499',
    orderstatus: 'Completed',
    sellername: 'RxOnline',
    productname: 'Face Mask Pack (50pcs)',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '4',
    price: '₱3999',
    priceaftervoucher: '₱3699',
    orderstatus: 'Pending',
    sellername: 'VitaCart',
    productname: 'Blood Sugar Monitor Kit',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '2',
    price: '₱1099',
    priceaftervoucher: '₱999',
    orderstatus: 'Cancelled',
    sellername: 'Medixx',
    productname: 'Vitamin C 1000mg 60 Tablets',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT503nhjL-mhS_TRv8aSQqQe7a02W_hcp_08g&s',
    quantity: '6',
    price: '₱6499',
    priceaftervoucher: '₱5999',
    orderstatus: 'To Ship',
    sellername: 'LifeCare',
    productname: 'Wheelchair Foldable',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5F_1RVEx-WylODDWR1RZRU-gl3iUVVu5NpA&s',
    quantity: '1',
    price: '₱899',
    priceaftervoucher: '₱849',
    orderstatus: 'Refund/Return',
    sellername: 'MediNow',
    productname: 'Handheld Pulse Massager',
  ),
  Allorderslist(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9ujvcnRTScS6pSAR9dxFl-YZia_kSltkctw&s',
    quantity: '1',
    price: '₱799',
    priceaftervoucher: '₱749',
    orderstatus: 'To Review',
    sellername: 'WellnessCare',
    productname: 'Massage Gun Pro X',
  ),
];
