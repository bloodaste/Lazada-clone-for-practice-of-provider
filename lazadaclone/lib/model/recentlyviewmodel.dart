class Recentlyviewmodel {
  final String url;
  final String price;

  Recentlyviewmodel({required this.url, required this.price});
}

List<Recentlyviewmodel> recentlyviewmodel = [
  Recentlyviewmodel(
      url: 'https://emcor.com.ph/wp-content/uploads/2025/01/Y19S_Blue.jpg',
      price: '₱19000'),
  Recentlyviewmodel(
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7C8dJF-8uxFDLV8fn2IW6KXep4S3lCHS8Og&s',
      price: '₱20000'),
  Recentlyviewmodel(
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_6ixzcs7xgBl5Soh_N9op5xWruTgP_9CRZQ&s',
      price: '₱25000')
];
