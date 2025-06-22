'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin": "8b21102833b384cab37a7d91fcdfc722",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/AssetManifest.json": "a9fcfab748926c7bb45c60330d9c8f13",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/icons/light/ic_java_light.svg": "7bf643035da9b2a552ecb71d57a3da60",
"assets/assets/icons/light/ic_kotlin_light.svg": "0991a1bdd1b361b0154874b3b2a67924",
"assets/assets/icons/light/ic_flutter_light.svg": "4d918e296f65f69dad57cafec01de057",
"assets/assets/icons/light/ic_android_light.svg": "dc6ce6026801bc294b2237583cedd708",
"assets/assets/icons/dark/ic_flutter_dark.svg": "8665e9357a4663ce6b2f60bf3c8586b4",
"assets/assets/icons/dark/ic_kotlin_dark.svg": "06b9aa079c1e200107811e6bbdac5aae",
"assets/assets/icons/dark/ic_java_dark.svg": "4d01f7bd6cd713820e0c2649163306ee",
"assets/assets/icons/dark/ic_android_dark.svg": "2fa266dc34ab28bb2140abae6a72ebf5",
"assets/assets/images/4x/ic_crm.webp": "0817e38c43b6dcfaea7a827684530395",
"assets/assets/images/4x/ic_mytelkomsel.webp": "f6b657b00603a629f72f064056489158",
"assets/assets/images/4x/img_mytelkomsel.webp": "69f1cccf833947f3e32a2dbb3c4da0ab",
"assets/assets/images/4x/ic_hress_crm.webp": "519805e3722f8194f09519d2eaf3cc73",
"assets/assets/images/4x/img_akuisisi_loyalty.webp": "f45c72b810f085b0d7cc66dae0ba1d53",
"assets/assets/images/4x/img_hress.webp": "c9a1896b73ea29374ec42245453aae74",
"assets/assets/images/4x/img_bg_web.webp": "ecf6156073c13bf82a69d20f466d6680",
"assets/assets/images/4x/img_contact_me.webp": "c05eb8fdadc7f532589f82b8259fd4fa",
"assets/assets/images/4x/img_alkhairaat.webp": "8d18677101c863fdb376216acab501a6",
"assets/assets/images/4x/img_blur_flutter.webp": "841416e6e15fac6ab700bd2126208b19",
"assets/assets/images/4x/img_fakhry_hello.webp": "613174a3f1fca4b6c95e46d7f0e6417b",
"assets/assets/images/4x/ic_lifelog.webp": "50d3769adeb8149841843099a720b777",
"assets/assets/images/4x/img_chakra_loyalty.webp": "a45c69a704d89783565187c45d4d4df4",
"assets/assets/images/4x/ic_bangkit.webp": "e98474d71cc0fac579765bd02c20545b",
"assets/assets/images/4x/ic_akuisisi_loyalty.webp": "d8a09951d31302a858cac3f72dbdf579",
"assets/assets/images/4x/img_lifelog.webp": "6c96b374d0e5075078cbb8040ba161fe",
"assets/assets/images/4x/ic_phincon.webp": "1658f8d1e47a96bfa3e2e2de6a82765f",
"assets/assets/images/4x/img_blur_kotlin.webp": "3036e8da56883d0f0811e33678b3c4dd",
"assets/assets/images/4x/ic_chakra_loyalty.webp": "3c532db9f41e9b599a8f63365eaec0f1",
"assets/assets/images/4x/ic_alkhairaat.webp": "3d340c5f1cb1221287f370cb229b4eb6",
"assets/assets/images/4x/img_avatar.webp": "37fb3504e39643c98b2f404c8e556578",
"assets/assets/images/ic_crm.webp": "7f76a774e2c3674cf0a916eaef9a6933",
"assets/assets/images/ic_mytelkomsel.webp": "2106679a91745f58a4ce3a56069e9af7",
"assets/assets/images/img_mytelkomsel.webp": "c2974d4a7064bd9cf669b8f0446d5e74",
"assets/assets/images/ic_hress_crm.webp": "54cab87b172180dbe30d1bbd89494a62",
"assets/assets/images/img_akuisisi_loyalty.webp": "3f3e232d40f3d688f960c0b6ecbb762f",
"assets/assets/images/img_hress.webp": "bf62278aebd28b38470235018b55ddc0",
"assets/assets/images/img_bg_web.webp": "8943836cc82429394cce668889d6ac83",
"assets/assets/images/img_contact_me.webp": "7ba4dfac1b9af2cac97f140c7a5b9e2d",
"assets/assets/images/3x/ic_crm.webp": "2589ffd15b747b74ce63fb3f4d1d500e",
"assets/assets/images/3x/ic_mytelkomsel.webp": "57652f4f2bd75a7fb125aa867a30ed42",
"assets/assets/images/3x/img_mytelkomsel.webp": "2a1f23ba5a5cb808b043895f597de4b9",
"assets/assets/images/3x/ic_hress_crm.webp": "f288fbe0722fde18d5763ecf66caef93",
"assets/assets/images/3x/img_akuisisi_loyalty.webp": "e748becbf0529c90dad0ae7cd9cf9702",
"assets/assets/images/3x/img_hress.webp": "aab106f8690e559f3818e6b9dd70cfa1",
"assets/assets/images/3x/img_bg_web.webp": "eb7b7716370450c6fe9f94ea25aa8d69",
"assets/assets/images/3x/img_contact_me.webp": "661fcfa3eb0aef301a062f671a8c8409",
"assets/assets/images/3x/img_alkhairaat.webp": "e95a9d4b4719583d7fcb009fd7011980",
"assets/assets/images/3x/img_blur_flutter.webp": "f7918b383090d09c91fe78bc2c25ff6d",
"assets/assets/images/3x/img_fakhry_hello.webp": "ff704265481feffd178d3ca9898c35b7",
"assets/assets/images/3x/ic_lifelog.webp": "f871ad66b044ea4aada49f32990a204b",
"assets/assets/images/3x/img_chakra_loyalty.webp": "7a182e496c784eb5c461c8f92a747fa3",
"assets/assets/images/3x/ic_bangkit.webp": "895472e5470f04dd6bbe99d06770a1bc",
"assets/assets/images/3x/ic_akuisisi_loyalty.webp": "2615f69a4203cfadf201ee84b46cad76",
"assets/assets/images/3x/img_lifelog.webp": "e1e039f3c7ec21d4956754fc87734e70",
"assets/assets/images/3x/ic_phincon.webp": "5664380ef1aaf4cf95e2597297d9fea0",
"assets/assets/images/3x/img_blur_kotlin.webp": "e6b78562972d855eb05c8f4a8f0e5a89",
"assets/assets/images/3x/ic_chakra_loyalty.webp": "3e4c261df1fa5fb616edf922f2ed215d",
"assets/assets/images/3x/ic_alkhairaat.webp": "2e39373dcbea070b5db66533434b4784",
"assets/assets/images/3x/img_avatar.webp": "a51c643ce05bc803901efb24bb78061c",
"assets/assets/images/img_alkhairaat.webp": "afb826650e0a54f1856bca36c7a49920",
"assets/assets/images/2x/ic_crm.webp": "89f9b1a894107e9fccd88de5a531d188",
"assets/assets/images/2x/ic_mytelkomsel.webp": "87738d88192138b6e9c779bb10b944f1",
"assets/assets/images/2x/img_mytelkomsel.webp": "617de0363e42ea7be5a9e68c98e434da",
"assets/assets/images/2x/ic_hress_crm.webp": "bf98fb7858200b3755fc1c2b487a8615",
"assets/assets/images/2x/img_akuisisi_loyalty.webp": "cca02c12f1bd14f4c303760ea5045e70",
"assets/assets/images/2x/img_hress.webp": "0b624d5d5f3450ed41f6801e715195a7",
"assets/assets/images/2x/img_bg_web.webp": "e863c6fb60420182422ff1318320b290",
"assets/assets/images/2x/img_contact_me.webp": "3d2875ae4f04e2658898a99103cb9247",
"assets/assets/images/2x/img_alkhairaat.webp": "94a3c9ddab8dbf7460614c9a81580d3c",
"assets/assets/images/2x/img_blur_flutter.webp": "f7ab0872b8d95f3e95c50a7e066f2aa0",
"assets/assets/images/2x/img_fakhry_hello.webp": "9d04f945b173a9b4ae67f739110fabf6",
"assets/assets/images/2x/ic_lifelog.webp": "0a375f2371c00a5ca9e1ab6a28f43156",
"assets/assets/images/2x/img_chakra_loyalty.webp": "2e14796846c126ca12007bd4e742691e",
"assets/assets/images/2x/ic_bangkit.webp": "79450aa704c6587120645f09d704a91c",
"assets/assets/images/2x/ic_akuisisi_loyalty.webp": "05f979eea800b48caa9ebf0f36f1f284",
"assets/assets/images/2x/img_lifelog.webp": "8a4d4ad8537603306a585f7cd3c48bbc",
"assets/assets/images/2x/ic_phincon.webp": "a41b980c6a2215f87af819d531f9a5d5",
"assets/assets/images/2x/img_blur_kotlin.webp": "397334804b803f71630409f4eaaae4c0",
"assets/assets/images/2x/ic_chakra_loyalty.webp": "f871dccbe1532ebab3a143c3df37ea3d",
"assets/assets/images/2x/ic_alkhairaat.webp": "fda1e539e8bdd59e7dc106f394bc5945",
"assets/assets/images/2x/img_avatar.webp": "00590ea196a4ea6801b9aefeaa4aa7da",
"assets/assets/images/img_blur_flutter.webp": "c4501a6a95e69f19f138defdf637f12e",
"assets/assets/images/img_fakhry_hello.webp": "1f703a41864fd141eb91db98cabc9dab",
"assets/assets/images/ic_lifelog.webp": "090a9e9b395ce5c414fdf5b0ce5a8abd",
"assets/assets/images/img_chakra_loyalty.webp": "d42f898a8ca2f17eefb1e8f8e9a57293",
"assets/assets/images/ic_bangkit.webp": "18d6a6a653e3b8270c76e2715c46ffbe",
"assets/assets/images/ic_akuisisi_loyalty.webp": "8e0a7fdaf3fe6059d25e7a0e9e6d5c95",
"assets/assets/images/img_lifelog.webp": "14fbd9ec885001b062bbc22303d744c4",
"assets/assets/images/ic_phincon.webp": "900d29088d549007f3ac605606148513",
"assets/assets/images/img_blur_kotlin.webp": "c04ea6e533df4e7a4d58d8f64b93934c",
"assets/assets/images/ic_chakra_loyalty.webp": "7acfb291235efcc98e2ab6ccd7e0b912",
"assets/assets/images/1.5x/ic_crm.webp": "b54ea70ac6cd03c96706588676641333",
"assets/assets/images/1.5x/ic_mytelkomsel.webp": "73ace20c482e6301cedb66a1713c6518",
"assets/assets/images/1.5x/img_mytelkomsel.webp": "ea99f71782c4ecf12206aae8476d4166",
"assets/assets/images/1.5x/ic_hress_crm.webp": "f8b8d15022de4382a9f8891d94c75e23",
"assets/assets/images/1.5x/img_akuisisi_loyalty.webp": "b191cfb49938b82088bc7f6ec77a4f8e",
"assets/assets/images/1.5x/img_hress.webp": "02521fb53032693f83042ee0e7f509c7",
"assets/assets/images/1.5x/img_bg_web.webp": "9ab9e4bb842c047083dc566606e62d73",
"assets/assets/images/1.5x/img_contact_me.webp": "e4f74cec219c98f4e0c490c6051f530f",
"assets/assets/images/1.5x/img_alkhairaat.webp": "68b6066a00842db8bb31cbd154894314",
"assets/assets/images/1.5x/img_blur_flutter.webp": "04261ca49b40491af0cc070f766f1469",
"assets/assets/images/1.5x/img_fakhry_hello.webp": "3b61df5ea9a6e63c3a8349d4a8b81628",
"assets/assets/images/1.5x/ic_lifelog.webp": "81f7c018355ca858058d92e3e7a422d5",
"assets/assets/images/1.5x/img_chakra_loyalty.webp": "6cf641035939a50e36b4d7e7d3341d7c",
"assets/assets/images/1.5x/ic_bangkit.webp": "c174f2a29ef73d06903a0c88190bec7c",
"assets/assets/images/1.5x/ic_akuisisi_loyalty.webp": "82a9f2492be92ea0c58ed28f0b2ce92b",
"assets/assets/images/1.5x/img_lifelog.webp": "92e53b85b5942b05635ae6976e200f3b",
"assets/assets/images/1.5x/ic_phincon.webp": "902427888cb93a4119462bc6021cb9a4",
"assets/assets/images/1.5x/img_blur_kotlin.webp": "226a2591ffc3e928ddc124cb5401f545",
"assets/assets/images/1.5x/ic_chakra_loyalty.webp": "b23e2d9021d870f0727d04b3254b6458",
"assets/assets/images/1.5x/ic_alkhairaat.webp": "642365ef3d3317fa57954d29777f915e",
"assets/assets/images/1.5x/img_avatar.webp": "5136d76af78bb59d78a0db11b6915348",
"assets/assets/images/ic_alkhairaat.webp": "765901124575406e68520044d1fdf2ae",
"assets/assets/images/img_avatar.webp": "da827a4cf53f45cebcc2e5973502a9a4",
"assets/NOTICES": "975bbf31654cc7d8e1fc1c5dd676a822",
"assets/AssetManifest.bin.json": "3a4f9837d02d6321cb43cdc76f56fc8f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"manifest.json": "068f7145b68555c5632e93a148794cb8",
"index.html": "4818c0ef58410202d2594501347b3e57",
"/": "4818c0ef58410202d2594501347b3e57",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "ed098d03592b6bb61aacca30dcda2bea",
"main.dart.js": "5494718b90343cf9f233b9a2f2a12ceb",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
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
