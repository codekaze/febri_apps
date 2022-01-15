'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "ccbe2481d71efd00c00a5cfc31437b1d",
"assets/assets/audio/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/document/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/font/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/icon/firebase.png": "c24b6b9c0fcd84c7b258879880472660",
"assets/assets/icon/flutter.png": "36b4a3e8aebd33a888253f76204de2d3",
"assets/assets/icon/getx.png": "01e7a9cf9ab316521638d6e228791c3a",
"assets/assets/icon/icon.png": "862e8927040b9f49d02fec9db9a7c300",
"assets/assets/icon/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/image/gradient/0.png": "803a1a118a2ef922b1bb764f05dcadbe",
"assets/assets/image/gradient/1.png": "7ccc92f9185e99a82ef5bdd8c8fa5b75",
"assets/assets/image/gradient/10.png": "18cb792c86fd8fbb4ba7440facfdf528",
"assets/assets/image/gradient/11.png": "a78a629a10fedac14e5ddbc15ad6c6b5",
"assets/assets/image/gradient/12.png": "e4302cc9760163576d43d096eda952c8",
"assets/assets/image/gradient/13.png": "f1c218a7e77a26e4ad79450ed7149a63",
"assets/assets/image/gradient/14.png": "b90f7b6b7ea402c71f2c11d3d5d7bbc6",
"assets/assets/image/gradient/15.png": "803ad9b501f466c36370c4d6bacc5ffe",
"assets/assets/image/gradient/16.png": "f5f69a81ab48a0ad9b9ecd53d8b97ab6",
"assets/assets/image/gradient/17.png": "20e2d8d55448097008a6f66fbb06e054",
"assets/assets/image/gradient/18.png": "19e556accfa03b9be84c183de845b717",
"assets/assets/image/gradient/19.png": "03357883bd15cc3eaa2d1387e414f74c",
"assets/assets/image/gradient/2.png": "0cec6f3fb3ae95690c01f5ad08bdac16",
"assets/assets/image/gradient/20.png": "4071d64c6c193b234d82b87e1a09ef27",
"assets/assets/image/gradient/21.png": "2857d339fd5ae0fca667357016b95ada",
"assets/assets/image/gradient/22.png": "67442d1aecc4951ef7c1d82464a533ce",
"assets/assets/image/gradient/23.png": "08348d01dfd48e705e91fd4f371a1e7c",
"assets/assets/image/gradient/24.png": "f741c1b5035912869b40306c28db9901",
"assets/assets/image/gradient/25.png": "6bfe4dc65e8e2b1c0539d78a0fcdd7c3",
"assets/assets/image/gradient/26.png": "1cee0a6f68f1115e9a668db5644032c3",
"assets/assets/image/gradient/27.png": "039d24a7977de7327889aa4904c920b0",
"assets/assets/image/gradient/28.png": "917496173ecd350a53b2f9e1502a16d6",
"assets/assets/image/gradient/29.png": "2fc96ddeb0e9cec108d1a2455df5db2a",
"assets/assets/image/gradient/3.png": "b222705e50e4561714889cb79695ae23",
"assets/assets/image/gradient/30.png": "d8fe981c48a9a5d1d7a11a21932373f8",
"assets/assets/image/gradient/31.png": "a655bff740fca50161de9eec0e5ace36",
"assets/assets/image/gradient/32.png": "2b07a7fe911168134fc27168a5fdda1b",
"assets/assets/image/gradient/33.png": "862113d3a6bff8bb1e3a9f7cf4fadbc1",
"assets/assets/image/gradient/34.png": "e638fdfae2c06298cf916ba7331d71e7",
"assets/assets/image/gradient/35.png": "141b87a935c44babe67ce082f40db1f5",
"assets/assets/image/gradient/36.png": "8673c42e76027b821d4b403884bbe7de",
"assets/assets/image/gradient/37.png": "d3d4c8127b88939492785097a2ad53ec",
"assets/assets/image/gradient/38.png": "0fe0d52f40bcc77b0293312aa5171ce0",
"assets/assets/image/gradient/4.png": "c08de8145ebef6622531a434e0c30667",
"assets/assets/image/gradient/5.png": "f535ac7be6712a9fafe9ab83406f33a8",
"assets/assets/image/gradient/6.png": "5be9b9dae6c06f5954e716dc93e229fc",
"assets/assets/image/gradient/7.png": "0ea7ebc2b90080063a4ba156ee1c2601",
"assets/assets/image/gradient/8.png": "e6a638c02c3dd0baf830887fe354676b",
"assets/assets/image/gradient/9.png": "e7481bf59bc67b00e2400a53f15e30b1",
"assets/assets/image/gradient/phone_frame.png": "fbe63e8c81354da03329e99cc1e33409",
"assets/assets/image/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/video/_": "d41d8cd98f00b204e9800998ecf8427e",
"assets/FontManifest.json": "8c6157dee49abc315fa5377e963cc9e8",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "a53d8ec7a8d88361858c5c7e97b05113",
"assets/packages/ionicons/fonts/Ionicons.ttf": "0cdf2a324d5c21f08c7f446476aa2ee3",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "2412b0e4030cb83d2866cba7018e5275",
"/": "2412b0e4030cb83d2866cba7018e5275",
"main.dart.js": "e3669792f58926d915f68356dc5e5d9c",
"manifest.json": "ed6e65ce65b5f0908680bedcf568a77f",
"version.json": "110feb251cc248c8a192d903666f19b3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
