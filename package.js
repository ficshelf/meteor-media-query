Package.describe({
  summary: "Sets reactive variables to reflect the current screen size, orientation and retina",
  version: "1.0.0",
  git: "https://github.com/ficshelf/meteor-media-query.git"
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@0.9.3.1');
  api.addFiles('ficshelf:media-query.coffee');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('ficshelf:media-query');
  api.addFiles('ficshelf:media-query-tests.js');
});
