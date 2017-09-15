# Modules/Packages
CoffeeScript modules are javascript packages that are installed via `npm`. You can visit [https://www.npmjs.com/](https://www.npmjs.com/)
to search for modules/packages. In this example we use the [`request`](https://github.com/request/request) module.

```coffeescript
request = require 'request'
```

Installing modules/packages is very simple. Find the package on `npm` and run the following command:
```shell
$ npm install request
```
If you wanted to install the package globally(System-wide), you can use the `-g` flag.
```shell
$ coffee install -g request
```

## Running the script
```shell
$ coffee modules.coffee

{
  "args": {},
  "headers": {
    "Connection": "close",
    "Host": "httpbin.org"
  },
  "origin": "0.0.0.0",
  "url": "https://httpbin.org/get"
}
```