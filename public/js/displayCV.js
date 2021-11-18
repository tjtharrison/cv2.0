if (document.cookie == "buildState=built") {
    console.log(JSON.stringify(document.cookie))
    console.log("Already built")
    var header = document.getElementById("header");
    var mainCV = document.getElementById("mainCV");
    var buildSkip = document.getElementById("buildSkip");
    header.className += " displayTrue";
    mainCV.className += " displayTrue";
    buildSkip.className += " displayFalse"
}