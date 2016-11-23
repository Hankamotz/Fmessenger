// ==UserScript==
// @name          Facebook Messanger Nice, Tidy and more responsive
// @namespace     http://userstyles.org
// @description	  Simple CSS that hides left toolbar from new Facebook Messenger (and open it on hover) and allow to make new chat a lot smaller
// @author        Krzychu
// @homepage      https://userstyles.org/styles/112567
// @include       https://www.messenger.com/*
// @include       http://www.messenger.com/*
// @run-at        document-start
// @version       0.20150418220911
// ==/UserScript==
(function() {var css = [ "* {\nfont-family: \"Ubuntu\" !important;\nfont-size: 10pt !important; \nline-height: 1 !important}",
        
        "",
        "._s15 {",
        "  height: 1px !important;", 
        "}",
        


].join("\n");
if (typeof GM_addStyle != "undefined") {
	GM_addStyle(css);
} else if (typeof PRO_addStyle != "undefined") {
	PRO_addStyle(css);
} else if (typeof addStyle != "undefined") {
	addStyle(css);
} else {
	var node = document.createElement("style");
	node.type = "text/css";
	node.appendChild(document.createTextNode(css));
	var heads = document.getElementsByTagName("head");
	if (heads.length > 0) {
		heads[0].appendChild(node); 
	} else {
		// no head yet, stick it whereever
		document.documentElement.appendChild(node);
	}
}
})();

