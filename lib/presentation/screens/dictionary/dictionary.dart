import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/dictionary/dictionary_model.dart';
import 'package:myenglishpal_web/data/services/dictionary_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();

  AudioPlayer? audioPlayer;
  String phonticsText = '';
  @override
  void initState() {
    super.initState();
    setState(() {
      audioPlayer = AudioPlayer();
    });
  }

  void playAudio(String music) {
    audioPlayer!.stop();

    audioPlayer!.play(UrlSource(music));
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dictionary App'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller,
                            decoration: const InputDecoration(
                              label: Text('Search Query'),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            if (controller.text.isNotEmpty) {
                              setState(() {});
                            }
                          },
                          icon: const Icon(Icons.search),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ///FutureBuilder
                  controller.text.isEmpty
                      ? const SizedBox(child: Text('Search for something'))
                      : FutureBuilder(
                          future: DictionaryService()
                              .getMeaning(word: controller.text),
                          builder: (context,
                              AsyncSnapshot<List<DictionaryModel>> snapshot) {
                            if (snapshot.hasData) {
                              return Expanded(
                                child: ListView(
                                  children: List.generate(snapshot.data!.length,
                                      (index) {
                                    final data = snapshot.data![0];

                                    if (data.phonetics![0].text == null) {
                                      phonticsText = "";
                                    } else {
                                      phonticsText = data.phonetics![0].text!;
                                    }

                                    return Column(
                                      children: [
                                        ListTile(
                                          title: Text(data.word!),
                                          subtitle: Text(phonticsText),
                                          trailing: IconButton(
                                              onPressed: () {
                                                final path = data
                                                    .phonetics![index].audio;

                                                playAudio("$path");
                                                log("$path");
                                              },
                                              icon:
                                                  const Icon(Icons.audiotrack)),
                                        ),
                                        ListTile(
                                          title: Text(data.meanings![index]
                                              .definitions![index].definition!),
                                          subtitle: Text(data
                                              .meanings![index].partOfSpeech!),
                                        ),
                                      ],
                                    );
                                  }),
                                ),
                              );
                            } else if (snapshot.hasError) {
                              return Text(snapshot.error.toString());
                            } else {
                              return const CircularProgressIndicator();
                            }
                          },
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
