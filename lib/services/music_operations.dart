import 'package:audioplayers/src/source.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:demo/models/music.dart';

class MusicOperations {
  MusicOperations._() {}
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'KAKA',
          'https://res.cloudinary.com/dtyrahuzy/image/upload/v1693906973/songs/Billo_20Bagge_20Billeyan_20Da_20Ki_20Karengi_20Lyrics_cx4uhv.jpg',
          'Billo  bagge billiyan the ki karegi',
          'https://res.cloudinary.com/dtyrahuzy/video/upload/v1693906861/songs/Billo_bagge_billiyan_da_ki_karegi_l_Kaka_New_Song_l_Kale_libaas_di_shokin_kudi_l_New_Punjabi_Song_ddbnsv.mp3'),
      Music(
          'Gully Boy',
          'https://c-cl.cdn.smule.com/rs-s95/arr/44/ec/a14c9db3-f454-4a86-80f0-ac9d42f6e87c_256.jpg',
          'Apna Time Aayega',
          'https://res.cloudinary.com/dtyrahuzy/video/upload/v1693907723/songs/Apna_Time_Aayega_Gully_Boy_Ranveer_Singh_Alia_Bhatt_DIVINE_Dub_Sharma_Zoya_Akhtar_asocyy.mp3'),
      Music(
          'Ae Dil Hai Mushkil ',
          'https://c-cl.cdn.smule.com/rs-s-sf-4/arr/5e/ac/80498fa2-60ab-4c61-bf43-61b3df15f546.jpg',
          'Ae Dil Hai Mushkil ',
          'https://res.cloudinary.com/dtyrahuzy/video/upload/v1693907715/songs/Ae_Dil_Hai_Mushkil_Title_Track_Full_Video_-_Ranbir_Anushka_AishwaryaArijitPritam_moosxd.mp3'),
      Music(
          'Bajirao Mastani',
          'https://c-cl.cdn.smule.com/rs-s92/arr/35/61/65d550a8-6d4e-4837-a067-c65b9e548ad7.jpg',
          'Malhari',
          'https://res.cloudinary.com/dtyrahuzy/video/upload/v1693907715/songs/Malhari_Full_Audio_Song_Bajirao_Mastani_Ranveer_Singh_kdntqz.mp3')
    ];
  }
}
