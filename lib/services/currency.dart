import 'networking.dart';

const String apiURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/";

class CurrencyModel {

  Future<dynamic> getCurrencyValue(String currencies) async {
    var url = apiURL+currencies;
    Networking networking =Networking(url);
    var data = await networking.getData();
    return data;
  }

}
