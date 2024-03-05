---
layout: page
title: Content styles
amethyst:
  toc: true
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

Create a `test/add.js` file and call [`QUnit.test()`](https://api.qunitjs.com/QUnit/test/), like so:

```js
QUnit.module('add', function() {
  QUnit.test('should add two numbers', function(assert) {
    assert.equal(add(1, 1), 2, '1 + 1 = 2');
  });
});
```

Check out the [API documentation](https://api.qunitjs.com) or run `qunit --help` to discover more of QUnit's features.

---

## List

* Lorem Ipsum
* **Cupcake Ipsum**
* Bacon Ipsum
* Samuel L. Ipsum
* Hipster Ipsum
* DeLorean Ipsum
* Office Ipsum
* Sagan Ipsum

## Blockquote

From cupcake ipsum:

> Cupcake ipsum dolor sit amet dragée jelly beans topping **cake**. Gingerbread oat **cake** I _love_ marshmallow topping.
>
> * jelly
> * **cake**
> * _love_
>
> The _last_ paragraph of the quote.

Text after the quote.

## Table

| Foobar | Foo | Bar | Baz | Quux
|--|--
| Sequence | 1 | 2 | 3 | 4
| Lorem ipsum | Lorem | Ipsum | Dolor | Sit
