/**
 * Creación de variables a obtener de la tabla de notas
 */

var t1html = document.getElementById("nota1html");
var t2html = document.getElementById("nota2html");
var t3html = document.getElementById("nota3html");
var tfhtml = document.getElementById("notafinalhtml");

var t1css = document.getElementById("nota1css");
var t2css = document.getElementById("nota2css");
var t3css = document.getElementById("nota3css");
var tfcss = document.getElementById("notafinalcss");

var t1js = document.getElementById("nota1js");
var t2js = document.getElementById("nota2js");
var t3js = document.getElementById("nota3js");
var tfjs = document.getElementById("notafinaljs");

/**
 * Prompt o input de usuario de las notas
 */

var nota1html = prompt("Ingrese nota 1 [HTML]", "");
var nota2html = prompt("Ingrese nota 2 [HTML]", "");
var nota3html = prompt("Ingrese nota 3 [HTML]", "");

var nota1css = prompt("Ingrese nota 1 [CSS]", "");
var nota2css = prompt("Ingrese nota 2 [CSS]", "");
var nota3css = prompt("Ingrese nota 3 [CSS]", "");

var nota1js = prompt("Ingrese nota 1 [JavaScript]", "");
var nota2js = prompt("Ingrese nota 2 [JavaScript]", "");
var nota3js = prompt("Ingrese nota 3 [JavaScript]", "");

/**
 * Cambia el input a float de ser posible
 */

var nota1html = parseFloat(nota1html);
var nota2html = parseFloat(nota2html);
var nota3html = parseFloat(nota3html);

var nota1css = parseFloat(nota1css);
var nota2css = parseFloat(nota2css);
var nota3css = parseFloat(nota3css);

var nota1js = parseFloat(nota1js);
var nota2js = parseFloat(nota2js);
var nota3js = parseFloat(nota3js);

/**
 * Realiza el cálculo de la suma y posterior realiza la división
 */

var suma_final_html = (nota1html+nota2html+nota3html);
var suma_final_css = (nota1css+nota2css+nota3css);
var suma_final_js = (nota1js+nota2js+nota3js);

var nota_f_html = suma_final_html/3;
var nota_f_css = suma_final_css/3;
var nota_f_js = suma_final_js/3;

/**
 * Muestra los resultados en la tabla
 */

document.getElementById("nota1html").innerHTML = nota1html;
document.getElementById("nota2html").innerHTML = nota2html;
document.getElementById("nota3html").innerHTML = nota3html;
document.getElementById("notafinalhtml").innerHTML = nota_f_html;

document.getElementById("nota1css").innerHTML = nota1css;
document.getElementById("nota2css").innerHTML = nota2css;
document.getElementById("nota3css").innerHTML = nota3css;
document.getElementById("notafinalcss").innerHTML = nota_f_css;

document.getElementById("nota1js").innerHTML = nota1js;
document.getElementById("nota2js").innerHTML = nota2js;
document.getElementById("nota3js").innerHTML = nota3js;
document.getElementById("notafinaljs").innerHTML = nota_f_js;