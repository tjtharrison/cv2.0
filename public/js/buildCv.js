window.onload = function () {
    setTimeout(setWidth, 5000)
    setTimeout(leftWhite, 10000)
    setTimeout(leftColor, 15000)
    setTimeout(rightGreen, 20000)
    setTimeout(linkColour, 30000)
    setTimeout(columnPadding, 35000)
    setTimeout(openSans, 40000)
    setTimeout(h2Border, 50000)
};

function setWidth() {
    var width70 = document.getElementById("width70 left");
    width70.className += " width70";
    var width30 = document.getElementById("width30 right");
    width30.className += " width30";
}
function leftWhite() {
    var left = document.getElementById("width70 left");
    left.className += " left";
}
function rightGreen() {
    var right = document.getElementById("width30 right");
    right.className += " right";
}
function linkColour() {
    document.querySelectorAll('a').forEach(e => e.className += ' linkColour');
}
function leftColor() {
    var left = document.getElementById("width70 left");
    left.className += " blackText";
}
function columnPadding() {
    var left = document.getElementById("width70 left");
    var right = document.getElementById("width30 right");
    left.className += " columnPadding";
    right.className += " columnPadding";
}
function openSans() {
    document.querySelectorAll('p, h2').forEach(e => e.className += ' openSans');
}
function h2Border() {
    document.querySelectorAll('h2').forEach(e => e.className += ' h2Border');
}