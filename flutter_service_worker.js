'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"main.dart.js": "f031e27d9fc82613576f3fb870e3da77",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "1bd3584fe3c00d75dd322d4f2b43fc81",
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
"assets/NOTICES": "975bbf31654cc7d8e1fc1c5dd676a822",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "c0d5bded667f3da7a6f847d77626561e",
"assets/AssetManifest.bin.json": "b90be86700fe18056e6c70c7bcd1860f",
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
"flutter_bootstrap.js": "98913dc580ac02653008f9b2cf1a3508"};
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
