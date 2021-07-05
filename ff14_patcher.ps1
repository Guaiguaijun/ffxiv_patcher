# Hide progress, which greatly increases download speeds
$ProgressPreference = 'SilentlyContinue'

# Hash of Patches and their SHA256 hash
# https://docs.google.com/spreadsheets/d/1lmVTLEj7oXx_JbUPBiWlSf1xW9hitwIgAvfQq3QzzFE/edit#gid=0
$patches = [ordered]@{
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.07.11.0000.0001.patch" = "af3a457fbd67da4db69937024ca35a87978f7a21beda67daf0ef88f182623f9f"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.09.24.0000.0001.patch" = "e5069895f535462ba47e8155426aba7f45dafdc612fa11adc05a53e9a85f2bc5"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.10.11.0000.0001.patch" = "2d55f9a9bc64da73d1065f249ac2b53623f8fc67e52f9a67a01b77492029dfdc"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.10.31.0000.0001.patch" = "3fcc4d01b76c6a2565f870ae946a54f863b0ded5b9dad969cbd41b4b96866008"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2017.11.24.0000.0001.patch" = "b4f927a02fac30ba8ed2dcd953c2fb87795a41700f2e9aad7c9ae259eb2ad163"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.01.12.0000.0001.patch" = "b2bb58b4c40f25c1928c5b7ff3ff26d72fe9d8f3c8912ea02d776345324c8177"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.02.09.0000.0001.patch" = "ce1faf1a99146ac9a54418e9741bbe9dca75fc0a4f0f1353e39db9ad923a9b05"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.04.27.0000.0001.patch" = "58dad8147e3e5ae5f94afd76854184d19ead5f76f114ed1ab6cd021129deda85"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.05.26.0000.0001.patch" = "d2fe99f443290eca091e679eaf56f93d8a2ba240d96585db3c1cc09c699f443b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.06.19.0000.0001.patch" = "59a5bb4b8e7f109afb28b2649e0e11712d1f85e07a59c8724122b44e04fc8d1b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.07.18.0000.0001.patch" = "6b8082832f3dca3e7b3acfb6bd087c8bd71ce7ae86ffc6056638095c03108f92"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.09.05.0000.0001.patch" = "cee64dcec2be9fb646f42db1e74aacf9211b4e07af270a631accc49540d65e2b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.10.19.0000.0001.patch" = "b18d6fc6988a407b82bcb090ad6dbfb48b4d7b8a0a95a11f88c40216e136d1b3"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2018.12.15.0000.0001.patch" = "589ca9f69d805307128e2d06b705844be82073dce8b2adc1667aa7288767aa18"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.01.26.0000.0001.patch" = "431e7a44d82d49e4f0a2c44179a3832c147feb11b2afd23d21ccd26fbef326db"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.03.12.0000.0001.patch" = "dfb0641cfab292002e85a0c3c10988bababdc5cc8527ba66de79d927fcdb4dec"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.03.15.0000.0001.patch" = "f802d87bc1c222c4ae50121f68907e6bcafbae60336cd6ae6a295d7994a1391f"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.04.16.0000.0001.patch" = "13f697f95bf80d9d0a602831af5fcc583c68f89b50d84a470db4cf57aeee04af"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.09.0000.0001.patch" = "91598c960c28288f7b654a1e3b576e5369dc908f56873dcc9661ca536310637c"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.29.0000.0000.patch" = "fc3956d4f6bb93336b7ddf446e36a0cfcdcd5bebc73dca2318700788140fe472"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.29.0001.0000.patch" = "0aca23f39ff1a7096e5bf353bc967a54c9884595a922b2e38acf4b06d3759caf"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.05.31.0000.0001.patch" = "49dab599a8c6c3bb7701973e7bb2d2628e7ffeb3aaef4423560cd2607fa53fd7"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.06.07.0000.0001.patch" = "0ace68ce5f8bc75f59c2ea5f745e5166a024fa4e7ace562337c61ffdadb4c75b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.07.09.0000.0001.patch" = "48b6c8e7a17baeb5c5a43463b1cf77fc2e4005a92f02c88d789c2f7b5a9434eb"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.07.10.0001.0001.patch" = "41df09f4c5a90ace703f7c844e4fb0cdda7cb9508631c66f922437e6bd1d16ef"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.10.11.0000.0001.patch" = "96cf7bc0c80d4d4bd2454df56d4c933c269caad64fad8ffc67a5a45616804aa1"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.10.16.0000.0001.patch" = "d2c255827fba5e3c18b5f64abb44f10f87ba7c5cab30d6e8822810e10743b425"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.11.02.0000.0001.patch" = "2012c8fecf0156951da4d6de63be93d37761b4f06f5f870aceef44819833290a"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.11.19.0000.0001.patch" = "536d0297520c58c9bc99ac8374a5cddbf42e3b10461996708e49a14fb3f48b81"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2019.12.19.0000.0001.patch" = "e3493b53070a9f41ca60a776b1ba60bf0dc2d3168b912204fd02014fb1b45592"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.01.31.0000.0000.patch" = "43ecc74e32a526b25c6c80c210fc7735beb5884af9c86fee8ce9773efcbba072"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.01.31.0001.0000.patch" = "ebff5f8cddc140467eb5275380bf82372cc39bc798ebab524f7d04de54897791"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.02.27.0000.0001.patch" = "559b4ab173940f5a850a15f7be2dce68767a8bfbb2cbb1a6ecaca3435df12444"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.03.24.0000.0001.patch" = "5d19d96050c6acd7c1bb365e03a3c59a8a494db73addd8ea100cd82ca753cfd7"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.03.27.0000.0001.patch" = "2df0af4a9380d2753afd88ddb8eacf59839779fff52515f2d2683c76e11a9b6e"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.07.21.0000.0000.patch" = "4314ad6ccc7934c3a8450fce6f1f6a24695981e002e627898b3a6f0a059ebf2f"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.07.31.0000.0001.patch" = "1405ec7e81da05191ec4f2894a21397ed7d5a29597b4b850e3d389ddb97a9c59"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.01.0000.0000.patch" = "701b68f9f989e428db8c1f64ae6373a6ca8b589ec5bd03932b81c541b59bae4a"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.18.0000.0000.patch" = "75852e3aa0abf5e6be5656683909977405a7f5d2d5aa035061a49d3987813cae"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.19.0000.0000.patch" = "510bff81cb63f108116444c702621c053b02d3eb9278e3f2ca5510f2c37bc3db"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.27.0000.0000.patch" = "31e2f6c5ef04dc605b96eabac9964d9f5656628380b9090969176abc5e159e7a"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.08.28.0000.0000.patch" = "3f02b416f846303a5459e85f88a61196e8dea333bc28ad12d80c6c875c7b4d56"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.09.15.0000.0000.patch" = "52b63b7d46fd80fbf3f97b9616b57a7f249c6fb81ec2ec4142fd4cf48d50674e"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.02.0000.0001.patch" = "0eee5ac5db817b53a8089c744c6bfc7be69e4b3c24529316bdc325411fd41cd1"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.06.0000.0000.patch" = "1a9ebf851d608eb9b100b49248f8205515054c1b96ad61d2f50da85017ddb969"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.21.0000.0001.patch" = "6e6820e012877865dcf1494475cccae766d2c293b286dda2f35c5fd39ae9526b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.10.21.0001.0000.patch" = "8cd8ce184ce28be93007f81c33fc24eba365baf004ebb4f87cb8d2effdf41635"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.11.24.0000.0000.patch" = "95b104adcb6c6b64859015e165dbde3fee175166edc668011b0c1318fdc9bc92"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.01.0000.0001.patch" = "849c414b83b9792392c0fd3bfa69709412543f3c6a7c5863f9a8d4788c65bf2e"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.02.0000.0000.patch" = "ccc7ef988ff62587e03ee79d6783e225cbdd4f901436ebfd283b5f08af594a3e"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.15.0000.0000.patch" = "ccbd5737deb24725bbd2dd2fc3b2eef446e7dbd2d385d09f8434816be7b3b331"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.25.0000.0001.patch" = "614da1aff78a1d9b213859d9f2249c02d1997ac7fdd876438eb166db3591f42b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2020.12.29.0000.0000.patch" = "d04d428700627c0324da6be68b28b4caaff09cce8493d6ef873dd32d027dfd25"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.14.0000.0000.patch" = "8b5246cf088a16ea4a004bbca706b16d2e1940fb6ca7ef285c07ad62387eae13"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.27.0000.0001.patch" = "b386c4017d205c099b18c403605df0f920f1f7d63fcdce90fb9c8c0d215b8d46"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.01.28.0000.0000.patch" = "857d78a9369fecefc18be17295ada1350d6c4fdcd01c343a878c106b763a0f11"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.02.09.0000.0000.patch" = "ad9b5c681995b5e8cb5523aefd0d9f7be3df1606d9457fea75372960ad50e56b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.02.10.0000.0000.patch" = "b9513e45f8c6ae4e2c4a49f87f0c13cd9e3a9e76148ca014691b21a38c7b8fe4"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0000.0000.patch" = "0c0c4172065b066955c201100fac31ae3d348a1e56db407e80968237434b60cb"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0001.0000.patch" = "fce37ab6e0b7a7d3987cb724b9514198a70d60205aef3afdf595e1663cc95f30"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0002.0000.patch" = "97d963b4565d6eb4edaf66cb8284239e90d6169b3314e29f4976eb4061bf2e67"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.26.0003.0000.patch" = "5cc405cbb945df30844af3bca129b6e5e388486463d3beb5065bcf41c552d590"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.03.30.0000.0000.patch" = "a15f382b3afc8e4c5b9f1af3234ecd06dab7e2f5248a19b1f2b43f35d51766a1"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.06.0000.0001.patch" = "facb1611d8cbefebef0370329c8dd42f4f5a573d85da674cc3b073410ae53a62"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.07.0000.0000.patch" = "4ced15a36c346daba7ede36ce4b99f9474d37d3a9199002ae739cf76ca9f6887"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.20.0000.0000.patch" = "7cade8fbaf756741c9f90b03ccb1321ebfc78ebc50f94a25c45fb6bc4e8d39d2"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.21.0000.0000.patch" = "4037c5fd0fedc8075c6b7082b67ad4f075a2e6217fb0e4c1d43df9e34b745710"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.04.29.0000.0000.patch" = "eb9415ca9c3380623501fcf4d456941535768c2506fea8a3b470c30234191daf"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.07.0000.0001.patch" = "2dd2c406e1310a781cec39baa95dc70642bee80ebd61f69011196b3c33c87ed8"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.17.0000.0001.patch" = "61cf3b2fca0e250014434310d9ed05452cdea6a02557d0ceb429737140cacafd"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.18.0000.0000.patch" = "1d790bd94bb680adc8974481e39f26d53a8255d6687b52dc64334e567c29a2b1"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.28.0000.0000.patch" = "bbe4554f226ad396ef6483ad51f2cc9fe49bdd3be3b83c2dedb6572db6d7a76b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.05.29.0000.0000.patch" = "f741043f0a11625a8d709b8fcf0963e26988cfa9546f275750da9ef4c9006445"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.06.15.0000.0000.patch" = "d5ed9ca7c0ab87e82e39d304cbedba91066bd72ce7f26dc6be91642933fc28e3"
    "http://patch-dl.ffxiv.com/game/4e9a232b/D2021.06.16.0000.0000.patch" = "8432b26608b4b2975db6fc00b400ef0c4d9f29ed3af96819644a5ad695b3f2af"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001a.patch" = "b19c3b611215a0fa3e750f1c5875ecc1b6a1b4ce6f8058c2c316cd60ec27b8e6"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001b.patch" = "cd3fc0a011407bb7678cf247000d619378b74f6ddec728db267864eb04f70ce7"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001c.patch" = "b29520d7f85c61e3980b30825e6ffe51b1965d4cb7131574a921fca561673503"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001d.patch" = "1bd9d8cb2bb53a419a8cd236c5d5a426afa1ffe957a606439161a070fe0b73da"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001e.patch" = "a238f678b753065227e39f6fee5c98a89d3ea4c89bfe353e2d63e8ffe830a17f"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001f.patch" = "dc1c6e29668426b19e8060c48ed54d5f4e17265d58ab2592238a1fa041cb2895"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001g.patch" = "bade54f392017a681fef131d3c710961c3c2691abc27ae98be85ec9f9fdfbc80"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001h.patch" = "7a8726bc4a0b541fcf07a32597eb73394b3720b9c340f6010fa86dcb6070239f"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001i.patch" = "855edbed14a0cb4c65a9ee17e546f0a0f8f33f673862d7f494c38f752077fae5"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001j.patch" = "2ff863bb0637f593757f6dea2dc9a75f916c328b31fa0a71dd2cf67f4d3bf13b"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001k.patch" = "9d20cbcf3c9a3456abc22ff14fd49ad2f0fcededad630ea2f23ca028dd30df9e"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001l.patch" = "d6500179dec1be1fad58469d52dcf889ae2ddc5d34532da9a4a45a3965929304"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001m.patch" = "c0210366b3a4068c2a7dc7c83d4d50cc5c46e2986536a90f48b9cef15caf9ab1"
    "http://patch-dl.ffxiv.com/game/4e9a232b/H2017.06.06.0000.0001n.patch" = "34498b5ea75bc294d83517c6957c10c5910298ed49f8baedfe5dbd03ed579a55"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2017.09.24.0000.0000.patch" = "d24897af05b86a280fe9b9fc0fbc4f6a91faf404a616d1be3669688943f60017"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2018.09.05.0000.0001.patch" = "706c74f56c56f09322f8f8b9e8b025be6e9c672f7c0b4c4a6bb0c84d6b51aced"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2019.11.06.0000.0001.patch" = "188f0a0109ddbaf16c3ee259b80d3656d757f38750316d21d11989fca8655433"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2020.03.26.0000.0001.patch" = "bea7f7004e139ec1cefbc825e413c53082673c35c393195b8bdcd7f114d11ef8"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.01.15.0000.0001.patch" = "9101c9dd14f882b5f9dfed30e2cdffde6458e18e18a36eff493c025b27ee90b5"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.03.26.0000.0000.patch" = "afa99874fdeedde42feabd615ad1102cf3a898c6a9c602432c9d1a08f8b2f0b7"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/D2021.05.14.0000.0000.patch" = "85fe726dd05d9d0ab950134a121b883a9cff736fc7b493b9229a211b46b02855"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001a.patch" = "5c7df6769b1022cb17e0543e147c1c34da02a1ee4fcb8695ac22053fd363c821"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001b.patch" = "e30020c901a8e6c39e7715da2dabb8715e648861b4a22ca0cfd7166fba577a37"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001c.patch" = "0d161f257dbbd97ef9d5b6b017e0287359831b2dd2748576ea53edab685ded14"
    "http://patch-dl.ffxiv.com/game/ex1/6b936f08/H2017.06.01.0000.0001d.patch" = "78dfe586575e2b8ce20e195ad517de1ceb18a50786c61f1b5b536a3f3a9003bc"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.03.18.0000.0000.patch" = "f4941ddab57efeb3bb31313073304b7b79bc92fc5e90b0cdf5786b71105643ad"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0000.0000.patch" = "a2beaf700afd577c740d8b477cc0cf2a38158087435300146a2a9dd644c8ae5c"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0001.0000.patch" = "b7d5409c444b4b13baa30b55c89e3464326e97acd2a6ae7472b13dc7adc26284"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.05.26.0002.0000.patch" = "d7788ff9eb67beed7cd018b7419d31c5dd559f2a94b03d3cd22c350c4cb9ffe7"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.06.27.0000.0001.patch" = "e3a47a3cc6ccf7a74f09fb142f24b2c4cf06e8ba08c81095665e00c01d423d58"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2017.09.24.0000.0001.patch" = "f4f96b41e2cf11f7ad555dd126f0df5ab4c95d94c573a55b48c29c408a03f947"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.01.12.0000.0001.patch" = "1099813ccc077f38ed7f8845ffe6ec0b1c068174d5d3e9d48a223a7453277b9f"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.02.23.0000.0001.patch" = "b197439d51012c62df06f79ce8b95b346ff514c047cb28b780da6ce9126546f4"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.04.27.0000.0001.patch" = "bbf699c230fa7470931174da66e59454cc8a459c5c0197aee1dd0501851fe81f"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.07.18.0000.0001.patch" = "e5ea22cfa97a9a3c6c0e295223c97bf6b7fb46c4a473541b2457fb4200447840"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.09.05.0000.0001.patch" = "1fdd755825be6caf34200bee05defb1359fb2b05fabd7421512d0a88d8dc147b"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2018.12.14.0000.0001.patch" = "35511fdaf23061341054a03b5df1e16a13d5d1b6f6a769d6c0e88994dfc50209"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.01.26.0000.0001.patch" = "502ac86b62ba98f62afd86901e14efdd40875e52802690ce278421f5ce72ae51"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.03.12.0000.0001.patch" = "71be8e4a3d0c0c40cb8722f09ddfc3f5d3abdbe7fe92f2607b7c75a9d8d4db09"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.05.29.0000.0001.patch" = "4860e51cbf8e013131b47b9173e25f21752ecc1a5dc214bf70d22aef59cf4a86"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2019.12.04.0000.0001.patch" = "1a1403507003e3bb47cbc38b1d2924719e84e8c170764093915b04bfea15d469"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2020.09.17.0000.0001.patch" = "35ee25eaf81244647f29eb7c29ac317ca9ea514e56114669bd47e68ceebd338b"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.01.15.0000.0001.patch" = "49ee34d7826847745bcc5ef16d2a24e9513bddc81fd8ef00eccc45fd9853ee31"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.03.26.0000.0000.patch" = "f475de57e70e1e718aa99f89c97672d20003606c5a9dcd0358f8c4ad84e68078"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.03.31.0000.0000.patch" = "b24d4fe59ce66eab591bb495f614515b3c8b8eff8e4eb6c80eef043179ec08a9"
    "http://patch-dl.ffxiv.com/game/ex2/f29a3eb2/D2021.04.29.0000.0000.patch" = "acb01616ae4f63d84302e3a0cb317fd6f5625e531f2e495074c98c71fba2146d"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.04.02.0000.0000.patch" = "ff57916ff31b28b71ce2da38a4fb1733da0c593697f35e5886d6e2ba71604f6d"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0000.0000.patch" = "e66e9f21444b48b9b08439f1d636025eaace2801401f645a76ecd94885710c44"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0001.0000.patch" = "0f6ab4bae7c98cc4323e8c902fde2146aac8cf104a7853d483b320ae7902dcde"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.05.29.0002.0000.patch" = "bad91a55c4629a2737348c27f5a938034af11a9cffb150d2af9bce82f478bd8a"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.07.09.0000.0001.patch" = "496e2ee1614ff1419dcda28105736c29533c9b6009a5d1e9dcface73e5072ff4"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2019.10.11.0000.0001.patch" = "539aef48dee0eef89205e7b8546e77a8e284cb93db7bf0206553ed0e37d2bae0"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.01.31.0000.0001.patch" = "606ceebf762fdbda6fa23ec1cec029212c237f4af2a61bf7a05d46fcb6256953"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.07.21.0000.0001.patch" = "aa7c4cdaaf7075c19e8b48ffdff1da9ad2b96df2dc17c74e123e45c4ce91103a"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.09.15.0000.0001.patch" = "518c104b69dc74a2eaa8b9791ece16c88bd70cfd8b78a0b8c826ba2830963971"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2020.11.24.0000.0001.patch" = "e467c59fc6cb7e6ac1ce8709717e7c60c73610b29da0db56692a1d5a03aa041f"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.01.14.0000.0001.patch" = "460e5432138d44d9242b0febb99c33a0db42a530839a61aa718adac9c1b84bbf"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.03.26.0000.0001.patch" = "7be624a94cd3b56eaef569dd3072043fd3f07ffd76861df0f83da0e9af491392"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.04.29.0000.0001.patch" = "388c25631b645233497d08a24b5c647b51978188ef504fa98b4f03dd6f963670"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.12.0000.0001.patch" = "f314e256b938da652ec54d0590fd89d980e9993961f96501c7d2b2c64d001c2b"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.14.0000.0000.patch" = "0c04fe8fa9aa5e9dbe59e50dc2e41563be4ad3f6017b30e1d7c0ca45d90be8a2"
    "http://patch-dl.ffxiv.com/game/ex3/859d0e24/D2021.05.29.0000.0000.patch" = "388bac90893722eec3965dceb89fa5ac7d5850c421945e4d2839e03f711b2aec"
}

Write-Host @"
######################################
##      FFXIV Patch Downloader      ##
######################################

This script will download ALL of the patches for FFXIV and is
indended to be used as a workaround for many common FFXIV Launcher errors.

THIS WILL TAKE A LONG TIME - just be patient!

Press any key to start downloading patches...
"@
$Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown') | Out-Null

# Download all of the patches
Write-Host "Downloading $($patches.Count) patches..."
$i = 1
foreach ($p in $patches.GetEnumerator()) {
    # Parse patch ID and name, this sets a magic "$matches" variable
    $p.Name -match "https?:\/\/.+\/(?<id>\w+)\/(?<name>[\w\.]+)" | Out-Null
    Write-Host "#$($i) [$($matches['id'])]: $($matches['name'])"

    # Create the necessary folder structure for patches
    New-Item -Force -ItemType "directory" -Path "patches\$($matches['id'])\patch" | Out-Null
    
    # Check if file is already downloaded
    if (Test-Path -Path "patches\$($matches['id'])\patch\$($matches['name'])") {
        Write-Host -NoNewLine "`tValidating existing file... "
        $fileHash = Get-FileHash "patches\$($matches['id'])\patch\$($matches['name'])" -Algorithm SHA256
        if ($fileHash.Hash -eq $p.Value) {
            # File is valid, don't redownload
            Write-Host "PASS!"
            $i++
            continue
        } else {
            Write-Host "FAILED!"
        }
    }

    # Attempt to download patch up to 3 times before failing
    $retries = 0
    while ($true) {
        try {
            Write-Host -NoNewLine "`tDownloading... "
            Invoke-WebRequest -Uri $p.Name -OutFile "patches\$($matches['id'])\patch\$($matches['name'])" -UserAgent "FFXIV PATCH CLIENT"
            Write-Host "DONE!"
            break
        } catch {
            Write-Host "ERROR - $($_.Exception.Message)"
            if ($retries -lt 2) {
                $retries++
                Start-Sleep -Seconds 1
            } else {
                Write-Host "`tToo many failures - giving up"
                break
            }
        }
    }
    $i++
}

# Done!
Write-Host -NoNewLine "Downloads completed, press any key to exit..."
$Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown') | Out-Null
