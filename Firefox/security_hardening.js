// https://privacy-handbuch.de/handbuch_21n.htm

// WebGL
pref("webgl.enable-debug-renderer-info", false);
pref("webgl.disable-extensions", true);
pref("webgl.min_capability_mode", true);
pref("webgl.disable-fail-if-major-performance-caveat", true);

// Healthreport und Telemetriedaten für Mozilla
pref("toolkit.coverage.endpoint.base", "");
pref("toolkit.coverage.opt-out", true);
pref("toolkit.telemetry.coverage.opt-out", true);

// Berwertungsfeature
pref("app.normandy.enabled", false);
