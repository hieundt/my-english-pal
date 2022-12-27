import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary_topic.dart';

class SkillTrainingFirestoreDatabaseService {
  final _skillTrainingFireStore = FirebaseFirestore.instance;

  Stream<SkillTraining> getSkillTopicsById(String topicId) async* {
    late final collectionSkillTopicById = _skillTrainingFireStore
        .collection('skill_training')
        .doc(topicId)
        .snapshots();

    yield* collectionSkillTopicById.asyncMap(
      (snapshot) async {
        final result = await SkillTraining.fromDocument(snapshot.data()!);
        return await Future.value(result);
      },
    );
  }

  Stream<List<SkillTraining>> getAllSkillTopics() async* {
    late final collectionSkillTopic =
        _skillTrainingFireStore.collection('skill_training').snapshots();

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

class VocabularyFirestoreDatabaseService {
  final _vocabularyFireStore = FirebaseFirestore.instance;

  Stream<VocabularyTopic> getVocabularyTopicsById(String topicId) async* {
    late final collectionSkillTopicById = _vocabularyFireStore
        .collection('vocabulary_topic')
        .doc(topicId)
        .snapshots();

    yield* collectionSkillTopicById.asyncMap(
      (snapshot) async {
        final result = await VocabularyTopic.fromDocument(snapshot.data()!);
        return await Future.value(result);
      },
    );
  }

  Stream<List<VocabularyTopic>> getAllVocabularyTopics() async* {
    late final collectionSkillTopic =
        _vocabularyFireStore.collection('vocabulary_topic').snapshots();

    yield* collectionSkillTopic.asyncMap(
      (snapshot) async {
        final result = snapshot.docs.map((doc) async {
          return await VocabularyTopic.fromDocument(doc.data());
        }).toList();
        return await Future.wait(result);
      },
    );
  }
}
