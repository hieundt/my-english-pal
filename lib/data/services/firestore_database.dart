import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training.dart';

class FirestoreDatabaseService {
  final _fireStore = FirebaseFirestore.instance;
  late final _collectionSkillTopic =
      _fireStore.collection('skill_training').snapshots();

  Stream<List<SkillTraining>> getAllSkillTopics() async* {
    yield* _collectionSkillTopic.asyncMap(
      (snapshot) async {
        final result = snapshot.docs.map((doc) async {
          return await SkillTraining.fromDocument(doc.data());
        }).toList();
        return await Future.wait(result);
      },
    );
  }
}
