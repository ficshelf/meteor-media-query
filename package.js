Package.describe({
  summary: "Sets reactive variables device-screensize, device-orientation and device-retina",
  version: "1.0.5",
  git: "https://github.com/ficshelf/meteor-media-query.git"
});

Package.onUse(function(api) {
  api.use(['coffeescript@1.0.0']);
  api.versionsFrom('METEOR@0.9.3.1');
  api.addFiles(['ficshelf:media-query.coffee'], 'client');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('ficshelf:media-query');
  api.addFiles(['ficshelf:media-query-tests.js'], 'client');
});
