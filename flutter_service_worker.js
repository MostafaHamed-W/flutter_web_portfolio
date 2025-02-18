'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "d17de061085a061fca255a3573656e6e",
"version.json": "bd341ba74d38c530da636604a427deda",
"index.html": "45f81abcf7ba93f57be67bd2bb4c2700",
"/": "45f81abcf7ba93f57be67bd2bb4c2700",
"main.dart.js": "00651e23967bd570478937231493eb26",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"favicon.png": "ea0c8b9bd1547f1a060890981dce61fd",
"icons/Icon-192.png": "29497c47c6c461c350d369c01dd37a7f",
"icons/Icon-maskable-192.png": "6ae042f5766dcc61a5346d6dc95b6c2e",
"icons/Icon-maskable-512.png": "9967b9e84dbdef98a0fef1f7249e90a2",
"icons/Icon-512.png": "7bfe664a7724091c583b3516c01d27aa",
"manifest.json": "7153a3b60445056c3f7f317a17a33434",
"assets/AssetManifest.json": "ad7d5a5e3f8d006ef4987e65a94a0a06",
"assets/NOTICES": "9dd12a481dc61fe9311cdf143073586d",
"assets/FontManifest.json": "185d919c8f197267573804f237d4957f",
"assets/AssetManifest.bin.json": "ea4b9c6eeef9f244b8ab5c84a56e40ec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "03e1e30af8f989b85448cef032900cda",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "6932b81eb7c6bb798d932c1fa18d5a76",
"assets/fonts/MaterialIcons-Regular.otf": "bbc6c04f36cf26ac3537e6085f0738d8",
"assets/assets/images/personal_photo.png": "12f3edcaf3d6926efb982f68cdfe51b4",
"assets/assets/images/projects/game_fusion.png": "36c2e1f025823f38eb3fc1942653553a",
"assets/assets/images/projects/pulse_talk.png": "3aedf9e0819d2c5fabd99833fa5431da",
"assets/assets/images/projects/odexss.png": "1de96a292c065792926a4ec3ee0a023b",
"assets/assets/images/projects/spaxet.png": "adb1b75eae597b0c8c6c02a33098be13",
"assets/assets/images/projects/instagram.png": "1970fe07bdab69ab23dbaab7a8381af6",
"assets/assets/images/projects/spot_savvy.png": "5a3264468c9f302f358b3ae4121877e9",
"assets/assets/images/projects/bight_memo.png": "4df3a2da5cba2c6b87502bd2c25121de",
"assets/assets/images/projects/cart_scope.png": "6fbd6fdd5e50a3ef27386d9a83e6c8dc",
"assets/assets/images/projects/alameya.png": "a8e9d9140ed907d0714cef066e8f654a",
"assets/assets/images/projects/insta_clone.png": "3984ef80ec84a9dae69b97129a529969",
"assets/assets/images/projects/saipers_gate.png": "2dc73b1a10955186e5d5a772f86b1fcc",
"assets/assets/images/projects/book_hunter.png": "a93d479f1c5498189358807c1ab516e9",
"assets/assets/images/projects/stepsCrm.png": "e959ac4085322d123088609ce7ff78ee",
"assets/assets/images/projects/spot_savvy_black.png": "65b3506d3d1e38895fdd421ab112cae1",
"assets/assets/images/name.webp": "d962ed2a1f843d76dff7164b7925f459",
"assets/assets/mostafa_hamed_flutter_developer.pdf": "88741ae53a7895517b6d20b50efda203",
"assets/assets/fonts/AvertaSemibold.ttf": "774a72961dd69f90a772237432b1623e",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206"};
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
