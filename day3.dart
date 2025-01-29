Protocole Alpha :

void analyserLettre(String lettre) {
  // Protocole Alpha - Calcul de la longueur totale du message
  int longueurMessage = lettre.length;
  print('Longueur totale du message : $longueurMessage caractères');

  // Protocole Alpha - Décomposer le message en liste de mots
  // Nous allons aussi remplacer les signes de ponctuation par des espaces pour une séparation plus propre
  String lettreSanitize = lettre.replaceAll(RegExp(r'[^\w\s]'), ' ');
  List<String> mots = lettreSanitize.split(RegExp(r'\s+')); // Sépare par espaces multiples

  print('Liste des mots dans le message : $mots');

  // Détection des motifs récurrents
  Map<String, int> motifs = {}; // Un dictionnaire pour compter les occurrences de chaque mot

  // Compter les mots dans le message
  for (String mot in mots) {
    // Si le mot est déjà dans le dictionnaire, on incrémente son compteur
    if (motifs.containsKey(mot)) {
      motifs[mot] = motifs[mot]! + 1;
    } else {
      // Sinon, on ajoute le mot avec un compteur initial de 1
      motifs[mot] = 1;
    }
  }

  // Affichage des motifs récurrents
  print('Motifs récurrents :');
  motifs.forEach((mot, compte) {
    if (compte > 1) {
      print('Le mot "$mot" apparaît $compte fois.');
    }
  });
}

void main() {
  // Lettre fournie dans la mission
  String lettre = """Cher agent X,

J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 
également présent. »   Le code secret 42 a été activé.""";

  analyserLettre(lettre);
}


Protocole Beta :

void miroirEtRemplacer(String lettre) {
  // Créer le miroir de la lettre complète
  String lettreMiroir = lettre.split('').reversed.join('');

  // Remplacer "agent" par "espion" et "Agent" par "Espion" tout en préservant la casse
  // On utilise replaceAllMapped pour remplacer les mots en respectant la casse
  lettreMiroir = lettreMiroir.replaceAllMapped(RegExp(r'\b(agent|Agent)\b'), (match) {
    // Vérification de la casse du mot trouvé
    if (match.group(0) == 'agent') {
      return 'espion';
    } else {
      return 'Espion';
    }
  });

  return lettreMiroir;
}

void main() {
  // Exemple de lettre fournie
  String lettre = """Cher agent X,

J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 
également présent. »   Le code secret 42 a été activé.""";

  // Application du Protocole Beta
  String lettreMiroirEtRemplacee = miroirEtRemplacer(lettre);
  print(lettreMiroirEtRemplacee);



}
Protocole Gamma

void main() {
  String lettre = """Cher agent X,

J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 
également présent.

""";

  analyserLettre(lettre);
}

void analyserLettre(String lettre) {
  // Protocole Gamma: 

  // 1. Vérification du début du message
  bool commenceParCher = lettre.startsWith("Cher");
  print("Le message commence par 'Cher': $commenceParCher");

  // 2. Vérification de la fin du message
  bool termineParCordialement = lettre.trim().endsWith("Cordialement");
  print("Le message se termine par 'Cordialement': $termineParCordialement");

  // 3. Nettoyage du document

  // Suppression des espaces multiples entre les mots
  String nettoye = lettre.replaceAll(RegExp(r'\s+'), ' ');

  // Suppression des espaces en début et fin de document
  nettoye = nettoye.trim();

  print("Lettre nettoyée : \n$nettoye");
}


Protocole Delta :
void main() {
  String lettre = """Cher agent X,

J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 
également présent.

""";

  analyserLettre(lettre);
}

void analyserLettre(String lettre) {
  // Protocole Delta:

  // 1. Création des versions en majuscules et minuscules
  String enMajuscules = lettre.toUpperCase();
  String enMinuscules = lettre.toLowerCase();

  print("Version en majuscules : \n$enMajuscules");
  print("Version en minuscules : \n$enMinuscules");

  // 2. Extraction du 43ème caractère si possible
  if (lettre.length >= 43) {
    print("Le 43ème caractère est : '${lettre[42]}'");
  } else {
    print("Le message contient moins de 43 caractères.");
  }
}

Protocoles de sécurité :
void main() {
  String lettre = """Cher agent X,

J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 
également présent.

""";

  analyserLettre(lettre);
}

void analyserLettre(String lettre) {
  // Protocole Delta:

  // 1. Création des versions en majuscules et minuscules
  String enMajuscules = lettre.toUpperCase();
  String enMinuscules = lettre.toLowerCase();

  print("Version en majuscules : \n$enMajuscules");
  print("Version en minuscules : \n$enMinuscules");

  // 2. Extraction du 43ème caractère si possible
  if (lettre.length >= 43) {
    print("Le 43ème caractère est : '${lettre[42]}'");
  } else {
    print("Le message contient moins de 43 caractères.");
  }

  // Protocoles de sécurité:

  // 1. Vérification si le message est vide (après suppression des espaces)
  String nettoye = lettre.replaceAll(RegExp(r'\s+'), ' ').trim();
  bool estVide = nettoye.isEmpty;
  print("Le message est vide : $estVide");

  // 2. Extraction et conversion des nombres trouvés en entiers
  RegExp expNumeros = RegExp(r'\d+');
  Iterable<Match> numeros = expNumeros.allMatches(lettre);
  List<int> nombres = numeros.map((match) => int.parse(match.group(0)!)).toList();
  print("Nombres extraits : $nombres");
}
