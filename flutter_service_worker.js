'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"version.json": "0b06bddc7ab19ee4ca51ac8ac9151add",
"assets/AssetManifest.json": "6e7792abb4c7280bc1225ba5b64d2a38",
"assets/assets/images/mini_pw_logo.png": "83e7bc22af429d03bd524273e5dc3ef0",
"assets/assets/images/photo.png": "2674514e68c1ba03debd2954bae01b48",
"assets/assets/fonts/CPMono.otf": "b889267a6e1b8a5b1e65e3aa5b73dbca",
"assets/assets/fonts/Kontanter.otf": "7afc41964d2f099cd82a875f55a3ee2c",
"assets/assets/fonts/Prime.otf": "dfecd2960230ee34625ef3704812e097",
"assets/assets/icons/stack_full.svg": "578e8dd7e210a1ff91153d6a7e96b039",
"assets/assets/icons/languages/de.svg": "8a3b491227c375bfe8cb7b2eeb44701d",
"assets/assets/icons/languages/no.svg": "da1beb5e90114e6603cf3f10299aea6a",
"assets/assets/icons/languages/pl.svg": "2378aad3ec9317bac42f8475cb134716",
"assets/assets/icons/languages/gb.svg": "b93b144656d4ed63c65920f20d525086",
"assets/assets/icons/social/facebook.svg": "aac3f9a73c1ea659c1c4c3ee7e951745",
"assets/assets/icons/social/github.svg": "8dcc6b5262f3b6138b1566b357ba89a9",
"assets/assets/icons/social/stack.svg": "7fa1e265dadf5e67f72a8942e53f3443",
"assets/assets/icons/social/spotify.svg": "fad0aaedeb9ff1194ea282ca60f3aed4",
"assets/assets/icons/social/goodreads.svg": "0a389d18ad1defebe8a7ffa77b2c1339",
"assets/assets/icons/technologies/cpp.svg": "ae00d5365e58c9ae876c28323c11e1d3",
"assets/assets/icons/technologies/sql.svg": "1fa742448d8a126a11940bee1ff0c3c0",
"assets/assets/icons/technologies/grpc.svg": "bed0880d0b67acc1aff600f0acc84154",
"assets/assets/icons/technologies/figma.svg": "009358a10d05fa0dab06145f5a854966",
"assets/assets/icons/technologies/kotlin.svg": "83364a1902a26ac9de2a763419285dbe",
"assets/assets/icons/technologies/go.svg": "5dd0cdcf7738f991a757b082cbf1cf83",
"assets/assets/icons/technologies/dart.svg": "384ad99903293e87f01f49214db88050",
"assets/assets/icons/technologies/matlab.svg": "66e24d17cf6b4ac76a848a440a854d1e",
"assets/assets/icons/technologies/firebase.svg": "10b0719343408095f5a9b369e0787115",
"assets/assets/icons/technologies/githubactions.svg": "05e8b768dc2a3f19c50015792107716d",
"assets/assets/icons/technologies/fastlane.svg": "a0d0a04c46a2b789d5600f813cb91f8e",
"assets/assets/icons/technologies/travis.svg": "6aa04af9c5310b80782534592bf9dacd",
"assets/assets/icons/technologies/swift.svg": "a8f87f8c8f7df5912eeb590481d605d7",
"assets/assets/icons/technologies/c.svg": "79ae5321aea598adc0900bb1d216d3c1",
"assets/assets/icons/technologies/firestore.svg": "1f72dfdb40a68dda50e1829c7c66060d",
"assets/assets/icons/technologies/graphql.svg": "7dd3e9ee1a90233d9369ebfeaae52d6e",
"assets/assets/icons/technologies/flutter.svg": "4cdf0d7503a49f93f6e15313cf24e7fb",
"assets/assets/icons/technologies/rest.svg": "7a7d4451e59c70362c68f5dab9e2dcff",
"assets/assets/icons/technologies/objc.svg": "3f3947cf7a8a51332a44c0b41d9f4251",
"assets/assets/icons/technologies/nativescript.svg": "7fa36a89d5c75d0333dff90c5918ee89",
"assets/assets/icons/technologies/paint.svg": "1207b153476157f75c41f4b6ce3d8847",
"assets/assets/icons/technologies/java.svg": "249fe040428adedb1d5b3bb6811ef492",
"assets/assets/icons/technologies/csharp.svg": "bf2fc4a27b9fff648994ac3b172ffc26",
"assets/assets/icons/technologies/vue.svg": "38cf67459ca383a7e2365eca7d15cdb8",
"assets/assets/icons/technologies/css.svg": "fc26bb535ec5187e6d214e986597f91e",
"assets/assets/icons/technologies/mqtt.svg": "aaccbaf8c3ef06fe731e07b54d8ba989",
"assets/assets/icons/technologies/android.svg": "9178ad6e1d4c815b5100c27de8dccce1",
"assets/assets/icons/technologies/js.svg": "e1560e929f06c3ac8b4edfe4304b2334",
"assets/assets/icons/technologies/ts.svg": "3aeee2292aa7770ccf0aec8e43bdaaf5",
"assets/assets/icons/technologies/r.svg": "95df082b1f038c45b3bfb5675ed1baa4",
"assets/assets/icons/technologies/python.svg": "ffc01dcc015f573d0f1d831fb7b6cbca",
"assets/assets/icons/technologies/ios.svg": "449c30389a26d7579bbc0d0603dbae9c",
"assets/assets/icons/technologies/html.svg": "ed54ae20a41ae9201d3a03a6e05ddefb",
"assets/AssetManifest.bin": "ee027ba67336e0c6feba7a19376e26d5",
"assets/fonts/MaterialIcons-Regular.otf": "585ba23d4f22e09687ec8ba8feddaeed",
"assets/NOTICES": "74ef4b19b11b6bea8a6477aa04bc4eed",
"assets/FontManifest.json": "ccc58af1934638c4e90a12a9f7c67535",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"icons/Icon-maskable-192.png": "191300913d1ea1ae5d2e0044ef1485c7",
"icons/Icon-512.png": "f1ad6ce4d58e7d95e05d5b1b33d1dc1e",
"icons/Icon-192.png": "191300913d1ea1ae5d2e0044ef1485c7",
"icons/Icon-maskable-512.png": "f1ad6ce4d58e7d95e05d5b1b33d1dc1e",
"index.html": "d8726d945498379cd57972e084002dab",
"/": "d8726d945498379cd57972e084002dab",
"main.dart.js": "d877d2da58ad2015180f74df7b8178f0",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "babaf7acefea7182d40a8d826cf04210",
"manifest.json": "44af4f4d6d9b2f9fff23c43b3ddec676"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
