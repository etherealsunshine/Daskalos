import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'ppk80hck': {
      'en': 'HomePage',
      'hi': '',
    },
    'pd1flbca': {
      'en': 'Children Data',
      'hi': '',
    },
    'hlb5v0nl': {
      'en': 'Home',
      'hi': '',
    },
  },
  // SignUpPage
  {
    'rujd0wlm': {
      'en': 'Enter Phone No',
      'hi': '',
    },
    '3nh8e6w8': {
      'en': 'Verify OTP',
      'hi': '',
    },
    '5rd7veyv': {
      'en': 'Or Sign Up with email\n',
      'hi': '',
    },
    'w4qi5oz0': {
      'en': 'mobile sign up',
      'hi': '',
    },
    'sbxzw7cp': {
      'en': 'Home',
      'hi': '',
    },
  },
  // VerificationPage
  {
    '6ua9zy5u': {
      'en': 'Confirm your Code',
      'hi': '',
    },
    'lhazb87p': {
      'en': 'This code helps keep your account safe and secure.',
      'hi': '',
    },
    'arlh8vxe': {
      'en': 'Confirm & Continue',
      'hi': '',
    },
    'btddzcte': {
      'en': 'Verification',
      'hi': '',
    },
    '4i3lavku': {
      'en': 'Home',
      'hi': '',
    },
  },
  // ProfileIntroDataPage
  {
    'd7k362eo': {
      'en': 'Child\'s name',
      'hi': '',
    },
    'poi47u62': {
      'en': 'Age',
      'hi': '',
    },
    'jutqfyfc': {
      'en': 'Disorder',
      'hi': '',
    },
    'pq18rr5l': {
      'en': 'Autism',
      'hi': '',
    },
    '0dsgms6v': {
      'en': 'ADHD',
      'hi': '',
    },
    '3ahiexbg': {
      'en': 'Dyslexia',
      'hi': '',
    },
    '0wjkyso2': {
      'en': 'Down Syndrome',
      'hi': '',
    },
    'h3qx1vjd': {
      'en': 'Cerebral Palsy',
      'hi': '',
    },
    '2k4d6i5c': {
      'en': 'Disorder',
      'hi': '',
    },
    'ntgcxqe6': {
      'en': 'Not Diagnosed',
      'hi': '',
    },
    'jtykscaz': {
      'en': 'Disorder',
      'hi': '',
    },
    '2saacr5m': {
      'en': 'Parent Name',
      'hi': '',
    },
    'ceu6agp1': {
      'en': 'Contact No',
      'hi': '',
    },
    'a32uxwn2': {
      'en': '',
      'hi': '',
    },
    'ywradask': {
      'en': 'Enter your concern',
      'hi': '',
    },
    'sql7o7v6': {
      'en': 'Date of Birth',
      'hi': '',
    },
    '5jvdpnlu': {
      'en': 'Pick',
      'hi': '',
    },
    '14s898wr': {
      'en': 'Are you an Instructor?',
      'hi': '',
    },
    'i3o3jhj6': {
      'en': 'Enter Centre code',
      'hi': '',
    },
    '0avz42je': {
      'en': 'Click for Instructor SignUp ',
      'hi': '',
    },
    'od1ykns0': {
      'en': 'Save Changes',
      'hi': '',
    },
    'r2m6d42q': {
      'en': 'Details',
      'hi': '',
    },
  },
  // Activities
  {
    'eg2m58ws': {
      'en': 'Vocabulary',
      'hi': '',
    },
    'xp3h1g7v': {
      'en': 'Self Help',
      'hi': '',
    },
    'eyfdslan': {
      'en': 'Communication',
      'hi': '',
    },
    'tuuq2wmz': {
      'en': 'Music',
      'hi': '',
    },
    '26f86dml': {
      'en': 'Activities',
      'hi': '',
    },
    'sx0jil45': {
      'en': 'Activities\n',
      'hi': '',
    },
  },
  // ChildrenName
  {
    'ichar3uh': {
      'en': 'Kid Information',
      'hi': '',
    },
    'dbp466l0': {
      'en': 'Home',
      'hi': '',
    },
  },
  // ChildInfoPage
  {
    'qkmpbbvo': {
      'en': '[Some hint text...]',
      'hi': '',
    },
    '6ajd2o6e': {
      'en': '[Some hint text...]',
      'hi': '',
    },
    'h911t3wx': {
      'en': 'Add today\'s session review',
      'hi': '',
    },
    'wkbn3z7k': {
      'en': 'Update Logs',
      'hi': '',
    },
    '8c3yyny6': {
      'en': 'Home',
      'hi': '',
    },
  },
  // LettersList
  {
    'zcfvdjct': {
      'en': 'Vocabulary',
      'hi': '',
    },
    'wj2reia2': {
      'en': 'Letter A',
      'hi': '',
    },
    'jlqvxd1z': {
      'en': 'Letter E',
      'hi': '',
    },
    'xacvhwq4': {
      'en': 'Letter O',
      'hi': '',
    },
    '78oudkk8': {
      'en': 'Letter I',
      'hi': '',
    },
    'w6dxwfyr': {
      'en': 'Letter U',
      'hi': '',
    },
    '7lkucq2v': {
      'en': 'Redo',
      'hi': '',
    },
    'cd94xl3r': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Vocab_A
  {
    'oabh4dlq': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
    },
    'vzfrich9': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
    },
    'tc3frk4m': {
      'en': 'Letter A',
      'hi': 'एक पत्र',
    },
    'jmkuknhg': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Settings
  {
    '13uikwss': {
      'en': 'Your Name',
      'hi': '',
    },
    '839w2mgn': {
      'en': 'Email Address',
      'hi': '',
    },
    'diifzw2r': {
      'en': 'Save Changes',
      'hi': '',
    },
    '2cvvnkmk': {
      'en': 'Delete User',
      'hi': '',
    },
    'efrjeoyt': {
      'en': 'Log Out',
      'hi': '',
    },
    'cjpxw9vx': {
      'en': 'Edit Profile',
      'hi': '',
    },
    '2rgjmi1j': {
      'en': 'Settings',
      'hi': '',
    },
  },
  // UpdateChildProgress
  {
    'yx4p2cmc': {
      'en': 'Reviews',
      'hi': '',
    },
    'rsodxupz': {
      'en': 'Previous Sessions',
      'hi': '',
    },
    'a94q5mh3': {
      'en': 'Hello World',
      'hi': '',
    },
  },
  // SelfHelp
  {
    '9mwe1c4q': {
      'en': 'Self Help',
      'hi': '',
    },
    'lom0qxrp': {
      'en': 'Home',
      'hi': '',
    },
  },
  // VocabE
  {
    'x2rtp95r': {
      'en': 'Hello World',
      'hi': '',
    },
    'ueyjvcos': {
      'en': 'Hello World',
      'hi': '',
    },
    'w7if0jbb': {
      'en': 'Letter E',
      'hi': '',
    },
    '4o6weaqm': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Letter_O
  {
    's4c79b52': {
      'en': 'Hello World',
      'hi': '',
    },
    '4k4yw0mz': {
      'en': 'Hello World',
      'hi': '',
    },
    'f0fdjzbe': {
      'en': 'Letter O',
      'hi': '',
    },
    'd6zpxtqa': {
      'en': 'Home',
      'hi': '',
    },
  },
  // letter_U
  {
    'mtrmho80': {
      'en': 'Hello World',
      'hi': '',
    },
    'wta4o4ei': {
      'en': 'Hello World',
      'hi': '',
    },
    'xjfntlvt': {
      'en': 'Letter U',
      'hi': '',
    },
    'k1fzqhxc': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Letter_I
  {
    'hy8jbxnq': {
      'en': 'Letter I',
      'hi': '',
    },
    'vyn2f2n6': {
      'en': 'Hello World',
      'hi': '',
    },
    '30mp4cra': {
      'en': 'Hello World',
      'hi': '',
    },
    '4qd2fnkw': {
      'en': 'Home',
      'hi': '',
    },
  },
  // communication
  {
    'i2qpvtan': {
      'en': 'Vocabulary',
      'hi': '',
    },
    'l7xrzx6r': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Redo
  {
    '3h3iggc6': {
      'en': 'Hello World',
      'hi': '',
    },
    'b79rnmhf': {
      'en': 'Hello World',
      'hi': '',
    },
    's9ftd012': {
      'en': 'Redo them!',
      'hi': '',
    },
    'kev43f2r': {
      'en': 'Home',
      'hi': '',
    },
  },
  // classespage
  {
    'tk6d6ytt': {
      'en': 'Your Instructor',
      'hi': '',
    },
    'xv5mz3fv': {
      'en': 'Dr. Jane Doe',
      'hi': '',
    },
    'b6tek88b': {
      'en': 'PhD, Licensed Therapist',
      'hi': '',
    },
    'fo9m81ue': {
      'en': 'Therapy Schedule',
      'hi': '',
    },
    'k4y0r7n9': {
      'en': 'Monday',
      'hi': '',
    },
    '7ckr63me': {
      'en': '9:00 AM - 10:00 AM',
      'hi': '',
    },
    'ptux0ypr': {
      'en': 'Wednesday',
      'hi': '',
    },
    'htl6gg9e': {
      'en': '2:00 PM - 3:00 PM',
      'hi': '',
    },
    '8txs0bl8': {
      'en': 'Friday',
      'hi': '',
    },
    '8yufpqtk': {
      'en': '11:00 AM - 12:00 PM',
      'hi': '',
    },
  },
  // emailsignup
  {
    '1zblbhlb': {
      'en': 'Email Here',
      'hi': '',
    },
    'cagdqet1': {
      'en': 'Set your password',
      'hi': '',
    },
    'wh9y37ag': {
      'en': 'signup',
      'hi': '',
    },
    'i6bb9mm0': {
      'en': 'Sign in instead',
      'hi': '',
    },
    '1vs953s1': {
      'en': 'Sign Up with Phone Number Instead',
      'hi': '',
    },
    '1lt92zzr': {
      'en': 'Sign Up',
      'hi': '',
    },
    '6vismaeb': {
      'en': 'Home',
      'hi': '',
    },
  },
  // SigninPage
  {
    '0jfk01p1': {
      'en': 'email',
      'hi': '',
    },
    'lfhg4sm3': {
      'en': 'password',
      'hi': '',
    },
    'ujscl8vj': {
      'en': 'Sign in',
      'hi': '',
    },
    '1gzhwsko': {
      'en': 'Forgot Password',
      'hi': '',
    },
    'stxw4f8t': {
      'en': 'sign in',
      'hi': '',
    },
    'dd61ir3p': {
      'en': 'Home',
      'hi': '',
    },
  },
  // resetpassword
  {
    'dn6auoj2': {
      'en': 'Enter your registered mail',
      'hi': '',
    },
    'p6eorzf9': {
      'en': 'Reset Password',
      'hi': '',
    },
    'e5zmtqeg': {
      'en': 'Password Reset',
      'hi': '',
    },
    'v571uvsy': {
      'en': 'Home',
      'hi': '',
    },
  },
  // instructororparent
  {
    '50emgidn': {
      'en': 'instructor',
      'hi': '',
    },
    '3l8bm8rb': {
      'en': 'parent',
      'hi': '',
    },
    'k6izit6x': {
      'en': 'Page Title',
      'hi': '',
    },
    '6yxt2aen': {
      'en': 'Home',
      'hi': '',
    },
  },
  // childprogressparent
  {
    '2izlsgrr': {
      'en': 'Child progress parent',
      'hi': '',
    },
    '8x9b5xio': {
      'en': 'Home',
      'hi': '',
    },
  },
  // MUSIC
  {
    'zleay4xf': {
      'en':
          'Choose from a variety of soothing sounds for relaxation and focus.',
      'hi': '',
    },
    'fkdwgqi6': {
      'en':
          ' boost focus, tune out racing thoughts, enhance relaxation, reduce anxiety and promote sleep',
      'hi': '',
    },
    'mpymjx2p': {
      'en':
          'White noise can reduce crying in infants, improve concentration and potentially help counteract symptoms of (ADHD)',
      'hi': '',
    },
    'cnl1q3qq': {
      'en': 'Helps induce more restful sleep and reduce stress',
      'hi': '',
    },
    '6jaxlpom': {
      'en': 'Music',
      'hi': '',
    },
  },
  // InstructorSignUp
  {
    '7buz7g61': {
      'en': 'Your  name',
      'hi': '',
    },
    'yzaynwp5': {
      'en': 'Contact No',
      'hi': '',
    },
    't5kcpw7t': {
      'en': '',
      'hi': '',
    },
    'jk2mlazx': {
      'en': 'Enter your field',
      'hi': '',
    },
    'rybo6fhf': {
      'en': 'Are you an Instructor?',
      'hi': '',
    },
    '6exi9h7t': {
      'en': 'Enter Centre code',
      'hi': '',
    },
    'nc5xr9au': {
      'en': 'Save Changes',
      'hi': '',
    },
    'nkhuof0t': {
      'en': 'Instructor Sign Up',
      'hi': '',
    },
    'sstn8soi': {
      'en': 'Home',
      'hi': '',
    },
  },
  // NoDataGiven
  {
    '5rchvjy7': {
      'en': 'Seems like there are no updates',
      'hi': '',
    },
    '483m9pi1': {
      'en':
          ' Once your childs instructor adds a review, they will appear here.',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    'yl2i7ex4': {
      'en': '',
      'hi': '',
    },
    'ybf9j2xh': {
      'en': '',
      'hi': '',
    },
    'nf2yfhss': {
      'en': '',
      'hi': '',
    },
    'rru7o71n': {
      'en': '',
      'hi': '',
    },
    '62o0stfi': {
      'en': '',
      'hi': '',
    },
    '8i4085j0': {
      'en': '',
      'hi': '',
    },
    'ohdakjux': {
      'en': '',
      'hi': '',
    },
    'm8aqv25r': {
      'en': '',
      'hi': '',
    },
    'eyo8ogm2': {
      'en': '',
      'hi': '',
    },
    'wza34dcv': {
      'en': '',
      'hi': '',
    },
    '37xi1iws': {
      'en': '',
      'hi': '',
    },
    'h35mu1jn': {
      'en': '',
      'hi': '',
    },
    'oerxe16c': {
      'en': '',
      'hi': '',
    },
    'r58f29fa': {
      'en': '',
      'hi': '',
    },
    '2eujo61z': {
      'en': '',
      'hi': '',
    },
    'gfpvgpj0': {
      'en': '',
      'hi': '',
    },
    't5c3p98c': {
      'en': '',
      'hi': '',
    },
    '5ny009gt': {
      'en': '',
      'hi': '',
    },
    'tg3x8f5h': {
      'en': '',
      'hi': '',
    },
    'm8d3nkpo': {
      'en': '',
      'hi': '',
    },
    'ovbaweja': {
      'en': '',
      'hi': '',
    },
    'ltr3eg3p': {
      'en': '',
      'hi': '',
    },
    '57qqlcfe': {
      'en': '',
      'hi': '',
    },
    'btvhwv74': {
      'en': '',
      'hi': '',
    },
    'axn5xpkm': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
