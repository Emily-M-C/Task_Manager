var STYLESHEET_KEY;

function toggle1() {
    var styleElement = document.getElementById("mainStyleSheet");
    var file = styleElement.getAttribute("href");

    var style = "style.css";
    if (file == "secondStyle.css") {
        style = "style.css";
    } else {
        style = "secondStyle.css";
    }

    styleElement.setAttribute("href", style);

    localStorage.setItem(STYLESHEET_KEY, style);
}

window.onload = function() {
    var stylesheetValue = localStorage.getItem(STYLESHEET_KEY) || "style.css";
    var styleElement = document.getElementById("mainStyleSheet");
    styleElement.setAttribute("href", stylesheetValue);
}