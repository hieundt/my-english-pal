import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training_model.dart';

class FirestoreDatabaseService {
  final FirebaseFirestore _collectionSkillTopic = FirebaseFirestore.instance;

  /// Reads all documments from the topics collection
  Future<List<SkillTopic>> getSkillTopics() async {
    var ref = _collectionSkillTopic.collection('skillTrainingTopics');
    var snapshot = await ref.get();
    var data = snapshot.docs.map((s) => s.data());
    var topics = data.map((d) => SkillTopic.fromJson(d));
    return topics.toList();
  }

  /// Retrieves a single quiz document
  Future<SkillTopic> getTopicQuiz(String topicId) async {
    var ref =
        _collectionSkillTopic.collection('skillTrainingTopics').doc(topicId);
    var snapshot = await ref.get();
    return SkillTopic.fromJson(snapshot.data() ?? {});
  }
}
