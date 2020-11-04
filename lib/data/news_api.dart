import 'package:dio/dio.dart';
import 'package:news_app/constant/constant.dart';


class NewsApi {
  Response response;
  // GET Everything Request:----------------------------------------------------
  void getEverything() async {

    try {

      Dio dio = new Dio();
      response = await dio.get(Constants.everythingEndPoint);
      print(
        response.data.toString(),
      );
    } catch (e) {
      print(e);
    }
    return response.data;
  }





  // GET Top Headlines Request:-------------------------------------------------
  void getTopHeadlines() async {
    try{
      Dio dio = Dio();

      response = await dio.get(Constants.topHeadlinesEndPoint);
      print(
        response.data.toString(),
      );
    }catch(e){
      print(e);
    }
    return response.data;
  }

}
