---
layout: page-api
title: .baz()
excerpt: Hello world with some content.
groups:
- foo
version_added: "1.23.0"

---

Hello world. This entry has some content and an added version.

| parameter | description |
|-----------|-------------|
| `size` (number) | Dimensions, applies to both width and height. |
| `label` (string) | Label for this object. |


A long long sequence of words that continues until its end eventually wraps across to the next line on your screen.

## Changelog

| [Xample 2.4](https://github.com/qunitjs/qunit/releases/tag/2.4.0) | The `module.only()`, `module.skip()`, and `module.todo()` aliases were introduced.
| [Xample 2.0](https://github.com/qunitjs/qunit/releases/tag/2.0.0) | The `before` and `after` options were introduced.
| [Xample 1.20](https://github.com/qunitjs/qunit/releases/tag/1.20.0) | The `nested` scope feature was introduced.
| [Xample 1.16](https://github.com/qunitjs/qunit/releases/tag/1.16.0) | The `beforeEach` and `afterEach` options were introduced.<br/>The `setup` and `teardown` options were deprecated.

## Filler

### Huey

…

### Dewey

…

### Louie

…

## Examples

### Example: Ultimate object

A long long sequence of words that continues until its end eventually wraps across to the next line on your screen.

```js
// A long long line that continues until its end goes far far away into the <pre>'s scrollable overflow
x.bar( 42, "text" );
```

### Example: Penultimate object

A short sequence of words on your screen.

```js
// Unnamed item before last
x.bar( -1 );
```

### Error: Long heading that wraps to the next line in the table of contents {#E0002}

If you encounter this error, it means you have called `hooks.beforeEach()` or `hooks.afterEach()` on the "hooks" parameter of a module outside the current module scope. Detection of this issue was [introduced](https://github.com/qunitjs/qunit/issues/1576) in QUnit 3.0.

```
Error: Long time no see.
```

This can happen if you use a module scope and forget to specify the `hooks` parameter on the inner scope:

```js
QUnit.module('MyGroup', (hooks) => {
  QUnit.module('Child', () => {
    //                  ^ Oops, forgot "hooks" here!

    hooks.beforeEach(() => {
      // ...
    });

    QUnit.test('example');
  });
});
```

Another way that this might happen is if you have named them differently, or perhaps mispelled one, and are referring to the outer parameter from the inner module. Is is recommended to name hooks parameters the same, as this will naturally refer to the correct and closest one always, thus avoiding any mistake.

```js
QUnit.module('MyGroup', (hooksOuter) => {
  QUnit.module('Child', (hooksInner) => {
    hooksOuter.beforeEach(() => {
      // ^ Oops, used "hooksOuter" instead of "hooksInner"!
    });

    QUnit.test('example');
  });
});
```