'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "f393d3c16b631f36852323de8e583132",
"main.dart.js": "f2607ce057ad98c742a26e44c15fea5e",
"assets/FontManifest.json": "e024588c84b5d20cb7869d6f908130e8",
"assets/LICENSE": "e49f4652534af377a713df3d9dec60cb",
"assets/AssetManifest.bin": "7509988454887e7c8ed9a6ce8351caa7",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/line_icons/lib/assets/fonts/LineIcons.ttf": "bcaf3ba974cf7900b3c158ca593f4971",
"assets/lib/assets/projects_images/dsa_grind.png": "564ca607131485183502a1c13575afe1",
"assets/lib/assets/projects_images/tic_tac_toe.png": "3bbeac0c187b43792ff978d94a695667",
"assets/lib/assets/projects_images/cricstat.png": "788939f24cf4e27cc9479cd9dab77b2c",
"assets/lib/assets/projects_images/smart_insti.png": "b7c1760190ba5009ca45d52e5593e52f",
"assets/lib/assets/projects_images/smart_insti/view_menu.png": "53ddc04b9ef040cc6258dc57038845f8",
"assets/lib/assets/projects_images/smart_insti/year_picker.png": "d753ec3b0348a67bb5463ec96bcc1c61",
"assets/lib/assets/projects_images/smart_insti/add_student.png": "2b5d0ca3b81654f4c6a0a7d2a0278804",
"assets/lib/assets/projects_images/smart_insti/timetable_1.png": "bd68a9ccd4ae97894ee96c3233b8b4dd",
"assets/lib/assets/projects_images/smart_insti/view_faculties.png": "ad7f6a692880575f78734301fdf48663",
"assets/lib/assets/projects_images/smart_insti/chatroom.png": "25fe5cf1842bb1b9564a5e67d334a8b1",
"assets/lib/assets/projects_images/smart_insti/multi_choice_roles.png": "9724f4c6967ae12d7d9fc513de70e886",
"assets/lib/assets/projects_images/smart_insti/view_room_vacancy.png": "0479cdf0c30d63599a7a78f70f140469",
"assets/lib/assets/projects_images/smart_insti/add_course.png": "095d6d4019a547fb856ff6d6b5c44f4e",
"assets/lib/assets/projects_images/smart_insti/add_menu.png": "ecb161f33674004d569309a8dc9deefe",
"assets/lib/assets/projects_images/smart_insti/add_faculty.png": "72795950deb8d5f26eafa4a2738723eb",
"assets/lib/assets/projects_images/smart_insti/user_auth.png": "c27786195f5afd8b5f9205d5fbf14496",
"assets/lib/assets/projects_images/smart_insti/view_lost_and_found.png": "99bc57a8c8e9f2a85eef85c9dbb1e92d",
"assets/lib/assets/projects_images/smart_insti/admin_auth.png": "4b3675d727149d40583dae1cc5a5ce35",
"assets/lib/assets/projects_images/smart_insti/timetable_2.png": "6454bcea702a8423c839cda2dbe9f155",
"assets/lib/assets/projects_images/smart_insti/view_mess_menu.png": "7244be8850b13dcb4a9cd96f8b953099",
"assets/lib/assets/projects_images/smart_insti/add_rooms.png": "9d2082b00b7f5d6257658e8fb2da9324",
"assets/lib/assets/projects_images/smart_insti/user_dashboard.png": "9b6dce116cdd530bcf4bb88a5b26eebc",
"assets/lib/assets/projects_images/smart_insti/view_students.png": "edfbfcd19062ba807d3466147949aa77",
"assets/lib/assets/projects_images/smart_insti/admin_dashboard.png": "87ea9104fea51793d9f2287ea3ed207c",
"assets/lib/assets/projects_images/smart_insti/view_courses.png": "dd70abba8714a655dc32dddff7a76336",
"assets/lib/assets/projects_images/socio/home.png": "de2f10e371805799e960a9a3424acbad",
"assets/lib/assets/projects_images/socio/signup.png": "a2d6e6eb418d27afe4566b0a6ed93a40",
"assets/lib/assets/projects_images/socio/chat.png": "1028d1ee6a6530a8171380c81df926ae",
"assets/lib/assets/projects_images/socio/update.png": "43d02cd93bce420992a25631e470c30a",
"assets/lib/assets/projects_images/socio/login.png": "e6144b8b5602a34b7bc4ca19948f5c0d",
"assets/lib/assets/projects_images/weather_app.png": "2d7d01d0366598a1fa9972646465d639",
"assets/lib/assets/projects_images/chat_connect.png": "7b076a888173d2a554bf0663671b69a0",
"assets/lib/assets/images/tic_tac_toe.png": "7352e9c3d37a7b600427481ddab90e08",
"assets/lib/assets/images/cricstat.png": "86ea291b729b8187cff39ad7109d73d1",
"assets/lib/assets/images/profile_pic.png": "83d64c2b94118e3196cb1535701d3ec8",
"assets/lib/assets/images/weather.png": "1de85ec3f33bcc692daf39a5001e97c2",
"assets/lib/assets/images/portfolio1.png": "fa0497cb1a0ef5bc49ac4300430d8e26",
"assets/lib/assets/images/DSA.png": "7c2aa15c1649e203b0857cdb4d507107",
"assets/lib/assets/images/socio.png": "17b0277134866abe8d0c55dc3155df0c",
"assets/lib/assets/images/talawa.png": "c625ac5228818193a91256c793e58ae1",
"assets/lib/assets/images/portfolio2.png": "f524c6cd23a665195be1f13e01e7bd57",
"assets/lib/assets/images/foss_overflow.png": "319ee24dc5958fc04c4ab3ba30662302",
"assets/lib/assets/images/profile_pic_2.png": "924f8055e899138e5be3ebe65f8baf22",
"assets/lib/assets/images/playpals.png": "f66edb04e4e8d866aabaaa739e88878c",
"assets/lib/assets/images/web_app_scale.png": "16fb4861e26599d5b728b5cd6cc68ab4",
"assets/lib/assets/images/chatconnect.png": "4900fa63cf8157a05f78db9cdc28dcda",
"assets/lib/assets/images/bits_pilani.png": "574353bf3d91dfb9dde39807b3ca7f9b",
"assets/lib/assets/images/animation.json": "18136265ac9f4ed318cecb9a03a3f2ac",
"assets/lib/assets/icons/js.png": "1e69b934b99dfde141e8437649f9dc51",
"assets/lib/assets/icons/dart.png": "57f15cd0a381a5d201f633c80c7ca5e8",
"assets/lib/assets/icons/scikit.png": "6108bd0e9ae093f2e8e2e1c81f113348",
"assets/lib/assets/icons/docker.png": "3bac5dab4e467e4a3a8fd4b2861ab53b",
"assets/lib/assets/icons/postman.png": "0c8dc311578adb7e968d4e482f0e163f",
"assets/lib/assets/icons/redis.png": "1e50a22640becfbf360660a95bc69c4b",
"assets/lib/assets/icons/github.png": "8a32f5c4622ad18ec8d9cfed7e4079a2",
"assets/lib/assets/icons/nextjs.png": "975818a6264b632de1ffc7a9693d092f",
"assets/lib/assets/icons/mysql.png": "649c3cda76084c315680d04dab08c87c",
"assets/lib/assets/icons/typescript.png": "3ce60382926426d297f7b232e9e46f1c",
"assets/lib/assets/icons/figma.png": "356fcd058ed235fb2d0b141e39b07e4a",
"assets/lib/assets/icons/python.png": "fb5757aa40b2b736da4860643a3d9f2b",
"assets/lib/assets/icons/nodejs.png": "683db41129a243c900bcb6c8f8deec18",
"assets/lib/assets/icons/rabbitmq.png": "16c7533ea5c701a8b9224bf1a3a987e5",
"assets/lib/assets/icons/jupyter.png": "327f0ae0b5d7c1d8517dd5ede324707c",
"assets/lib/assets/icons/c++.png": "85d33c9d46d5f90c767ddf95cbdc66c0",
"assets/lib/assets/icons/matplotlib.png": "6af57da662005c00ac81b5a61b2d0bbb",
"assets/lib/assets/icons/numpy.png": "a73dffa7c75961314e881d1f3e01035a",
"assets/lib/assets/icons/tailwind_css.png": "4f78acf569d247c0a8cc6a64cf88d365",
"assets/lib/assets/icons/canva.png": "a934f7eb4e759fed905e36bbf2c365c1",
"assets/lib/assets/icons/react.png": "ccb270747f6ef59a25475a7aa25ccf9f",
"assets/lib/assets/icons/firebase.png": "6bbf7da3d6bb07330bef07fe0bc4d5ed",
"assets/lib/assets/icons/css.png": "a48e8154cc751f0b56e767f5559d3efc",
"assets/lib/assets/icons/java.png": "f5e54cde35489b0d9df9d7ac4fa96b5c",
"assets/lib/assets/icons/sublime.png": "aa7d5261adb3e941ea73e7f9b545e5b7",
"assets/lib/assets/icons/express.png": "4f32dfbc9188b77a29743b677be275d5",
"assets/lib/assets/icons/c.png": "662069ee52276f184731ef6897e64cf3",
"assets/lib/assets/icons/mongodb.png": "a99ab283eb6be4af6138cefd6d8c62b4",
"assets/lib/assets/icons/kafka.png": "8609d96c62e0700ba2939ec588cc3473",
"assets/lib/assets/icons/flutter.png": "fea1b7d8d2c988ee67be748a576b83d5",
"assets/lib/assets/icons/graphql.png": "583d9e55b0e5ca6f58079c719b92bea2",
"assets/lib/assets/icons/html.png": "ba888c414669a8f2d63bdb9be519a676",
"assets/lib/assets/icons/vscode.png": "7aaad6628a28bff0f72dc33d01113a0c",
"assets/lib/assets/icons/logo.png": "5050a4ff7dad49f968f41f51813d3a97",
"assets/lib/assets/texts/education.txt": "8638816efdc0269ac01e893e734bdae1",
"assets/lib/assets/texts/about_me.txt": "c9923867c0be2ccbbad6a41ff6a91cfa",
"assets/NOTICES": "25c77f2ae492287ee4cdaea202c6ee36",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.json": "ee63789f61f66b4d6363f3c488ce6e65",
"assets/AssetManifest.bin.json": "a6c96b5abc399126e1b5a22fe959761c",
"index.html": "87656673284e454a4e2476241c201f28",
"/": "87656673284e454a4e2476241c201f28",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"googleee1dd3f2eee6b8c0.html": "262327b0dc01a44442fc880c4bcb003a",
"icons/Icon-maskable-192.png": "b5556e071b9f75bb9464589f764b7907",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "d21908971c3c01467f620e4609826074",
"favicon.png": "1b0a82782d293cd5331529ff557c2c55",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "6461d23ca722987ee3e22afd7f46ae9d"};
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
