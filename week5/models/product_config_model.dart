class ProductConfig{ // oluştuğunda otomatik olarak bizim değer verdiğimiz singleton
  static final ProductConfig instance = ProductConfig._('a');

  final String apiKey ; 

  ProductConfig._(this.apiKey);
  
}

class ProductLazySingleton{  //ilk değeri null olan bir singleton
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance{
    if(_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}