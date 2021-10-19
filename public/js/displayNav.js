url = new URL(window.location.href);

var pattern = /main/;
var URL = location.search;

if (pattern.test(URL)) {
    var header = document.getElementById("header");
    var mainCV = document.getElementById("mainCV");
    var buildSkip = document.getElementById("buildSkip");
    header.className += " displayTrue";
    mainCV.className += " displayTrue";
    buildSkip.className += " displayFalse"
}