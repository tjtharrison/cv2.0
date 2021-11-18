window.onload = function () {
    setTimeout(setWidth, 6000)
    setTimeout(leftWhite, 12000)
    setTimeout(leftColor, 17000)
    setTimeout(rightGreen, 23000)
    setTimeout(linkColour, 34000)
    setTimeout(columnPadding, 40000)
    setTimeout(openSans, 45000)
    setTimeout(h2Border, 55000)
};

function skipStyling() {
    console.log("Got here")
    setWidth()
    leftWhite()
    leftColor()
    rightGreen()
    linkColour()
    columnPadding()
    openSans()
    h2Border()
    hideBuilder()
}

function setWidth() {
    var width70 = document.getElementById("width70 left");
    width70.className += " width70";
    var width30 = document.getElementById("width30 right");
    width30.className += " width30";
}

function hideBuilder() {
    var builder = document.getElementById("builder");
    builder.className += " displayNone"
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