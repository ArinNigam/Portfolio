'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"icons/Icon-maskable-192.png": "b5556e071b9f75bb9464589f764b7907",
"icons/Icon-maskable-512.png": "d21908971c3c01467f620e4609826074",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"favicon.png": "1b0a82782d293cd5331529ff557c2c55",
"flutter_bootstrap.js": "4634da038e0102431d2e1a6890074d3e",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "36654f718dd8d3fe05a8f335c55007a8",
"/": "36654f718dd8d3fe05a8f335c55007a8",
"main.dart.js": "157bd47f5fad9e9dcaaa1f51c61cbbec",
"assets/lib/assets/images/bits_pilani.png": "574353bf3d91dfb9dde39807b3ca7f9b",
"assets/lib/assets/images/foss_overflow.png": "319ee24dc5958fc04c4ab3ba30662302",
"assets/lib/assets/images/DSA.png": "7c2aa15c1649e203b0857cdb4d507107",
"assets/lib/assets/images/profile_pic.png": "83d64c2b94118e3196cb1535701d3ec8",
"assets/lib/assets/images/socio.png": "17b0277134866abe8d0c55dc3155df0c",
"assets/lib/assets/images/Animation%2520-%25201716380402174.json": "b174a7b1ba52c5879f8e033ed9995681",
"assets/lib/assets/images/weather.png": "1de85ec3f33bcc692daf39a5001e97c2",
"assets/lib/assets/images/cricstat.png": "86ea291b729b8187cff39ad7109d73d1",
"assets/lib/assets/images/chatconnect.png": "4900fa63cf8157a05f78db9cdc28dcda",
"assets/lib/assets/images/tic_tac_toe.png": "7352e9c3d37a7b600427481ddab90e08",
"assets/lib/assets/texts/about_me.txt": "c9923867c0be2ccbbad6a41ff6a91cfa",
"assets/lib/assets/texts/education.txt": "8638816efdc0269ac01e893e734bdae1",
"assets/lib/assets/icons/postman.png": "0c8dc311578adb7e968d4e482f0e163f",
"assets/lib/assets/icons/mongodb.png": "a99ab283eb6be4af6138cefd6d8c62b4",
"assets/lib/assets/icons/html.png": "ba888c414669a8f2d63bdb9be519a676",
"assets/lib/assets/icons/express.png": "4f32dfbc9188b77a29743b677be275d5",
"assets/lib/assets/icons/numpy.png": "a73dffa7c75961314e881d1f3e01035a",
"assets/lib/assets/icons/scikit.png": "6108bd0e9ae093f2e8e2e1c81f113348",
"assets/lib/assets/icons/flutter.png": "fea1b7d8d2c988ee67be748a576b83d5",
"assets/lib/assets/icons/nodejs.png": "683db41129a243c900bcb6c8f8deec18",
"assets/lib/assets/icons/matplotlib.png": "6af57da662005c00ac81b5a61b2d0bbb",
"assets/lib/assets/icons/css.png": "a48e8154cc751f0b56e767f5559d3efc",
"assets/lib/assets/icons/java.png": "f5e54cde35489b0d9df9d7ac4fa96b5c",
"assets/lib/assets/icons/github.png": "053fd9571cc4cc805189ff169894a93c",
"assets/lib/assets/icons/jupyter.png": "327f0ae0b5d7c1d8517dd5ede324707c",
"assets/lib/assets/icons/tailwind_css.png": "4f78acf569d247c0a8cc6a64cf88d365",
"assets/lib/assets/icons/js.png": "1e69b934b99dfde141e8437649f9dc51",
"assets/lib/assets/icons/python.png": "fb5757aa40b2b736da4860643a3d9f2b",
"assets/lib/assets/icons/canva.png": "a934f7eb4e759fed905e36bbf2c365c1",
"assets/lib/assets/icons/c.png": "ec336625309317ecf797ba1a79f42645",
"assets/lib/assets/icons/sublime.png": "aa7d5261adb3e941ea73e7f9b545e5b7",
"assets/lib/assets/icons/c++.png": "2b882d962d108044f08fcf3e8f1dd401",
"assets/lib/assets/icons/react.png": "ccb270747f6ef59a25475a7aa25ccf9f",
"assets/lib/assets/icons/vscode.png": "7aaad6628a28bff0f72dc33d01113a0c",
"assets/lib/assets/icons/logo.png": "5050a4ff7dad49f968f41f51813d3a97",
"assets/lib/assets/icons/dart.png": "57f15cd0a381a5d201f633c80c7ca5e8",
"assets/lib/assets/icons/figma.png": "356fcd058ed235fb2d0b141e39b07e4a",
"assets/lib/assets/icons/firebase.png": "6bbf7da3d6bb07330bef07fe0bc4d5ed",
"assets/lib/assets/projects_images/socio/update.png": "43d02cd93bce420992a25631e470c30a",
"assets/lib/assets/projects_images/socio/chat.png": "1028d1ee6a6530a8171380c81df926ae",
"assets/lib/assets/projects_images/socio/signup.png": "a2d6e6eb418d27afe4566b0a6ed93a40",
"assets/lib/assets/projects_images/socio/login.png": "e6144b8b5602a34b7bc4ca19948f5c0d",
"assets/lib/assets/projects_images/socio/home.png": "de2f10e371805799e960a9a3424acbad",
"assets/lib/assets/projects_images/smart_insti.png": "b7c1760190ba5009ca45d52e5593e52f",
"assets/lib/assets/projects_images/chat_connect.png": "7b076a888173d2a554bf0663671b69a0",
"assets/lib/assets/projects_images/smart_insti/add_menu.png": "ecb161f33674004d569309a8dc9deefe",
"assets/lib/assets/projects_images/smart_insti/year_picker.png": "d753ec3b0348a67bb5463ec96bcc1c61",
"assets/lib/assets/projects_images/smart_insti/view_menu.png": "53ddc04b9ef040cc6258dc57038845f8",
"assets/lib/assets/projects_images/smart_insti/user_auth.png": "c27786195f5afd8b5f9205d5fbf14496",
"assets/lib/assets/projects_images/smart_insti/view_room_vacancy.png": "0479cdf0c30d63599a7a78f70f140469",
"assets/lib/assets/projects_images/smart_insti/user_dashboard.png": "9b6dce116cdd530bcf4bb88a5b26eebc",
"assets/lib/assets/projects_images/smart_insti/view_mess_menu.png": "7244be8850b13dcb4a9cd96f8b953099",
"assets/lib/assets/projects_images/smart_insti/view_students.png": "edfbfcd19062ba807d3466147949aa77",
"assets/lib/assets/projects_images/smart_insti/view_lost_and_found.png": "99bc57a8c8e9f2a85eef85c9dbb1e92d",
"assets/lib/assets/projects_images/smart_insti/add_course.png": "095d6d4019a547fb856ff6d6b5c44f4e",
"assets/lib/assets/projects_images/smart_insti/admin_dashboard.png": "87ea9104fea51793d9f2287ea3ed207c",
"assets/lib/assets/projects_images/smart_insti/chatroom.png": "25fe5cf1842bb1b9564a5e67d334a8b1",
"assets/lib/assets/projects_images/smart_insti/timetable_2.png": "6454bcea702a8423c839cda2dbe9f155",
"assets/lib/assets/projects_images/smart_insti/admin_auth.png": "4b3675d727149d40583dae1cc5a5ce35",
"assets/lib/assets/projects_images/smart_insti/view_faculties.png": "ad7f6a692880575f78734301fdf48663",
"assets/lib/assets/projects_images/smart_insti/view_courses.png": "dd70abba8714a655dc32dddff7a76336",
"assets/lib/assets/projects_images/smart_insti/add_faculty.png": "72795950deb8d5f26eafa4a2738723eb",
"assets/lib/assets/projects_images/smart_insti/add_rooms.png": "9d2082b00b7f5d6257658e8fb2da9324",
"assets/lib/assets/projects_images/smart_insti/add_student.png": "2b5d0ca3b81654f4c6a0a7d2a0278804",
"assets/lib/assets/projects_images/smart_insti/timetable_1.png": "bd68a9ccd4ae97894ee96c3233b8b4dd",
"assets/lib/assets/projects_images/smart_insti/multi_choice_roles.png": "9724f4c6967ae12d7d9fc513de70e886",
"assets/lib/assets/projects_images/weather_app.png": "2d7d01d0366598a1fa9972646465d639",
"assets/lib/assets/projects_images/dsa_grind.png": "564ca607131485183502a1c13575afe1",
"assets/lib/assets/projects_images/cricstat.png": "788939f24cf4e27cc9479cd9dab77b2c",
"assets/lib/assets/projects_images/tic_tac_toe.png": "3bbeac0c187b43792ff978d94a695667",
"assets/AssetManifest.json": "499a5d4d241220e1a41e7d36b262b9a8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/line_icons/lib/assets/fonts/LineIcons.ttf": "bcaf3ba974cf7900b3c158ca593f4971",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "3b6364406aec75706b00e6ca7c879e05",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "90598d61bc40a3fbccc6aa882cddb61f",
"assets/AssetManifest.bin": "ddbb5dbb0926b662e0f2e2b20f4ab494",
"assets/FontManifest.json": "e024588c84b5d20cb7869d6f908130e8",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
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
