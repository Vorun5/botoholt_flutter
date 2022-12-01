import 'dart:math';

final _random = Random();

const _danceEmote = [
  'assets/dance/pepeJAM.gif',
  'assets/dance/RainbowPls.gif',
  'assets/dance/PartyKirby.gif',
  'assets/dance/peepoDJ.gif',
  'assets/dance/danceFrog.gif',
  'assets/dance/kumaPls.gif',
  'assets/dance/blobDance.gif',
  'assets/dance/CrabPls.gif',
  'assets/dance/catRAVE.gif',
  'assets/dance/Dance.gif',
  'assets/dance/ayayaJAM.gif',
  'assets/dance/AnimeDance.gif',
  'assets/dance/Pepeguitar.gif',
];

String randomDanceEmote() =>
    _danceEmote.toList()[_random.nextInt(_danceEmote.length)];
