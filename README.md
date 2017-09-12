# CoffeeScript Help
This repo is  made to help when writing CoffeeScript. Information here was all pulled from 
[coffeescript.org](https://coffeescript.org), [google.com](https://google.com), and my knowledge.

## Introduction 
*Taken from [coffeescript.org](http://coffeescript.org/#top)*

**CoffeeScript is a little language that compiles into JavaScript.** Underneath that awkward Java-esque patina, JavaScript 
has always had a gorgeous heart. CoffeeScript is an attempt to expose the good parts of JavaScript in a simple way.

The golden rule of CoffeeScript is: *It's just JavaScript*. The code compiles one-to-one into the equivalent JS, and there 
is no interpretation at runtime. You can use any existing JavaScript library seamlessly from CoffeeScript (and vice-versa). 
The compiled output is readable, pretty-printed, and tends to run as fast or faster than the equivalent handwritten JavaScript.

The CoffeeScript compiler goes to great lengths to generate output JavaScript that runs in every JavaScript runtime, but 
there are exceptions. Use generator functions, for, from, or tagged template literals only if you know that your target 
runtimes can support them. If you use modules, you will need to use an additional tool to resolve them.

**Latest Version** (*At time of writing*)
* [1.12.7](https://github.com/jashkenas/coffeescript/tarball/1.12.7)

**CoffeeScript 2 is coming!** It adds support for [ES2015 classes](http://coffeescript.org/v2/#classes), 
[async/await](http://coffeescript.org/v2/#fat-arrow), [JSX](http://coffeescript.org/v2/#jsx), 
[object rest/spread syntax](http://coffeescript.org/v2/#splats), and JavaScript generated using ES2015+ syntax. 
[Learn more](http://coffeescript.org/v2/).

### Literate 
Besides being used as an ordinary programming language, CoffeeScript may also be written in “literate” mode. If you name 
your file with a `.litcoffee` extension, you can write it as a Markdown document — a document that also happens to be executable 
CoffeeScript code. The compiler will treat any indented blocks (Markdown’s way of indicating source code) as code, and 
ignore the rest as comments.

### Language Reference
*This reference is structured so that it can be read from top to bottom, if you like. Later sections use ideas and syntax 
previously introduced. Familiarity with JavaScript is assumed. In all of the following examples, the source CoffeeScript 
is provided on the left, and the direct compilation into JavaScript is on the right.*

*Many of the examples can be run (where it makes sense) by pressing the **run** button on the right, and can be loaded into the 
“Try CoffeeScript” console by pressing the **load** button on the left.*

First, the basics: CoffeeScript uses significant whitespace to delimit blocks of code. You don’t need to use semicolons `;` 
to terminate expressions, ending the line will do just as well (although semicolons can still be used to fit multiple 
expressions onto a single line). Instead of using curly braces `{ }` to surround blocks of code in 
[functions](http://coffeescript.org/#literals), [if-statements](http://coffeescript.org/#conditionals), 
[switch](http://coffeescript.org/#switch), and [try/catch](http://coffeescript.org/#try), use indentation.

You don’t need to use parentheses to invoke a function if you’re passing arguments. The implicit call wraps forward to the 
end of the line or block expression.
`console.log sys.inspect object` → `console.log(sys.inspect(object));`

## Useful Commands
Here are some commands that are useful for basic use with CoffeeScript.

**Compile CoffeeScript to JavaScript**  
   * `$ coffee -o /output -c /src`  
    *Note: It is important to specify output before source*
   * `$ coffee -w -o /output -c /src`  
    *Note: This will watch the source and update the output on the fly*

**Joining CoffeeScript files together and output to JavaScript**
   * `$ coffee -j output/app.js -c src/*.coffee`  
    *Note: This will reduce the number of HTTP request a browser has to make and improve performance.*
    
**Print JavaScript compiled input**
   * `$ coffee -bpe "alert i for i in [0..10]"`  
    *Note: This prints the output the console(stdin)*
    
**Run a CoffeeScript file**
   * `$ coffee simple_script.coffee`  
    *Note: This compiles & runs a CoffeeScript file*
    
### Command line options
Once installed, you should have access to the coffee command, which can execute scripts, compile .coffee files into .js, and provide an interactive REPL. The coffee command takes the following options:  

|        Option         |                     Description                      |
| :-------------------: | ---------------------------------------------------- |
| -c, --compile         | Compile a .coffee script into a .js JavaScript file of the same name. |
| -m, --map             | Generate source maps alongside the compiled JavaScript files. Adds sourceMappingURL directives to the JavaScript as well |
| -M, --inline-map      | Just like --map, but include the source map directly in the compiled JavaScript files, rather than in a separate file. |
| -i, --interactive     | Launch an interactive CoffeeScript session to try short snippets. Identical to calling coffee with no arguments. |
| -o, --output [DIR]    | Write out all compiled JavaScript files into the specified directory. Use in conjunction with --compile or --watch. |
| -w, --watch           | Watch files for changes, rerunning the specified command when any file is updated. |
| -p, --print           | Instead of writing out the JavaScript as a file, print it directly to stdout. |
| -s, --stdio           | Pipe in CoffeeScript to STDIN and get back JavaScript over STDOUT. Good for use with processes written in other languages. An example: cat src/cake.coffee | coffee -sc |
| -l, --literate        | Parses the code as Literate CoffeeScript. You only need to specify this when passing in code directly over stdio, or using some sort of extension-less file name. |
| -e, --eval            | Compile and print a little snippet of CoffeeScript directly from the command line. For example: coffee -e "console.log num for num in [10..1]" |
| -r, require [MODULE]  | require() the given module before starting the REPL or evaluating the code given with the --eval flag. |
| -b, --bare            | Compile the JavaScript without the top-level function safety wrapper. |
| -t, --tokens          | Instead of parsing the CoffeeScript, just lex it, and print out the token stream. Used for debugging the compiler. |
| -n, --nodes           | Instead of compiling the CoffeeScript, just lex and parse it, and print out the parse tree. Used for debugging the compiler. |
| --nodejs              | The node executable has some useful options you can set, such as --debug, --debug-brk, --max-stack-size, and --expose-gc. Use this flag to forward options directly to Node.js. To pass multiple flags, use --nodejs multiple times. |
| --no-header           | Suppress the “Generated by CoffeeScript” header. |


## Simple Script
Lets calculate some ages in CoffeeScript and see who is old and who is younger.
### CoffeeScript
Here we define two variables and use some math to determine who is older.
```CoffeeScript  
# Variables                                        
myAge = 19                                     
yourAge = 21                                   
  
# Calc
if myAge == yourAge
  console.log "We are the same age."
else if myAge < yourAge
  console.log "I am younger."
else if myAge > yourAge
  console.log "You are younger."
```
### JavaScript
Here is the generated JavaScript from the above CoffeeScript.
```javascript
// Generated by CoffeeScript 1.12.6
(function() {
  var myAge, yourAge;

  myAge = 19;

  yourAge = 21;

  if (myAge === yourAge) {
    console.log("We are the same age.");
  } else if (myAge < yourAge) {
    console.log("I am younger.");
  } else if (myAge > yourAge) {
    console.log("You are younger.");
  }

}).call(this);
```
