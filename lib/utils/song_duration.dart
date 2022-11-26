String songDuration(int duration, String min, String sec) {
  final minutes = duration ~/ 60;
  final seconds = duration % 60;

  return '${minutes}$min ${seconds}$sec';
}
