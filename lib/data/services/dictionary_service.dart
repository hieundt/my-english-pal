import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:myenglishpal_web/data/model/dictionary/dictionary_model.dart';

// ignore: non_constant_identifier_names
String URL = 'https://api.dictionaryapi.dev/api/v2/entries/en';

class DictionaryService {
  Future<List<DictionaryModel>> getMeaning({String? word}) async {
    final url = "$URL/$word";
    try {
      final req = await http.get(Uri.parse(url));

      if (req.statusCode == 200) {
        final dictionaryModel = dictionaryModelFromJson(req.body);
        return dictionaryModel;
      } else {
        final dictionaryModel = dictionaryModelFromJson(req.body);

        return dictionaryModel;
      }
    } on SocketException catch (_) {
      return Future.error('No network found');
    } catch (_) {
      return Future.error('Something occured');
    }
  }
}
