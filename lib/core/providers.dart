import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/constants/constants.dart';

final appwriteClientProvider = Provider((ref) {
  Client client = Client();
  return client
      .setEndpoint(AppwriteConstants.endPoint)
      .setProject(AppwriteConstants.projectId)
      //.setProject('ec7b84ce9a097f4f12776be589877d6976323bc66c8d87caf2bb51ebe2e62c5dd169afe1676f8147def598863cdac7fef63627f4444aa3b9a98f9304fcd96764e6fea7d76151bc049d3a0d57c803f80eba08c467feb61b6da9c4401cb662eb4daca97bce66623ace056aff2b1ef63b254f16b3dac52625d8d0b196618d3e96a7');
  ;
  //.setSelfSigned(true); //if appwrite installed in localhost
});

final appwriteAccountProvider = Provider((ref) {
  final client = ref.watch(appwriteClientProvider);
  return Account(client);
});
