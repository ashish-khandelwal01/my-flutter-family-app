'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.json": "5104083c397e0c28f59a0a2230feef1a",
"assets/AssetManifest.bin": "190e5ccd74d260d11e6cee02f64e2554",
"assets/assets/Family/family6.jpg": "0fc99c2dd814e0fdf4af37e8a389e8da",
"assets/assets/Family/family8.jpg": "7208ecbd2333cc058132485f21cf7c4d",
"assets/assets/Family/family21.jpg": "c9492e2dde56e6e3d5dbea0824dc5dff",
"assets/assets/Family/Family24.jpg": "f85936f9625edfd5f5c802aa37e8d99b",
"assets/assets/Family/family9.jpg": "e2445a8581ed1d5c1ad09384070c1af8",
"assets/assets/Family/family29.jpg": "fdf970bae8f5f739020cc1248417d958",
"assets/assets/Family/family23.jpg": "2efef198e232d3a1687ee7592d9e8bf7",
"assets/assets/Family/family1.jpg": "1cd96e53eaff826a667e410e3f5a4503",
"assets/assets/Family/family11.jpg": "5cb7eddf3f9f0283b229f59438cc6406",
"assets/assets/Family/family27.jpg": "1705fd1908e46405a43175a210c62faa",
"assets/assets/Family/family17.jpg": "d1cd4a48aa534b02fc18fa6a50de7ccc",
"assets/assets/Family/family2.jpg": "3884c09d67d91f8fdc5c392632a6e8de",
"assets/assets/Family/family18.jpg": "f84553182ab4e8e88e9e195cc3f3053f",
"assets/assets/Family/family15.jpg": "06f7025234f529791f856da43514730f",
"assets/assets/Family/family19.jpg": "1806f1a0912be552b7ac15af045a7f0f",
"assets/assets/Family/family3.jpg": "c1b6f1bcdf459e30209f618baa7138e0",
"assets/assets/Family/family30.jpg": "85428acffa415050ce9b26dcef5d8a4a",
"assets/assets/Family/family20.jpg": "d47217503b04b7170454c92a3220dc94",
"assets/assets/Family/family10.jpg": "5af55c869d3cf47d5656632d16ce333a",
"assets/assets/Family/family4.jpg": "7002930447b5b38d4ec20586a41bab91",
"assets/assets/Family/family22.jpg": "bd62df45ece710630a87a0d97b00fa99",
"assets/assets/Family/family7.jpg": "cf7560d1f530f279e3b0e1df100ae59f",
"assets/assets/Family/family5.jpg": "e4b449289419585b678373ee67fd515a",
"assets/assets/Family/family12.jpg": "48dcbb11f15104ecf0c4dc4af5a4fb7c",
"assets/assets/Family/family16.jpg": "eaaec9e6f20679afdfa45c1cd96774c8",
"assets/assets/Family/family14.jpg": "84930f9a3fd154630b8090b657635827",
"assets/assets/Family/family28.jpg": "bdff6afa0b21a78eb5128b74fa95b628",
"assets/assets/Mummy/mummy2.jpg": "8013df730d2d798aa5a1e0225266f083",
"assets/assets/Mummy/mummy10.jpg": "903f777f2c164db4441550715503047e",
"assets/assets/Mummy/mummy5.jpg": "d5a6efd32d4bfad6d987c5664f69b11c",
"assets/assets/Mummy/mummy1.jpg": "69c6b83b456a2318281ff09f38e58e74",
"assets/assets/Mummy/Mummy8.jpg": "fe3ff27e25f8e8021950ff13d332ded4",
"assets/assets/Mummy/mummy6.jpg": "7e8180c0a2de757c162e4e48398049bd",
"assets/assets/Mummy/mummy3.jpg": "08ad30d785dd2df1987288211412cadd",
"assets/assets/Mummy/mummy11.jpg": "bd6864b406f5b2715c27cc08b8ba810c",
"assets/assets/Mummy/mummy7.jpg": "35731534c3e1086b00abbbb13d5bd347",
"assets/assets/Mummy/mummy9.jpg": "7c5ce69224b8cafb4cc418e357a89489",
"assets/assets/Mummy/mummy4.jpg": "ff9c88806e5c7ffa1039d715a05df7e2",
"assets/assets/music/audio.mp3": "cb3ad950bd767ae92f24f6d12d54d054",
"assets/assets/Ashish/Ashish17.jpg": "75724ff85a2272893817c9fc6c913186",
"assets/assets/Ashish/Ashish13.jpg": "6f24d9550d7d4a4d1ff61c9d0f4f6da5",
"assets/assets/Ashish/Ashish12.jpg": "36a3941a942a0f52ff5b60e8b95a5e9d",
"assets/assets/Ashish/Ashish19.jpg": "829c0e5c1b120d6350bca992daddeacd",
"assets/assets/Ashish/Ashish11.jpg": "101564fad4a3bca580931dc3f8876ff5",
"assets/assets/Ashish/Ashish7.jpg": "6f1e258ab6dbda9f27139682bebee45e",
"assets/assets/Ashish/Ashish16.jpg": "797b1c2b0a61abd779dcce2472567274",
"assets/assets/Ashish/Ashish14.jpg": "457cd0c055a48b7e9232733a8a526acf",
"assets/assets/Ashish/Ashish10.jpg": "dffdd6904293a33bbe46401eee67076d",
"assets/assets/Ashish/Ashish18.jpg": "392c29651cac6ab2411b8af11a2eb200",
"assets/assets/Ashish/Ashish6.jpg": "86765cb70983e0e258da4ea559143084",
"assets/assets/Ashish/Ashish9.jpg": "54becddef3216785b33529b208951824",
"assets/assets/Ashish/Ashish5.jpg": "9ce9548b0cd3ae8987070c958eff2105",
"assets/assets/Ashish/Ashish1.jpg": "df296678fa0e39be4c762eb1f747a396",
"assets/assets/Ashish/Ashish4.jpg": "ef2cd077421d15e30757d9c4135982d3",
"assets/assets/Ashish/Ashish8.jpg": "710a5f3db109c29990e87ccd9516eea9",
"assets/assets/Ashish/Ashish3.jpg": "8b6196b8623fc86fdd3b20ca83851825",
"assets/assets/Ashish/Ashish15.jpg": "f7db5d25bd249ce4a8c1ef5629dd5a22",
"assets/assets/icon/app_icon.png": "6aa3824e2b55810e8b500e2858d325d5",
"assets/assets/Swati/swati10.jpg": "176861b1b1e08ea3760fe239e4bf3427",
"assets/assets/Swati/Swati6.jpg": "87638ad74f0e05e2390fc38898a912d0",
"assets/assets/Swati/Swati9.jpg": "215f48c60f5eafacdb505e3879e559ff",
"assets/assets/Swati/Swati15.jpg": "57003a4bdd93ebce1816e0301865a45d",
"assets/assets/Swati/Swati4.jpg": "639194cc554c49b4eb90094a46f340f5",
"assets/assets/Swati/Swati1.jpg": "84538fc97a271ace975641b063abda0b",
"assets/assets/Swati/swati11.jpg": "d36c03df36caf6464e3b0a3f742fe58f",
"assets/assets/Swati/Swati13.jpg": "5027f32b72014aa7d69141315a4b27c3",
"assets/assets/Swati/Swati2.jpg": "aa9e9fd2462520e80eb3715c0a71911f",
"assets/assets/Swati/Swati3.jpg": "6058d523b58cf214c66807f6eca5f954",
"assets/assets/Swati/Swati5.jpg": "4d3c334b2eee14001ecff857752c4bc9",
"assets/assets/Swati/Swati12.jpg": "7cd93b3c6386cc60284d18bf4e6332af",
"assets/assets/Swati/Swati14.jpg": "319adea86dadfb250107a12fcbcfd00b",
"assets/assets/Swati/Swati7.jpg": "cfe3c679f2fe479a7a9418b9b3accbe3",
"assets/assets/Swati/Swati8.jpg": "d54b2231b9b2eb6d340973d5e95d0438",
"assets/assets/Papa/papa7.jpg": "278d6f77f1d9747c83f06c04a0c1fd69",
"assets/assets/Papa/papa1.jpg": "6d5425aa21683958009574492acca379",
"assets/assets/Papa/papa2.jpg": "d18d1a2d8e362f08cd856dd265cc65ea",
"assets/assets/Papa/papa4.jpg": "f57e33d24184d14dedb09cfd52f7ea3a",
"assets/assets/Papa/papa6.jpg": "2302534f2aee9df6deed44fe18ac52a0",
"assets/assets/Papa/papa5.jpg": "7424244d17ffb92d3bd61d126978ab42",
"assets/assets/Papa/papa3.jpg": "e2ee60155ecd356dc973c6b358aa1915",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "d906e32ed0e4d12cd4159861cc5fffce",
"assets/AssetManifest.bin.json": "2ffb97435fdd3a63e6e18915a334d4aa",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/NOTICES": "3b3b441625687e5b5cc07b10453825f0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"manifest.json": "6a8c41479762d0eb0fa6a546efbedd61",
"version.json": "e09552c0f2d1b50668cf139eefc1951b",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"index.html": "de70cebcc7cfef330671d3f779b9e9fd",
"/": "de70cebcc7cfef330671d3f779b9e9fd",
"flutter_bootstrap.js": "55cb3163a3d25cacdceb0b41a9107fb1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "eca4133cd38bfea3b25cef869af7aefe"};
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
