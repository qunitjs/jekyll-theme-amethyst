---
layout: home

# Defaults to: site.title
home_title:
# Defaults to: site.description
home_description:
# Optional
home_img:
# Optional
home_primary_btn:
  name: Get Started
  href: /intro/
# Optional
home_secondary_btn:
  name: View the Docs
  href: https://api.qunitjs.com
---

<section class="grid grid--small home-highlights">
  <div>
    <h2>Hue</h2>
    <p>Cupcake ipsum dolor sit amet jujubes marzipan liquorice.</p>
  </div>

  <div>
    <h2>Mineral</h2>
    <p>Gummi bears dessert icing carrot cake. Jelly I love wafer I love powder croissant I love.</p>
  </div>

  <div>
    <h2>Quartz</h2>
    <p>Lemon drops powder oat cake tiramisu powder. I love biscuit I love donut.</p>
  </div>
</section>

---

## A Quick Example


<div class="grid grid--split" markdown="1">

<div class="example-result" markdown="1">

### Test suite

```js
const add = (a, b) => a + b;
QUnit.module('add', function() {
  QUnit.test('should add two numbers', function(assert) {
    assert.equal(add(1, 1), 2, '1 + 1 = 2');
  });
});
```

</div>

<div class="example-result" markdown="1">

### CLI Result

```
TAP version 13
ok 1 add > should add two numbers
1..1
# pass 1
# skip 0
# todo 0
# fail 0
```

</div>

</div>

---

## Current Release

<p class="lead lead--center">v2.10.1 (<a href="https://github.com/qunitjs/qunit/blob/2.10.1/History.md">changelog</a>)</p>

These are the officially supported download channels for QUnit releases:

* npm: `npm install --save-dev qunit`
* Yarn: `yarn add --dev qunit`
* Bower: `bower install --save-dev qunit`
* CDN: [`qunit-2.10.1.js`](https://code.jquery.com/qunit/qunit-2.10.1.js) & [`qunit-2.10.1.css`](https://code.jquery.com/qunit/qunit-2.10.1.css)

---

<p class="cta">What are you waiting for? <a href="{% link intro.md %}" class="button">Get started!</a></p>
