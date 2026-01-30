import 'dart:convert';
import 'dart:io';


  String fileName = 'product.json';


    main ()  async {

    Map<String , dynamic> product = {
      'id': 1 ,
      'productName': 'Mobile' ,
      'storage': 256
    };


    String  productJson = jsonEncode(product);
    writeJson(productJson);

    //
    String getProduct =  await readJson();
    Map<String , dynamic> data = jsonDecode(getProduct);
    print(data);


  }


  Future<String> readJson () async{
    final file = File(fileName);
    if( await file.exists()){
      return await file.readAsString();

    }else{
      return 'Error';
    }
  }

  Future<void> writeJson (String json) async {
    final file = File(fileName);
    await file.writeAsString(json);
    print('json Added');
  }


