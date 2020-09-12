---
layout: page
title: Getting Started
---

<p class="lead" markdown="1">The following guide will get you up-and-running with QUnit in either [Node](#in-node) or [the Browser](#in-the-browser) in just a few minutes.</p>

## In Node

<p class="note" markdown="1">QUnit follows the <a href="https://github.com/nodejs/LTS" target="_blank">Node Long-term Support (LTS) Schedule</a> and provides support for Current, Active LTS, and Maintenance LTS releases.</p>

Getting started with QUnit in Node is quick and easy. First, install QUnit inside your Node package using `npm`:

```bash
npm install --save-dev qunit
```

Or `yarn`:

```bash
yarn add --dev qunit
```

Then, let's start writing tests! We'll start with a function that adds two numbers. Create a file `add.js` with the following contents:

```js
const add = (a, b) => a + b;
module.exports = add;
```

Next, create a file for your test at `test/add.js` and include the following:

```js
const add = require('../add');
QUnit.module('add', function() {
  QUnit.test('should add two numbers', function(assert) {
    assert.equal(add(1, 1), 2, '1 + 1 = 2');
  });
});
```

Next, you should try writing a test for some of your own code and then check out the [API documentation](https://api.qunitjs.com) or run `qunit --help` to discover more of QUnit's features.

---

## In the Browser

<p class="note note--warning" markdown="1">For legacy browser support, including Internet Explorer versions lower than IE9, please use the 1.x series of QUnit.</p>

When getting started with QUnit in the browser, start by creating a new HTML file called `tests.html` and include the following markup:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Test Suite</title>
    <link rel="stylesheet" href="https://code.jquery.com/qunit/qunit-2.10.1.css">
  </head>
  <body>
    <div id="qunit"></div>
    <div id="qunit-fixture"></div>
    <script src="https://code.jquery.com/qunit/qunit-2.10.1.js"></script>
</body>
</html>
```

QUnit currently supports <a href="https://jquery.com/browser-support/" target="_blank">the same browsers as jQuery 3.x</a>.
