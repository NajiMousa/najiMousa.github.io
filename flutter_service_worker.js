'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "3005b5149491d288386d3a363b39c23a",
".git/config": "dde87bcac466f60f6763e77ace19451e",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "b8c85a042748ad7939afa727d1cafbe0",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "428b9ad0db0ae4e906c8c1c5babd67a1",
".git/logs/refs/heads/main": "b31853bcc9a4198d3e7f3aa5ace3eb8f",
".git/logs/refs/remotes/origin/main": "4a3d9a44c62792c80342463033b256c4",
".git/objects/02/d165c513de2d4af94b5b62c72478d1a0ab0600": "798ce5ac7797176f0c66b74f0edc8014",
".git/objects/03/6e0a61bf161ff4331933b764e6d404b753b44c": "af2c907ee79d43f783a2f9a48ac476c9",
".git/objects/07/737fc16049e23d8261e83493131705c380eb6f": "7d7180868899c93ac301deecc5a13df2",
".git/objects/07/74f2bf10448f4dff4e63bb98158ef4f16bf75b": "7ee7f6150308232806d24288b198e491",
".git/objects/07/94eb3c827eb1e3e7589a76357f3009b8c130b9": "46b2c37548eaef799842ad8ad978d69e",
".git/objects/08/895492caab52cba98edd38bf525d473335dec3": "7dd8f13c367b83dfc216b3707b6bd667",
".git/objects/08/8e464be99e1e74f7d3a32e983ef324d6f8fd72": "49215c8ed9bdae71a9ed00b28dd0118b",
".git/objects/0b/dd56c32f19ceb3ae9751f412c65a043dda7a8b": "eeed86c5ccac304777974c1cb9f6b483",
".git/objects/0c/797ce6ed2eef3a6df39f300905eb8e4be04b4d": "fae80324aac9b581e7904e5a7145d2d9",
".git/objects/0f/58a5e93a501184a52356a1b9284d7a65662e3e": "bf45d08446b7e933f2f4fc20f9f93c0c",
".git/objects/10/9c1e32714a2d89561058c389dff42f373a4d2a": "068e98349a562068cd21d17dc4e28936",
".git/objects/12/0809b4c8a650c8a99fe5e426cabd33b1019322": "2f4d7bedae66b59898c0002107e04279",
".git/objects/14/7bc67b641c8046d83b65af5acee3f94fde779c": "010cb8a958274b5f86d9af5d5716680c",
".git/objects/14/fcf4f3e7ec7e1ca4cd8e74ee2a111c9fc38c62": "cca93f6325f548888a7156193b662421",
".git/objects/15/6075b402b57db5c1b057ffd56b624ac817e8f2": "47d9ddf66f691687c1e02217fee6bb4d",
".git/objects/16/5b0d1796284c6ee97a6c0be686823bf184b31d": "e2e65208f1b60f78c17ffe179b578a2e",
".git/objects/18/de0a75327c6c79c53fffe1481b5b603517920f": "1e147008273a8633fb2588cc7f037a1c",
".git/objects/19/0cc02012212f27b3da049b987176e257ccc48d": "4d4a834d6572bfa2ac65bd0a924992da",
".git/objects/19/dee2b98e20aaab9f482ff056bc3aeead7f9e1f": "f89bc6a249f072cf88c145dc11badc53",
".git/objects/1a/cf79564835f6a82dd2924a98c7a5c39b381c29": "236f5e290d8b838ef1594a7e92193a59",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/1b/93e9eba7badfe24113b2df4ce44056f0fe0a0a": "f9c09aa0c1d7c5d57d6aacf76da5f2db",
".git/objects/1b/ec34465bc9a2f66da172e992745baf605e420a": "b35539e3451a7a7af2070aa9ebf83ae7",
".git/objects/1c/10972eceaea5bc6ddf055d7e4caa75e01e6f8e": "0185c67dad999f49755704755e660c16",
".git/objects/1c/c7c5c40921a0a67880871b8274e19c1ff6d49c": "c6463ddd213c0f15300fb188ccc55e0a",
".git/objects/1e/3cf0fd118978bc14a4ebaeff283e646bc9a0eb": "0a1cda7f9d247f9739cde9405b4ebd6e",
".git/objects/1e/9a1707352efa70647d8a161f1cf4d1e4085dc2": "3eba78aa479b2752cb5a04e5279a6309",
".git/objects/1e/ff15348f0a04fa7bd71bae969d766d4b1d3c7d": "887ce725db05ec38b4480bc47d6da86a",
".git/objects/1f/37da9f1dfe57957f20eae97dcac412dc737432": "cffb2a0479120b34242742c090c41b3b",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/20/a3ea31ccaea33220ec7fc182a501472c562478": "1e46c063ea12b3a9f8b5733c7b76a05d",
".git/objects/20/dc9f5c9e1f66256bc5678f20deb3b6949fbc5e": "a8a21188758c76553dac541edfc2f2ef",
".git/objects/22/f65973a2ca084dff164c0a164b46a0ba7d1ad6": "47be7709b256fefd5a42be231349e02f",
".git/objects/23/a7ec3d36cf48cc5674f67d18c1a5c29a4a3b73": "78f8a6646dc28e703fd084fbe5ce4fa7",
".git/objects/24/8019256b2313c3e822ecde901e8abc3aa4a958": "f1e1b1c33882fbc3963edc887c1d422d",
".git/objects/24/e5621c3ed018f85c6a110d1ef87ce38126475e": "ca53c443c7b2a259cfb577380f91754a",
".git/objects/25/1723323b0fd716b66a9d3d9ef2c358c7a9ae02": "b2c13feb85d730b13e6cb57302478602",
".git/objects/25/513c18e78bfd0d09ce39929906820f8815fb6c": "6f7f349cf2b61eae71bbee8659685328",
".git/objects/25/72d045ecfa895886658f3eebb7bb98930fea00": "2fb675ddea09b3462db768fb90d635b1",
".git/objects/25/a88321c5d6c2f9deeda666bfb635fb647f651d": "bfd288e05caac6b49d8d357b84f4570f",
".git/objects/27/a62f57bde1606a0fa76fc5da2e82a41c5b26b4": "a31d807bf34b0821e5cef35fe37e953a",
".git/objects/28/624af54e109403cfd69ec5c9ea7da20eb61c8f": "e388dc587b2c06e8bf15e58bb11aa3f6",
".git/objects/2a/70327f38e3c4f0571ec73fd1960c3dd02dfa26": "3a1758c68bfaff0fbd91c0c831b37ff5",
".git/objects/2a/b5e9432a0f1b4f9871b4356d6b2ad471703050": "a76c9ccca4a92958b667affc7ae38fcd",
".git/objects/2a/bf03542c17e6f7a7806a226c3be732b51c5a40": "4593012a42df8795cd0ae089a5b7aaaf",
".git/objects/2f/dba6b95082598c9292cf28936f0958920734f6": "ab345cb53ddccf665a3a48b99aac38cc",
".git/objects/2f/e7fe0c9d9bcd7b59b26a96501a463e22fa7f8a": "80311ffec5f8aaa0a326aefec95d05bc",
".git/objects/31/ce67877779b5550653235f1024a124fed4766b": "eb6b02a9503d0d4691ac70b4ebcc7971",
".git/objects/31/f1dc8ac5f5e10ee85e52f6d9806b5f71a9283a": "11032ced008402c54e6a6dc04dab20a8",
".git/objects/33/7f6a875da206ec78d8128a7fbef72d40bc9336": "f82014f7640c748e1a5f706bb1c6507f",
".git/objects/35/0922e7af433c65dbc4c98943646d9b5d97cc90": "c718de49df2bb5acae603534f929347b",
".git/objects/35/acda2fa1196aad98c2adf4378a7611dd713aa3": "b485406370fdb56248ec4e5fc074fb65",
".git/objects/38/2235345b67968bd45e9043343ca0c6accb19af": "5d465c67985e566fad89a9e370a50477",
".git/objects/38/e4fb6ce14a6134f2444d78a49668d88aa542d7": "fe6bbb27a0be66342944a585cca1b221",
".git/objects/3c/b7a6592a87fb553cdea0dc2e78127d6a2b4dc7": "9ecdd0f6d82f902d752347826d282fde",
".git/objects/3e/6bf3b8f9a7a4d0e659d1c2cd55daaa8cb488e6": "e831d4cd67b5f0ee983f7c92e7398460",
".git/objects/3f/1bccb2e3892d1dd77b9eb823bb30e4cb8f76fc": "e7791b28deb1ab774443b9a732071b3c",
".git/objects/40/0aa1f4b4403adeea8367ef01b7de9b27096344": "a9985d12618570d9ec75915789dc5511",
".git/objects/41/413d55b168dc3fec8744e09c6c502f7b4dff6a": "c97df33d20d702e85d05cdc175b0431d",
".git/objects/41/dde824368692630023cbfbb22a3c291b0edb0e": "814e8395f5185957728a03b0112a9ffc",
".git/objects/44/abfcffa695a099ba436daf1be259792a6fb6e5": "7a0b2f18b6623af4d6e4ef57ae5b5df0",
".git/objects/45/769252f7da064c92a6e934f6545034ce15cfb3": "d2f935349b8ada0d4df9957710894eb6",
".git/objects/46/fd93e7092ce894d4200a73f027f38df2e1644e": "203d2f88da60e8be17cc342902ffe6ca",
".git/objects/49/3edc52b1613e02e5a1afb2fd98962307b74e79": "3d25f7626b761656224c4857a8d156b1",
".git/objects/49/698e74205843ebf63e7af48dda68e5b6fde879": "c35a3360410ae549c879baf34348f2e8",
".git/objects/49/6bf9ab7d2b410eaba912ed58315ed8ada3fc30": "d3aa0050c8b7cb52c0000ac72294b6ca",
".git/objects/4c/51fb2d35630595c50f37c2bf5e1ceaf14c1a1e": "a20985c22880b353a0e347c2c6382997",
".git/objects/4c/8d2d821530331e6ffc20a9ae2addd64ee5c6e2": "73d00f1e224e7a845e63e7fd27ea39b0",
".git/objects/4e/34e6e5d5e5ad88ddabeff3d6851da9b044769c": "b76b7508c938c199ab23268695916e80",
".git/objects/4f/8c711accad71c0c804efdb10eca1ceeaa074b1": "b15862c829dc7f5a900003a562027302",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/57/c228c4e51a88d6f5fe7d0c5355aa6c62b002c9": "1074069b40dd99c6614f7f3f7b1bd2c9",
".git/objects/5b/71e7cfe5a65f206271e86f5b9071ee68c41487": "83adcb3314e6063893ab4e9ad6ba1a49",
".git/objects/5d/ff018e21bf65d234f628481bad2c8f3f207265": "3aa78c1c1dbf038526408d87edc7cce0",
".git/objects/5e/d64e6c47d9ce55ae32809d1bb0e50624651571": "da4e0d107664626e0159cf5ce07adcef",
".git/objects/60/18d5dc7649f616288da4369de8d696b1b7a837": "5d3048448131d950e844100a503a8b00",
".git/objects/60/c37be7390a43ebbe5c13604982c36f71ef4e27": "f26c1acebc79ccba2a23cb9ba7780711",
".git/objects/63/998ec2e3bb2f821115de7c64e6a5a3f6108457": "1e21c227663a0fa73847417eb21d57aa",
".git/objects/64/97e1f86b14b3dd832ee96fd9b5c6676c887db5": "03cd64e4a41126f9bb2c8235148ab9b4",
".git/objects/66/7f01685ad71a7ea943f67de6341d1563653b95": "cf40b5a2c671d3d0871830dcf8a50c89",
".git/objects/66/9ceb20f4c117f90a155261af54620e5b506d37": "2e3e9690b5f7663c09bbed181ee0451a",
".git/objects/66/aaf55b588b0883f36ed516609af7bbc5d43507": "93a0c144ddccb0eeeef60931dd50aeb4",
".git/objects/67/404fe851bccd5a1635ff89f6bdf60a00df53ba": "9ea08ee674b50101588c93ac38146192",
".git/objects/68/68f7bb64ba71b131690286ddc82aa0f542293e": "b6aeab417f5d5ef28ea070a09b61c7e0",
".git/objects/69/d35e0c5ed8dc2a8042583b399df7b35241dc23": "19dacd7e684bc3577cb05313f6de8f68",
".git/objects/6b/25aeb5e647e363d291dd12e5d9a9ebb682bab0": "51ed3637905284b5e1bf02a6e56411d9",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6c/ce217ddc2efe3411dc9fa34e294e48e4cdf4f5": "8a6cc32e7f23f25e611213b06bb38448",
".git/objects/6e/cb68683477ecc5aed38ec3fc8910d9bb66276c": "8081799c6f0d89b405c8cca2b18cd6da",
".git/objects/6f/695d540ee172f711a43bccf73e7653bcad3bce": "15be9b4d65fb99452a9d0920a2833a58",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/71/72a813975e10b370c4fe1ae4985c7b0df31e6a": "bb37e4f8a3fa3a04e8ddee642baa6e09",
".git/objects/71/9442d420a9c3d8df77d85b6f6ea1bc55bd39cc": "f0f785e8e884c8c1befbda9dcd273a1d",
".git/objects/72/df7992ab84b16d144ca707cd5821558b97b434": "8cbbbeef7ddbfca09133603c71714f81",
".git/objects/73/27b6bc304d400408f6d51f2ef9dea6c74b48ce": "4f42c217a88eecc371bfedb2300b48d5",
".git/objects/73/c0a4d77e5540e0b568403208eccbcf68564f8f": "7636bade9ec486710beef6081a8242b1",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/75/450c4b70cc70ba5be2cba7812d320d1636ffdb": "a9688e311bec3ccfdcd683e6bdcfa02e",
".git/objects/76/54cd277861579cc4a08b1c33b4bdf10ab5c983": "a06eee730449aae98d7da6f7ca91fba6",
".git/objects/76/647512a193f84cfd1e198ca32daa49a800a48a": "7eb60f2699548cc4fcab422456003eea",
".git/objects/76/d91cb9895982d66c398f9da3daa61470488fb6": "eb9c926b9504ff85b80091feb21a6b60",
".git/objects/77/ebf8eb7c970f1c64464acefdbaa3ebd69fda09": "1b6de86e61c3ac8bf08b654104959d04",
".git/objects/78/c4da9441b61354d965bf4ee4665d228e5f358d": "3d3110749a5c7abafe29dc734751316a",
".git/objects/78/dc2b4cc8aeee37bdcc53151ce7e51f97dd5779": "d81d30b0cdb82e6900c73bd6844b948a",
".git/objects/79/e313d7b73beeac2c69463b9bfc4748c666d147": "4544c0d68d53ef7e6e82cb23ff05e2d2",
".git/objects/7a/be03edf6ad69dad07abcb72ef34019fb64292b": "36498a4a203335be478ae94ad91e96df",
".git/objects/7c/5b119fd53f62837839fcb31db0b9ca87008306": "b0aeb9366109314e68ccc294aa22007a",
".git/objects/7d/ace451f355b1ee5b8eccc0e0544d8391db96ab": "b38dfe72f328b4a3747b1a444855f7bd",
".git/objects/7f/7b5841456dd9341bcbd4865244c53bcbf53a27": "d6d7f59f6369ec239c2858f3c3fc6cf5",
".git/objects/7f/a56ce6522863b9992cadcf0614f08f582ddfa1": "409bd423441448dd74b9a42299f8110a",
".git/objects/80/542ae932d7990d8b1464f89c7895d4c38e0d45": "5ae295c5b4fe2e5f3160bb4c6ec7fcdf",
".git/objects/80/56c77deed242b280aa1b58242e961385a9e9c8": "0eaa9833578c497c111e099c4fab69d6",
".git/objects/80/c1c1bf489d3cd7d2024ccc74cc37cb17937043": "3111b3f524059c2dab99e2623a279469",
".git/objects/80/fa2baf36670e9e32e9b1b7957f270fa725af72": "23c5eb6bdfd9706ebf98d43420fe8eb8",
".git/objects/82/88410cadd311b731bb63ad35d5181f428a3d0d": "1d17cc6325a5495573599aef825aa3b8",
".git/objects/85/113509b772cc9cc4bc2b9f2b751fc6a7cb5fbd": "d0696e3681beb1559c7e3e55412a09ae",
".git/objects/85/c705061d33f6fea0a54c25d4506ba08980f317": "7eeeb31a5a425e0c5328737a41371b50",
".git/objects/87/2b8f01c0fbd816f99050306431921afac1432c": "28f3062520d19ebbf98afeb0cb7327f0",
".git/objects/88/52a84bc3a14df878d6b6f45508f349a340e11f": "da8e2da7b8b702021218ae1380a8146d",
".git/objects/88/ad6d969f2ecb3ac4cde56506d58ac2c4665c51": "a6089d2abe6f4596ae26dfa5b7d64088",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/b509a993a1afb1fa630dc3d3eed9cb68da6b91": "c595e9da6b543830b94931400244345c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/d031ab9cc71755907e891f0cb83d4f4756eb86": "4a04a73ae8ef98dfa05dd56deb9838b0",
".git/objects/8c/38ccb1736bdc8a79a12cb43ba3dfa56b8b8719": "24b3d336646e959555ae637a7649b69a",
".git/objects/8c/e262a17fe221d2a5cc5068f62ef99e1cef509a": "33976cf7b36d4bf60580f1be7311ee2b",
".git/objects/8e/3c7d6bbbef6e7cefcdd4df877e7ed0ee4af46e": "025a3d8b84f839de674cd3567fdb7b1b",
".git/objects/8e/fa57e38f35dd16f22c3b90f0f61c7fad354a4c": "28c9905afea646888a4471e0869543eb",
".git/objects/93/a3ab72b4f2d38beee1a08317780bcf552721e9": "4257659062106745883afa4f776659fd",
".git/objects/94/094ad1f45ba01842c1ec05be0fc2bbad0a15e6": "f149113dfe29a0c728e9e8e0ff8c2028",
".git/objects/94/34838c6ae983b2629aead26f1b6f4ad64fb3ef": "18138b616941a022fb2e33e6c17003ba",
".git/objects/94/9804564de85d59c005570975d1410cf6a86ae4": "f8eab38a5256267bdbff202cda3e24cb",
".git/objects/94/d13dec70892341d2ac1f35c4bd2adb295dccd1": "13ca2d97006efcbb80f8ab6b666f456c",
".git/objects/95/9258269d66b3df1e563d93f9f016a73739d6b9": "3d52288b4e62edbf90b2078f234c6dd6",
".git/objects/96/e2e81a3d1e00f2638000e2110075d3af23cfbe": "fa5d75dadf587cc64c82eaf9de652f15",
".git/objects/97/ab37067ab4ed102a51264fde142bc8d81d10d0": "b9c2f3e15963066ca0e6e45d46eb9546",
".git/objects/98/1f51e9969d90f80b956c536ced5935193cc62c": "7ba3c1d8ffe06cd088940eee2505adca",
".git/objects/98/6b3d9e092c76368d7823a2d37873b158043f51": "1615c66e7adbf607df7281bac415d94d",
".git/objects/98/73766d06900137695f1c26787bb3d1c3ae6e3f": "250c32e0c7c98effc7c887df51765776",
".git/objects/99/f75b243fe6be68c8a66935796a91b7c0a6417b": "e5ebe209ceeb6ca4b941e087617b7fc2",
".git/objects/9a/5fafa596642af5f2346f6cd68076ef91b4ce82": "806e3151867e79be3d328f5374b919c3",
".git/objects/9a/cb0ebf76771f2a56d13661e939fc8b296db360": "d7bba5c2938b4b2c45aeccffd85feb36",
".git/objects/9b/b367c64eaddfff8f992bbce51ac778a337c1d2": "2639846a6f2311218629491e84b4c38c",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/9e/e1919dc230d3433cce79d137c37081c974034a": "7918dcf5b15c1ac607255918935ca48a",
".git/objects/9f/cfa81829f8f7452998d3abc5bd4ffdc7053089": "b7e8cf821b5e482aa3565dfbcdf34932",
".git/objects/a1/515cd3aea7de74f99b664b8ddad24d40b6ab17": "9c1e6a89d41d8619cd57b54bd1566d64",
".git/objects/a2/302279f37ca9e8dc2faf37c46fa701ab4d8a59": "5df95d7401a9dfb8a50e4a458b041fb1",
".git/objects/a3/57641fc7905adb87d0ecf403ebeefdbe3de88e": "cae086505bebf39be6d2f9ef8e9607ec",
".git/objects/a4/ad86e85592a95ddc8fb4852b7f910d4afe8e1a": "935cbf9737deb6b523d22d086bcf4f50",
".git/objects/a5/fff6367335734784f8935e27f16b539867aab0": "d8459efd4c18a44eb1ac082d73cb2ad3",
".git/objects/a6/bcd1f1b0458e6aae67ee789a364533cb104b38": "1fb8f427c95c81c49c2d38c98c8bdf0d",
".git/objects/a7/efc969344d9cef5e749014d3ef9d2e0ff06141": "ce9137724752e51bb996ea1775c72ec0",
".git/objects/ad/28891421343d5b245472fe3e8c73e9f65b8a6c": "eb1237dc5bf4b5a0e55586dcd2056c7e",
".git/objects/ad/39acbb1138b79ff5872279a36c5d6be72819d5": "bab32de4889d7d55226bbe67feb66ab4",
".git/objects/ae/304261b67e83382079677f28f9d6ceb5ff0764": "7eabff5f5d19563e7735718fa2dc3f9d",
".git/objects/af/1bb5098ac7e819a8eaebca129135f2cdf3944b": "31abe68411b03d0e2492230aa0b6e65a",
".git/objects/af/a09a04aa9db90277d0fdca528654c2f5121898": "3e6cc9fd44d491c6a7918d0793fd23db",
".git/objects/b0/809619ad3e373a7c7abef31205a77b33ce1ec7": "bd0b66d79f3c464e1a62cd536b8f240e",
".git/objects/b1/b8f7e6f5717b3f46edf53007f2709b293efa45": "64bc7c2bd0ce279b72898bb87bf2ffd4",
".git/objects/b2/0ad0566defb36d4cf4bfa49b5296e76c8a06a2": "4d03ba778eb16c77c2751544d200da1a",
".git/objects/b2/b0901f42371c3686edb6ec23b834486a84c873": "40f64769d621aa8a330246e371987c4a",
".git/objects/b3/5d66d4212ec5f42864e84f9a3c64003ac4ce85": "46c4f746f52627d861fcc7842fb1a7c4",
".git/objects/b3/e4808497708bddb30b640942e2c8b40201cd63": "49e8dc58718e27b8bf37e57534c69e34",
".git/objects/b5/d2c10c9d85b874424bfd281985ac5036cdf009": "ff347c554f09793bcb2a8bee62e8970f",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/bc601dd5b670c987591efe942b3efb6c9fc13b": "0c015b8c868181b10d8c3b5596b9f00e",
".git/objects/b8/de0079a925ffccc48fddfd6907f9d0f69ef631": "000897e104951f16cd0679d61752a87c",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/ba/20a6009a00aa791c8cffc53e7e08b0d3088d6f": "7b91f2c10a86588897badac548939aa3",
".git/objects/ba/873595714be0aed5b3f40c3f409125d58b741e": "090eab633a2fc6144387ae5913e6fe15",
".git/objects/bb/3c7795980cce1e2c99dad1f74a8b6eb7cb15c0": "1117a183582c50c21a252182e48ad9b9",
".git/objects/bb/ac4e5a9236d8a389b2eb657238c89540b7499a": "6493a9fdac3e2cde89da24cdf967cfd8",
".git/objects/bc/1321129fd5f554586ffadab407355bc3d1c2c7": "46407cbf726548c6b359e50a2d1fd06c",
".git/objects/bd/6cb5da5528c6db6e4c0771e9b2e813c915680f": "9b73eef9d962e1c131b7c1687be8782a",
".git/objects/be/ad7b38674cd9b9f7f960b4764638303c28cd68": "701cb205b1e566a4a280c3a30bd94f9a",
".git/objects/bf/9fbba06fa74e7c07eb78fbdfc275fd25392005": "1e956d851691d3c3078cf896af2b3cf4",
".git/objects/bf/ab254081c104926b7675144da0f06087599949": "4b160ab08a0e191be50ae5f8138067aa",
".git/objects/c0/e38c24b366bbbc9b4a3efc69278676164559c8": "463d84af2de818fad5b3a7221dca29e3",
".git/objects/c1/2d609632b8988806e6d6657501401460493dac": "82f81eb3975d91482b44ead9dc7dc7a2",
".git/objects/c1/a514f01996764c99470ef962c142106c95454b": "2ccb9e7faa6d4d674d1bc0c652b26332",
".git/objects/c2/2baf4d12091e9d1c5b38e5dca7bcc666b16767": "610799af89246a7db6bff77a3d4b1e6a",
".git/objects/c2/ac93c4eb1b8c6419a6e24257723bf7b94441c1": "c2e256291edaa9258d5bf25c79bb3c96",
".git/objects/c3/9e5521099864730d0cde9ce544bea7b920fee1": "05d935822230fd945b951e2f7a99ca7e",
".git/objects/c3/a090f2b54905206f6bbb5515156a94bbd696b3": "5cdcc7c965e20350c494ace30b68da7c",
".git/objects/c6/0c2a17403c26088f57c7a70bcede73e2af09e4": "c170dd9e8e85210d4f15a8b4b5dec5c1",
".git/objects/c6/6a85e48cd353b360b8a27c2f910a6c7a9f0278": "2d93bbd179a7a2d4acdaedd34ea0d8b5",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/c9/19843c49eee23cc6e81347cd0ae46de19ada36": "eeaa4cc421b57cb10f7c65165dadde90",
".git/objects/cb/787ea9a0aa128c5ae8f3ff1d97013e0b3a00ca": "29d8ed8b74d44926b4d1dd5331c33c68",
".git/objects/cc/b25c43b7d3d26b3e1a458f3c664bbc5999f269": "b0d05cfb3f891315f079b4b4cef9eb04",
".git/objects/ce/3f3a2d2b3e452f69b024d1652c0a3a491efe50": "a6b52eb4dfcc536976c6de60c373ca57",
".git/objects/ce/53135fbb458bd8e89a6532421fd235b60a0d51": "9c72f58e7daf143268cbd618fecc4939",
".git/objects/ce/9391efb17b0f6b874ac72bedc3fc870e91c260": "739fa3460dc9bc8042d954e5430f2834",
".git/objects/d1/ac29457faa3725d75ee6bda3882c937cab8c38": "5596a2638a1456a02e3bff4fbccfca9b",
".git/objects/d1/ac9ba1169e4076832034c5585e1c5bf9d6f83c": "876bc5615b97dd6984ed3a864ba27059",
".git/objects/d2/63b82d194aaa206ba2c3e5fa99bf68c112c2b3": "66a2cf9400b17f8b835cde036a71fa44",
".git/objects/d3/afe2e5648780387ae44b1cb3ed14778037489d": "ee55fdbbbad470e623049ef647da68c0",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/ae2d244cf3f09fc1a5f78a52c67f672cf04b37": "32e47c2ed581ff98508daf426acefbaf",
".git/objects/d5/dde290bbafeb3fbf48362c0802f59ba294df5a": "d36fb766812cb02408f38ad67d0749fe",
".git/objects/d9/36333deffd7d56173c39a9c1b29f4802d39df2": "4c92ae23173438556b4c4692cdbdeb91",
".git/objects/da/052de1d0205c6ab7f9b3d7238a939b8c510ff1": "b5a359ad8add951ff59f18b813fefe64",
".git/objects/da/129b7dc273cad40782c9cb19f89c49e4759e90": "27e8905e74c0a37843bf9e3e5d6b9c70",
".git/objects/da/8788af5d3000c9faf9ddc2182c5394aeebb104": "207dbed4295c1302f99c9ef35b49172e",
".git/objects/db/6c5a035c6dd465031accd7c1d1c5af8d6f441f": "3dbdb59bf032ae40b53c74bae9e86c02",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/dc/3aa3301a19c3cc463c9ced8a07ccef7305fbde": "083fee18c7bbb481e8ff358374823ee1",
".git/objects/dd/f61e2b0b89515994b72555013b3f585770f565": "9141cf76ba5faca2de4d3438d143618d",
".git/objects/de/bad08d90778b3f51f99d52a8e9af8423497429": "4b72d02716dc0c6b25ad84dcb213b126",
".git/objects/df/77d73d0af5dc0467ff85ed71c1515f7a2070aa": "e43870a6a64bdf71c731f56a4d718a15",
".git/objects/e0/13b905cce2035ee861f2f6f9a08eb3f7652a7c": "2446fe35e87cd64a1e5f849a27d228f2",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e2/b5fbb02fd0ce400780207ac39d203a319af7bb": "4bb073efbd374cfa8e7e0d1b0377cd4c",
".git/objects/e3/07f2546d662597bc3761f4614fcd5cee33bcb4": "28dfeba2b7cc990833d8afa43d9d0600",
".git/objects/e5/0801b3b620af91f824c7655df7d064db05b764": "3a034b2609afa6f9a14cf62c9fb57254",
".git/objects/e5/eba87d1668985a51179913691214dff60d49b0": "8252a27f75f8a15b8cb1e7ccb166b6e0",
".git/objects/e6/25df044d3e581c34cdae3c2f7f0d830bcb7a88": "c954482a41bf0efa8d19ab17bce6d1ee",
".git/objects/e6/d29c204c368099135031a849726fd7cd3282d4": "34d678439aadda9ba13b9cc3fde04a7c",
".git/objects/e7/bf588c754da8817cad71ab0a4486b3672153b3": "3ff848d8d111f91b25583b888696fd99",
".git/objects/e9/3778807ea2f87db6a2d80c8efcc583384cb632": "6745e4156a486d0614959341113a9034",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/ea/57807e00a4058499455cf456bd85f51e4ecd56": "7abad8cb9c27281fff095b237d2efd5b",
".git/objects/ea/bab4cbb9fa899c8ea83f2370f40d4750064ca7": "5318c374b718110cb662d30dd31fd2d8",
".git/objects/eb/73153b2b06f07b524a4199137c46405baf3613": "6e5f36c799596c5ffbf9c29eac08e466",
".git/objects/ed/797b53acd44ebebc52c8e5688f6ecf57071632": "f1f09fdeb05ff5df8ad258ca66b7ac1a",
".git/objects/ef/20b89d533a7b7b8595169326dc1d24dadad8ca": "56481fe0a1d4ca96a6303a0b54fa6277",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f3/3e8162997aaa9da582aa81428ee87aa48953a6": "fc158db0779aaef1b463487bc31157f0",
".git/objects/f3/b1fd35d44c6f7611084716d898919e4f384fcd": "df9b2662ddcef57bce134a4a568dd45e",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/f5/8f1bbe666ab086e9f31f37d0cc885fe7656242": "7f1b2d099bcc460039264b8afed9ff70",
".git/objects/f5/ec356039d9ce7f83820b56c8c7e665acdaeac2": "529f820affe986807c4f7e8197565931",
".git/objects/f6/8211730793ab23ee071c7ea1aa90a866c0caeb": "fe31512366452f4a55a3d8caf17ed618",
".git/objects/f7/a0fa7a7fedfd17fb59d27850714b2797c7ffd3": "cd8d53b4b7dbe655070c9991358fd76d",
".git/objects/f7/a9afb7257b9cb8684aaddcd0d9be20bdffb5aa": "a6fc802ae754b30df4b0f0bf961d4203",
".git/objects/f8/daedca4515bb70b84038c6c447022f868f57ab": "6a10cef0b99704e835bd0f233ca880ac",
".git/objects/fb/8474174367ee2a426dc17b7d1f8682230be0d4": "16076bcbf7bdde3bf4e0629009353eee",
".git/objects/fb/b1ecc24d9fd80dadbd7e7fcb437923cccf48f2": "19eaa1fca0afd79635dff76379e69d06",
".git/objects/fc/567cd2f11d83683d9eb4ca1a5fdc912f7d417c": "a043e3e370f27b8721ecd4c53e4c975e",
".git/objects/fc/cec8e76aac475fccb2779c900a982c53acfdc8": "2b17a929244bb212ba1efc619bf315e5",
".git/objects/fd/f59892892d750bf6f29846074ba9a07e579f7f": "250c2f39abf2e299636d46391332a553",
".git/objects/ff/de1df99a41f9244e7a1ddb42e4bb0ad52c8c0d": "62f7aed8fa277fab67f63d9cbfb60c04",
".git/refs/heads/main": "8939ca0f3b4f5ef51da5d314b91ca7e3",
".git/refs/remotes/origin/main": "8939ca0f3b4f5ef51da5d314b91ca7e3",
"assets/AssetManifest.bin": "5288c7b81483b732c882b5ef2959b016",
"assets/AssetManifest.bin.json": "c00d4650edc4b49a9e559b75b17a05b1",
"assets/AssetManifest.json": "0b002f9ff121e5c5989f7aed52ec75f8",
"assets/assets/ahmedJamal.jpg": "39c738bfd9b005c46b3ce665d76705aa",
"assets/assets/AiErsarch.png": "2e3d7c59a2bbe7122cdbe17fcef32aa0",
"assets/assets/AiKnowlage.png": "5ce801d05db4a21f6572b5b5a070b3de",
"assets/assets/AiResarch.png": "09775052e409af270beede552582211d",
"assets/assets/AIResearch.png": "88573c9cc2c62b9d4fbdbad5f88099b7",
"assets/assets/AssetManifest.bin": "b7814b34f110ef2f47742e0606cd31d1",
"assets/assets/AssetManifest.bin.json": "a3a044c5cc37dce8fa546675173e7b01",
"assets/assets/AssetManifest.json": "a38025e1f2c8319a0bf2510fd984cd10",
"assets/assets/behance.png": "131b7deb60dc8fcf5bc3cecb0dfab04e",
"assets/assets/behance.svg": "27de0242bc04c88108b55a2f6174eead",
"assets/assets/blog_01.jpg": "cd78990246f63c4d64ca5c26bcf31289",
"assets/assets/blog_02.jpg": "01c4b84663980a0b4f55f4bd196492bd",
"assets/assets/blog_03.jpg": "5f88a99b651c6dbad988d684c6fc41b3",
"assets/assets/bookReder.png": "96013aeec63cdcc12182aed1948259e8",
"assets/assets/brand1.png": "f3a3a0de79048e1f14aac62ec76609b8",
"assets/assets/brand2.png": "91c6d8820e35e10e39757e0de6ac4345",
"assets/assets/brand3.png": "c0915a84744f3481a2105c5aea6727e0",
"assets/assets/brand4.png": "e9441e9a5d26e508f592aa31b9febff6",
"assets/assets/brand5.png": "fc57e9a9ff95830ea207e2452ffd4bd6",
"assets/assets/companyDashboardUI.png": "7494d63d37730ff38b3540d4c8c540f1",
"assets/assets/constructionLanding.png": "0e9800e4f0667816857ea1f7f3ab70dc",
"assets/assets/desginPerformace.jpg": "195b7c5e172d6b6bbdf18fffd5a56b1c",
"assets/assets/design.png": "6aaec412d8837ac9a83f03f453877606",
"assets/assets/develop.png": "471c2c94d5d04112086eba9fd78c6809",
"assets/assets/Doroby.com.png": "df5307557c3e1e41fcf33e94129062f9",
"assets/assets/Doroby.png": "6e091abeb66d952051320098ea4a5a4e",
"assets/assets/email.png": "5eb3c4b86aafbee72b8c471b29413a50",
"assets/assets/facebook.svg": "eff54484c6ca4707e353acfe1c1e2f3b",
"assets/assets/female.jpg": "c2f32661075c02668072ab8330e00588",
"assets/assets/female.png": "29c52b49d99a5de88d34ab04aafe3f59",
"assets/assets/female01.png": "d44a0d21bfd76309083306b074247c27",
"assets/assets/female02.jpg": "988e33890569ef98f4750d7ef1882bdb",
"assets/assets/female03.jpg": "dc144f9406608d3b954637f40a0e09b3",
"assets/assets/FlutterFlow.png": "ad2aad604529afc3f7f678a5d134b40f",
"assets/assets/FontManifest.json": "5504c4e38aba3935ae8c644d8dd735ab",
"assets/assets/formIdeaToApp.png": "45807167db6e495973deadcf2d6ad43f",
"assets/assets/forSale.png": "71b0069840fe155ec4d3a0c889e68411",
"assets/assets/freelancer.svg": "415ed7a91b6e7d274b816a5b8589e5e9",
"assets/assets/github.svg": "422b45f9b735da46e17e8cfdb7328071",
"assets/assets/HAPPY_SEASON.png": "0fbbd68be7e33254b130878fb4d4b363",
"assets/assets/instagram.svg": "be758ca61a2773fe84ad567b72435111",
"assets/assets/ios.png": "49f79e21da11e96b8cf0e3b8bef6616c",
"assets/assets/laptop.png": "fb49e3c0c36437239db5f8c114b03062",
"assets/assets/linkedin.svg": "ae2fd1ef72361423ce8734464be77983",
"assets/assets/logo.png": "959f1d7c90a95e3e00cd231686a0458d",
"assets/assets/logo02.png": "22dae31728a9be648f546a33cc934a79",
"assets/assets/male.png": "a687ddbf4597360c3b9e293a58b1d829",
"assets/assets/mappin.png": "9cc090022ae31337336d2024160714b8",
"assets/assets/medium.svg": "a3fddd3f76b8e65bf3f1eecaa7eed64e",
"assets/assets/MONEY.png": "747e027fb3b6959685616b969e3ceff4",
"assets/assets/mostaql.png": "08e56654efc9d65a60b432cb33542d8e",
"assets/assets/myPhoto.png": "9deb567b072ea6449d2933cae929dcc0",
"assets/assets/myPhoto01.png": "4d7576c7bc0305e060e75f64558e1e2e",
"assets/assets/myPhoto_02.jpg": "79864a81abdcbb4c0cce87318eebb15f",
"assets/assets/myPhoto_02.png": "cac69d09209ef712efcc470c864f6336",
"assets/assets/nawaWebsite.png": "6b499ab01bf36d3d86b8550a3f156b00",
"assets/assets/nawaWebsite.svg": "2aa9050f6d0278fd1b0f6e12df5b675c",
"assets/assets/NOTICES": "08187b430f69a2098b476ab25f5f6c20",
"assets/assets/person.png": "5b6ba176416812aa5448c6704d31caa0",
"assets/assets/person_small.png": "6f780d058150543096d7bd3060db4ac4",
"assets/assets/phone.png": "45903a1ffa9ede882171aca9f71c4c29",
"assets/assets/promote.png": "2bd8adcad79a4ebb80888d1a0583b3c4",
"assets/assets/quote.png": "1a0aa9a06293ac5689bc32012e0e13e6",
"assets/assets/realCost.png": "d4270c94f67bbc26fb0b7198eec5b6bd",
"assets/assets/spaceApp.png": "71936cb04bfa9c038400c91b6629ddc3",
"assets/assets/stackoverflow.svg": "15ebcd4b4cc84e529c618e630f7aa2dc",
"assets/assets/tahaAtyiah.jpg": "22f7c9ccbb1f77d41d05ebabc3ee0b3f",
"assets/assets/TRADER.png": "eb82cfe050027d555b1c8f7eaa7cf433",
"assets/assets/transformar.png": "50670dba735fc8176fe5ada63ccf8383",
"assets/assets/twitter.svg": "923fdee99bd2e309ddeeb98919a73a56",
"assets/assets/upWork.svg": "521218d1b0dc04271611f2b335f26d8a",
"assets/assets/uxPsychology.jpg": "10e0da0976384077e711405121c5888e",
"assets/assets/whatsapp.png": "426617ad28567da23a2346566d84b5a6",
"assets/assets/write.png": "dc4f0d3df06d5fc9b13b9168b88e2560",
"assets/FontManifest.json": "4f5c6372e52ed085732d81b206cfd9ac",
"assets/fonts/MaterialIcons-Regular.otf": "51fddfb632a6c559889466c7cc04689b",
"assets/NOTICES": "793d9a9d641fd40e4ae85a46744370f9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "31b5ffea3daddc69dd01a1f3d6cf63c5",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "a76d309774d33d9856f650bed4292a23",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "3b89dd103490708d19a95adcae52210e",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "1f77739ca9ff2188b539c36f30ffa2be",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "605ed7926cf39a2ad5ec2d1f9d391d3d",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b3263095df30cb7db78c613e73f9499a",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "b62641afc9ab487008e996a5c5865e56",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "f7c53c47a66934504fcbc7cc164895a7",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "1681f34aaca71b8dfb70756bca331eb2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "aac1c86597fc0e0e4090c6a8cfca30ae",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "262525e2081311609d1fdab966c82bfc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "269f971cec0d5dc864fe9ae080b19e23",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "e58570e24117d23836a0022b76864b86",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "c254c1a94c0ff5e894a561e703e0c7fc",
"/": "c254c1a94c0ff5e894a561e703e0c7fc",
"loader.css": "f61841a48de5b79316184d950976284a",
"main.dart.js": "44385a96fbfe0a0a507da1e687876d9d",
"manifest.json": "33f800ebfef064613f8dec323b266c5b",
"version.json": "bd341ba74d38c530da636604a427deda"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
