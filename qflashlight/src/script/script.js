
//Qt.include("qrc:/script/f.js")
function f(a) {
    a = parseInt(a);
    if (a <= 0)
        return 1;
    else
        return a * f(a - 1);
}
function show(value) {
    console.log("Call f():",f(value));
}
