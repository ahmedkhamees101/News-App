
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:news_app/model/source_respose.dart';
import 'package:news_app/shared/components/constants.dart';

class ApiManager{
 static Future <SourcesResponse> getResource()async{
  Uri url= Uri.https(base,"/v2/top-headlines/sources",{
    "apiKey":apiKey
  });
         http.Response response=await http.get(url);

        var jsonResponse= jsonDecode(response.body);
        SourcesResponse sourcesResponse = SourcesResponse.fromJson(jsonResponse);
        return sourcesResponse;
  }
}