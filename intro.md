---
layout: page
title: Getting Started
---

<p class="lead" markdown="1">The following guide will get you up-and-running in just a few minutes.</p>

## Command

<p class="note" markdown="1">Heads up!</p>

We follow the [Node.js Release schedule](https://github.com/nodejs/LTS), and provide support for Current, Active LTS, and Maintenance LTS releases.

```bash
npm install --save-dev qunit
```

## Code snippet

<p class="note note--warning" markdown="1">For legacy reasons, you may have to read this sentence.</p>

Create a file for your test at `test/add.js` and include the following:

```js
QUnit.module('add', function() {
  QUnit.test('should add two numbers', function(assert) {
    assert.equal(add(1, 1), 2, '1 + 1 = 2');
  });
});
```

Check out the [API documentation](https://api.qunitjs.com) or run `qunit --help` to discover more of QUnit's features.

---

## Table

| Sequence | 1 | 2 | 3 | 4
|--|--
| Foobar | Foo | Bar | Baz | Quux
| Lorem ipsum | Lorem | Ipsum | Dolor | Sit
