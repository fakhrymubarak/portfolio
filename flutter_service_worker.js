'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"main.dart.js": "8a63b301b03423ee63eb99494796f1e1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "67aa923e189ad6a5bb998f4460c9a876",
"assets/fonts/MaterialIcons-Regular.otf": "d25a10d424ce1e6d1b98f35f87a3e303",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/assets/images/ic_chakra_loyalty.webp": "0862bd6801a6fc8f7d8578e9aeb92c31",
"assets/assets/images/img_chakra_loyalty.webp": "fb310540fb4811cc73d9742ff679d616",
"assets/assets/images/4x/img_chakra_loyalty.webp": "29b92de77d23d2b997cdaf61455df182",
"assets/assets/images/4x/img_mytelkomsel.webp": "b7aedd6befe435b77c30f793b4e1061d",
"assets/assets/images/4x/img_alkhairaat.webp": "bfa7ed692fd9071e90bdb1c640be9c41",
"assets/assets/images/4x/img_lifelog.webp": "98869fa1a2573e87a7bd7e6a4c9997fa",
"assets/assets/images/4x/img_hress.webp": "a9f4297a232bc1829104d3115bca74fa",
"assets/assets/images/4x/img_akuisisi_loyalty.webp": "f67052a2e42565955022112bdc114ec6",
"assets/assets/images/2x/img_chakra_loyalty.webp": "7c9e60910d413db1e8f75aa186714f99",
"assets/assets/images/2x/img_mytelkomsel.webp": "c37dc70b2f99c6caa999e6850361b6cc",
"assets/assets/images/2x/img_alkhairaat.webp": "dd44d0d6e512f247650136e5d9a2c9b4",
"assets/assets/images/2x/img_lifelog.webp": "53e09292d7d330baea27c017a598ebfb",
"assets/assets/images/2x/img_hress.webp": "51194d7c06475b6e6955a5bb8e8362e0",
"assets/assets/images/2x/img_akuisisi_loyalty.webp": "3ccbf45ad6fb7eb330c89e8ea9044e71",
"assets/assets/images/ic_mytelkomsel.webp": "22a34bcd239cdd36a1ecc554928a2562",
"assets/assets/images/3x/img_chakra_loyalty.webp": "540f49d5a1e3682fe1e5f60a43e7a605",
"assets/assets/images/3x/img_mytelkomsel.webp": "0e997a35c45e743f2adc98cb81113483",
"assets/assets/images/3x/img_alkhairaat.webp": "d687466f1466f3dd2d002a0582401524",
"assets/assets/images/3x/img_lifelog.webp": "43df70ae1caf6eadb0c3cc42e198939d",
"assets/assets/images/3x/img_hress.webp": "439f7f19dc76fc56a699a427cb3553bf",
"assets/assets/images/3x/img_akuisisi_loyalty.webp": "7931c06bfa5d18cd552fbfb280f1975d",
"assets/assets/images/img_mytelkomsel.webp": "8df6e7ec9149191bf74406f1a80e65bb",
"assets/assets/images/ic_alkhairaat.webp": "787edeea6d30f5514db37851d7f6001f",
"assets/assets/images/img_alkhairaat.webp": "bd74968a891202b5e20c5b310aecff23",
"assets/assets/images/img_lifelog.webp": "f9aa41cdeab46dd6c7974d0484f694e1",
"assets/assets/images/ic_akuisisi_loyalty.webp": "5389c471a85346ce32cb7be2664511b7",
"assets/assets/images/img_hress.webp": "57af37343ca1706403311dcd7d3d38b8",
"assets/assets/images/1.5x/img_chakra_loyalty.webp": "e8cf4a975150f3ff40420822f96b5121",
"assets/assets/images/1.5x/img_mytelkomsel.webp": "4244c22f9e14963cc5679001654f786a",
"assets/assets/images/1.5x/img_alkhairaat.webp": "4c82528667111a790c363e8608999623",
"assets/assets/images/1.5x/img_lifelog.webp": "2ad401d593a57bf7603ed4ee00a02e56",
"assets/assets/images/1.5x/img_hress.webp": "e0f0c44e755a8470804c1b3de784113e",
"assets/assets/images/1.5x/img_akuisisi_loyalty.webp": "1df91875c49405c0d921f789a4515d97",
"assets/assets/images/img_akuisisi_loyalty.webp": "e0d6b851bed33b2075df3b3aa1f5d9c1",
"assets/assets/images/ic_hress_crm.webp": "3f054f0f7521b9c6e2d308ec2a45eff4",
"assets/assets/images/ic_lifelog.webp": "bdf6869d978402d2403f1eac9e00ec9f",
"assets/assets/icons/dark/ic_firebase_dark.svg": "6d403dc098e92eb5d01d44bccb90e5e6",
"assets/assets/icons/dark/ic_jira_dark.svg": "8bebd175bfefbc68e43f0cbb0e91dac9",
"assets/assets/icons/dark/ic_android_dark.svg": "2fa266dc34ab28bb2140abae6a72ebf5",
"assets/assets/icons/dark/ic_java_dark.svg": "4d01f7bd6cd713820e0c2649163306ee",
"assets/assets/icons/dark/ic_postman_dark.svg": "eff745b846bcceb7b47b7c35a6b74c96",
"assets/assets/icons/dark/ic_git_dark.svg": "c0e4e49802ef7ee4c708cf47e5140316",
"assets/assets/icons/dark/ic_kotlin_dark.svg": "06b9aa079c1e200107811e6bbdac5aae",
"assets/assets/icons/dark/ic_flutter_dark.svg": "8665e9357a4663ce6b2f60bf3c8586b4",
"assets/assets/icons/dark/ic_github_dark.svg": "4a02f32f4070f594cab4b8d2bd879f54",
"assets/assets/icons/dark/ic_gitlab_dark.svg": "3fbff9b82c21ecfdfdc9e0e044786f8c",
"assets/assets/icons/dark/ic_attlasian_dark.svg": "adfb113460d2c8e3f7ca237b2e61d0fd",
"assets/assets/icons/light/ic_attlassian_light.svg": "fb8b0503ff0a1247220a3a377fabd125",
"assets/assets/icons/light/ic_flutter_light.svg": "4d918e296f65f69dad57cafec01de057",
"assets/assets/icons/light/ic_gitlab_light.svg": "2c3e43725a47b8a5fa6d2d643c05d6bf",
"assets/assets/icons/light/ic_jira_light.svg": "e9fbc3b27b617f2b75516a9252517c4e",
"assets/assets/icons/light/ic_postman_light.svg": "55dff77995dd82d5b9010d2ef688485d",
"assets/assets/icons/light/ic_firebase_light.svg": "7b9b25550443129c9023005203ed1dc6",
"assets/assets/icons/light/ic_android_light.svg": "dc6ce6026801bc294b2237583cedd708",
"assets/assets/icons/light/ic_java_light.svg": "7bf643035da9b2a552ecb71d57a3da60",
"assets/assets/icons/light/ic_git_light.svg": "07b70ac99e075d1e6f6e641362f54cd7",
"assets/assets/icons/light/ic_kotlin_light.svg": "0991a1bdd1b361b0154874b3b2a67924",
"assets/assets/icons/light/ic_github_light.svg": "97f0ef789d53f819f13770ceee53abd1",
"assets/NOTICES": "975bbf31654cc7d8e1fc1c5dd676a822",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "e15fc51c1a2faa1f4a501066025c67f5",
"assets/AssetManifest.bin.json": "b1aeca51e4d443ff4cba2a89a72d1a2e",
"index.html": "4818c0ef58410202d2594501347b3e57",
"/": "4818c0ef58410202d2594501347b3e57",
"manifest.json": "068f7145b68555c5632e93a148794cb8",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "1381a46a95e05fefa5d8ef488334b7b3"};
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