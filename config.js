// the name of your app as used in the click package (required)
var webappName = "fmessenger.hankamotz"

// the start url of your app (required)
var webappUrl = "https://www.messenger.com/login.php"

// the the pattern that defines which links are considered
// local and which are opened in an external browser (required)
var webappUrlPattern = "https?://www.messenger.*/*,https?://facebook.*/*,https?://www.facebook.*/*,https?://m.*/*, https?://mobile.*/*, https?://messenger"

// a user agent override (optional)
// var webappUA = "uncomment this line and set your User Agent string here between these quotes, if you need to override it"

// Haptic feedback for links (note, this does not work if your site
// uses javascript functions to open links) (optional)
// var hapticLinks = "true"

// Audible feedback when clicking links (the same constraints as
// for hapticLinks apply) (optional)
// var audibleLinks = "true"

