import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/quizz/quiz_models.dart';

class FirestoreDatabaseService {
  final FirebaseFirestore _database = FirebaseFirestore.instance;

  Future<Quiz> getQuiz(String quizId) async {
    var ref = _database.collection('part_1').doc(quizId);
    var snapshot = await ref.get();
    return Quiz.fromJson(snapshot.data() ?? {});
  }
}
