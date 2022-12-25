import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training.dart';

class FirestoreDatabaseService {
  final _fireStore = FirebaseFirestore.instance;

  Stream<SkillTraining> getSkillTopicsById(String topicId) async* {
    late final collectionSkillTopicById =
        _fireStore.collection('skill_training').doc(topicId).snapshots();

    yield* collectionSkillTopicById.asyncMap(
      (snapshot) async {
        final result = await SkillTraining.fromDocument(snapshot.data()!);
        return await Future.value(result);
      },
    );
  }

  Stream<List<SkillTraining>> getAllSkillTopics() async* {
    late final collectionSkillTopic =
        _fireStore.collection('skill_training').snapshots();

    yield* collectionSkillTopic.asyncMap(
      (snapshot) async {
        final result = snapshot.docs.map((doc) async {
          return await SkillTraining.fromDocument(doc.data());
        }).toList();
        return await Future.wait(result);
      },
    );
  }
}
