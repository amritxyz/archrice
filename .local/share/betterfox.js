//

/* You may copy+paste this file and use it as it is.

 *

 * If you make changes to your about:config while the program is running, the

 * changes will be overwritten by the user.js when the application restarts.

 *

 * To make lasting changes to preferences, you will have to edit the user.js.

 */



/****************************************************************************

 * Betterfox                                                                *

 * "Ad meliora"                                                             *

 * version: 133                                                             *

 * url: https://github.com/yokoffing/Betterfox                              *

****************************************************************************/



/****************************************************************************

 * SECTION: FASTFOX                                                         *

****************************************************************************/

/** GENERAL ***/

user_pref("content.notify.interval", 100000);



/** GFX ***/

user_pref("gfx.canvas.accelerated.cache-items", 4096);

user_pref("gfx.canvas.accelerated.cache-size", 512);

user_pref("gfx.content.skia-font-cache-size", 20);



/** DISK CACHE ***/

user_pref("browser.cache.disk.enable", true);



/** MEDIA CACHE ***/

user_pref("media.memory_cache_max_size", 65536);

user_pref("media.cache_readahead_limit", 7200);

user_pref("media.cache_resume_threshold", 3600);



/** IMAGE CACHE ***/

user_pref("image.mem.decode_bytes_at_a_time", 32768);



/** NETWORK ***/

user_pref("network.http.max-connections", 1800);

user_pref("network.http.max-persistent-connections-per-server", 10);

user_pref("network.http.max-urgent-start-excessive-connections-per-host", 5);

user_pref("network.http.pacing.requests.enabled", false);

user_pref("network.dnsCacheExpiration", 3600);

user_pref("network.ssl_tokens_cache_capacity", 10240);



/** SPECULATIVE LOADING ***/

user_pref("network.dns.disablePrefetch", true);

user_pref("network.dns.disablePrefetchFromHTTPS", true);

user_pref("network.prefetch-next", false);

user_pref("network.predictor.enabled", false);

user_pref("network.predictor.enable-prefetch", false);



/** EXPERIMENTAL ***/

user_pref("layout.css.grid-template-masonry-value.enabled", true);

user_pref("dom.enable_web_task_scheduling", true);



/****************************************************************************

 * SECTION: SECUREFOX                                                       *

****************************************************************************/

/** TRACKING PROTECTION ***/

user_pref("browser.contentblocking.category", "strict");

user_pref("urlclassifier.trackingSkipURLs", "*.reddit.com, *.twitter.com, *.twimg.com, *.tiktok.com");

user_pref("urlclassifier.features.socialtracking.skipURLs", "*.instagram.com, *.twitter.com, *.twimg.com");

user_pref("browser.download.start_downloads_in_tmp_dir", true);

user_pref("browser.helperApps.deleteTempFileOnExit", true);

user_pref("browser.uitour.enabled", false);

user_pref("privacy.globalprivacycontrol.enabled", true);



/** OCSP & CERTS / HPKP ***/

user_pref("security.OCSP.enabled", 0);

user_pref("security.remote_settings.crlite_filters.enabled", true);

user_pref("security.pki.crlite_mode", 2);



/** SSL / TLS ***/

user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);

user_pref("browser.xul.error_pages.expert_bad_cert", true);

user_pref("security.tls.enable_0rtt_data", false);



/** DISK AVOIDANCE ***/

user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);

user_pref("browser.sessionstore.interval", 60000);



/** SHUTDOWN & SANITIZING ***/

user_pref("browser.privatebrowsing.resetPBM.enabled", true);

user_pref("privacy.history.custom", true);



/** SEARCH / URL BAR ***/

user_pref("browser.urlbar.trimHttps", true);

user_pref("browser.urlbar.untrimOnUserInteraction.featureGate", true);

user_pref("browser.search.separatePrivateDefault.ui.enabled", true);

user_pref("browser.urlbar.update2.engineAliasRefresh", true);

user_pref("browser.search.suggest.enabled", false);

user_pref("browser.urlbar.quicksuggest.enabled", false);

user_pref("browser.urlbar.groupLabels.enabled", false);

user_pref("browser.formfill.enable", false);

user_pref("security.insecure_connection_text.enabled", true);

user_pref("security.insecure_connection_text.pbmode.enabled", true);

user_pref("network.IDN_show_punycode", true);



/** HTTPS-FIRST POLICY ***/

user_pref("dom.security.https_first", true);



/** PASSWORDS ***/

user_pref("signon.formlessCapture.enabled", false);

user_pref("signon.privateBrowsingCapture.enabled", false);

user_pref("network.auth.subresource-http-auth-allow", 1);

user_pref("editor.truncate_user_pastes", false);



/** MIXED CONTENT + CROSS-SITE ***/

user_pref("security.mixed_content.block_display_content", true);

user_pref("pdfjs.enableScripting", false);



/** EXTENSIONS ***/

user_pref("extensions.enabledScopes", 5);



/** HEADERS / REFERERS ***/

user_pref("network.http.referer.XOriginTrimmingPolicy", 2);



/** CONTAINERS ***/

user_pref("privacy.userContext.ui.enabled", true);



/** SAFE BROWSING ***/

user_pref("browser.safebrowsing.downloads.remote.enabled", false);



/** MOZILLA ***/

user_pref("permissions.default.desktop-notification", 2);

user_pref("permissions.default.geo", 2);

user_pref("browser.search.update", false);

user_pref("permissions.manager.defaultsUrl", "");



/** TELEMETRY ***/

user_pref("datareporting.policy.dataSubmissionEnabled", false);

user_pref("datareporting.healthreport.uploadEnabled", false);

user_pref("toolkit.telemetry.unified", false);

user_pref("toolkit.telemetry.enabled", false);

user_pref("toolkit.telemetry.server", "data:,");

user_pref("toolkit.telemetry.archive.enabled", false);

user_pref("toolkit.telemetry.newProfilePing.enabled", false);

user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);

user_pref("toolkit.telemetry.updatePing.enabled", false);

user_pref("toolkit.telemetry.bhrPing.enabled", false);

user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

user_pref("toolkit.telemetry.coverage.opt-out", true);

user_pref("toolkit.coverage.opt-out", true);

user_pref("toolkit.coverage.endpoint.base", "");

user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);

user_pref("browser.newtabpage.activity-stream.telemetry", false);



/** EXPERIMENTS ***/

user_pref("app.shield.optoutstudies.enabled", false);

user_pref("app.normandy.enabled", false);

user_pref("app.normandy.api_url", "");



/** CRASH REPORTS ***/

user_pref("breakpad.reportURL", "");

user_pref("browser.tabs.crashReporting.sendReport", false);



/** DETECTION ***/

user_pref("captivedetect.canonicalURL", "");

user_pref("network.captive-portal-service.enabled", false);

user_pref("network.connectivity-service.enabled", false);



/****************************************************************************

 * SECTION: PESKYFOX                                                        *

****************************************************************************/

/** MOZILLA UI ***/

user_pref("browser.privatebrowsing.vpnpromourl", "");

user_pref("extensions.getAddons.showPane", false);

user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);

user_pref("browser.discovery.enabled", false);

user_pref("browser.shell.checkDefaultBrowser", false);

user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);

user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);

user_pref("browser.preferences.moreFromMozilla", false);

user_pref("browser.aboutConfig.showWarning", false);

user_pref("browser.aboutwelcome.enabled", false);

user_pref("browser.profiles.enabled", true);



/** THEME ADJUSTMENTS ***/

user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

user_pref("browser.compactmode.show", true);

user_pref("browser.privateWindowSeparation.enabled", false); // WINDOWS



/** COOKIE BANNER HANDLING ***/

user_pref("cookiebanners.service.mode", 1);

user_pref("cookiebanners.service.mode.privateBrowsing", 1);



/** FULLSCREEN NOTICE ***/

user_pref("full-screen-api.transition-duration.enter", "0 0");

user_pref("full-screen-api.transition-duration.leave", "0 0");

user_pref("full-screen-api.warning.timeout", 0);



/** URL BAR ***/

user_pref("browser.urlbar.suggest.calculator", true);

user_pref("browser.urlbar.unitConversion.enabled", true);

user_pref("browser.urlbar.trending.featureGate", false);



/** NEW TAB PAGE ***/

user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);

user_pref("browser.newtabpage.activity-stream.showWeather", false);

user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);



/** POCKET ***/

user_pref("extensions.pocket.enabled", false);



/** DOWNLOADS ***/

user_pref("browser.download.manager.addToRecentDocs", false);



/** PDF ***/

user_pref("browser.download.open_pdf_attachments_inline", true);



/** TAB BEHAVIOR ***/

user_pref("browser.bookmarks.openInTabClosesMenu", false);

user_pref("browser.menu.showViewImageInfo", true);

user_pref("findbar.highlightAll", true);

user_pref("layout.word_select.eat_space_to_next_word", false);



/****************************************************************************

 * START: MY OVERRIDES                                                      *

****************************************************************************/

// visit https://github.com/yokoffing/Betterfox/wiki/Common-Overrides

// visit https://github.com/yokoffing/Betterfox/wiki/Optional-Hardening

// Enter your personal overrides below this line:

user_pref("browser.uidensity", 1); // 0 = default, 1 = compact, 2 = touch
user_pref("browser.startup.page", 0);
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.newtabpage.enabled", false);
user_pref("layers.acceleration.force-enabled", true);
user_pref("toolkit.cosmeticAnimations.enabled", false);
user_pref("identity.fxaccounts.enabled", false); // Firefox Accounts & Sync [FF60+] [RESTART]
user_pref("browser.urlbar.clipboard.featureGate", false);

user_pref("browser.search.defaultenginename", "DuckDuckGo");
user_pref("extensions.screenshots.disabled", true); // [FF55+]
user_pref("extensions.update.autoUpdateDefault", false);
user_pref("extensions.getAddons.cache.enabled", false);

user_pref("browser.newtabpage.activity-stream.showSponsored", false); // [FF58+]
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false); // [FF83+] Shortcuts>Sponsored shortcuts
user_pref("browser.topsites.contile.enabled", false);
user_pref("browser.topsites.useRemoteSetting", false);
user_pref("geo.provider.network.url", "");
user_pref("geo.provider.use_gpsd", false); // [LINUX] [HIDDEN PREF]
user_pref("geo.provider.geoclue.always_high_accuracy", false); // [LINUX]
user_pref("geo.provider.use_geoclue", false); // [FF102+] [LINUX]

user_pref("browser.urlbar.quicksuggest.enabled", false); // [FF92+]
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false); // [FF95+]
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false); // [FF92+]

// Disable live search suggestions
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);

// Disable urlbar trending search suggestions [FF118+]
user_pref("browser.urlbar.trending.featureGate", false);

// Disable urlbar suggestions
user_pref("browser.urlbar.addons.featureGate", false); // [FF115+]
user_pref("browser.urlbar.mdn.featureGate", false); // [FF117+] [HIDDEN PREF]
user_pref("browser.urlbar.pocket.featureGate", false); // [FF116+] [DEFAULT: false]
user_pref("browser.urlbar.weather.featureGate", false); // [FF108+] [DEFAULT: false]
user_pref("browser.urlbar.yelp.featureGate", false); // [FF124+] [DEFAULT: false]

// Disable urlbar clipboard suggestions [FF118+]
user_pref("browser.urlbar.clipboard.featureGate", false);

// Disable recent searches [FF120+]
user_pref("browser.urlbar.recentsearches.featureGate", false);

// Disable search and form history
user_pref("browser.formfill.enable", false);

// Disable tab-to-search [FF85+]
user_pref("browser.urlbar.suggest.engines", false);

// Disable coloring of visited links
user_pref("layout.css.visited_links_enabled", false);

// Enable separate default search engine in Private Windows and its UI setting
user_pref("browser.search.separatePrivateDefault", true); // [FF70+]
user_pref("browser.search.separatePrivateDefault.ui.enabled", true); // [FF71+]

// Disable merino
user_pref("browser.urlbar.merino.enabled", false);

// Disable saving passwords and password alerts.
user_pref("signon.rememberSignons", false);
user_pref("signon.generation.enabled", false);
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("signon.management.page.breachAlertUrl", "");

// Set when Firefox should prompt for the primary password
// 0=once per session (default), 1=every time it's needed, 2=after n minutes
user_pref("security.ask_for_password", 2);

// Set how long in minutes Firefox should remember the primary password (0901)
user_pref("security.password_lifetime", 5); // [DEFAULT: 30]

// Disable auto-filling username & password form fields
user_pref("signon.autofillForms", false);

// Disable formless login capture for Password Manager [FF51+]
user_pref("signon.formlessCapture.enabled", false);

// Disable location bar suggestion types
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.topsites", false); // [FF78+]
user_pref("browser.urlbar.suggest.weather", false);

user_pref("browser.urlbar.autoFill", false);

user_pref("browser.tabs.firefox-view", false); // Firefox-view
user_pref("browser.tabs.crashReporting.sendReport", false); // [FF44+]
user_pref("browser.tabs.hoverPreview.enabled", false);

/****************************************************************************

 * SECTION: SMOOTHFOX                                                       *

****************************************************************************/

// visit https://github.com/yokoffing/Betterfox/blob/main/Smoothfox.js

// Enter your scrolling overrides below this line:



/****************************************************************************

 * END: BETTERFOX                                                           *

****************************************************************************/
