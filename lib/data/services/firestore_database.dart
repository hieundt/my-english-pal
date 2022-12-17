import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training_model.dart';

class FirestoreDatabaseService {
  final _collectionSkillTopic =
      FirebaseFirestore.instance.collection('skillTrainingTopics').snapshots();

  Stream<List<SkillTopic>> getAllSkillTopics() {
    return _collectionSkillTopic.map((snapshot) =>
        snapshot.docs.map((doc) => SkillTopic.fromMap(doc.data())).toList());
  }
}
