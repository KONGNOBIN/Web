
function printName4(firstname) {
    var result = "My name is " + firstname;
    return result;
}

console.log(printName4());
console.log(printName4("nobin"));

/* 함수선언식 */
function Myname(name) {
    var title = "My name is ";
    console.log(title + name);
}

Myname("nobin");


/* 함수표현식 */
function printName1(firstname) {
    var result = inner1
    console.log("name is " + result);

    var inner1 = function () {
        return "inner value";
    }
}

printName1();


/* 함수선언식 - 호이스팅 */
function printName2(firstname) {
    var result = inner2();
    console.log("name is " + result);

    function inner2() {
        return "inner value";
    }
}

printName2();



function printName3(firstname) {
    var Myname = "jisu";
    var result = Myname + " " + firstname;
}

console.log(printName3());


/*
    Arguments 속성
*/
function a() {
    console.log(arguments);    
    console.log('my name is', arguments[2]);            
    if(arguments.length < 4) console.log(arguments.length);
}

a(1, 2, "Nobin");

/*
    기본 함수 구문
*/
function Add(num1, num2){
    return console.log(num1 + num2);
}
Add(7, 4);

/*
    arrow function
    점점 사용빈도가 높아지는 syntax 
*/
var Mul = (num1, num2) => console.log(num1 * num2);
Mul(7, 4);



function printName5(firstname) {
    var myname = "jisu";
    return myname + " ," +  firstname;
}

function run(firstname) {
   firstname = firstname || "Youn";
   var result = printName5(firstname);   
   console.log(result);
}

run();