import 'package:flutter/material.dart';

import 'package:myenglishpal_web/presentation/screens/quiz/quiz_view.dart';

// class QuizList extends StatelessWidget {
//   final List<SkillTopic> topics;
//   const QuizList({super.key, required this.topics});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: topics.map(
//         (topic) {
//           return Card(
//             shape:
//                 const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
//             elevation: 4,
//             margin: const EdgeInsets.all(4),
//             child: InkWell(
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (BuildContext context) => QuizView(
//                       topicId: topic.id,
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(8),
//                 child: ListTile(
//                   //* Tieu de
//                   title: Text(
//                     topic.id,
//                     style: Theme.of(context).textTheme.headline5,
//                   ),
//                   // subtitle: Text(
//                   //   topic.description,
//                   //   overflow: TextOverflow.fade,
//                   //   style: Theme.of(context).textTheme.subtitle2,
//                   // ),
//                   //leading: QuizBadge(topics: topics, quizId: topic.id),
//                 ),
//               ),
//             ),
//           );
//         },
//       ).toList(),
//     );
//   }
// }
