---
layout: page
title: About
---

<p class="lead">QUnit is a powerful, easy-to-use JavaScript testing framework.</p>

## Philosophy

QUnit's philosophy as a test framework boils down to three primary tenants: _Easy_, _Universal_, and _Extensible_.

### Easy

QUnit should be easy-to-use from start to finish. Setting up your first test with should be super simple, requiring as little overhead as possible. Then, as you're developing, when a test or assertion fails, QUnit should provide feedback to you as fast as possible, with enough detail to quickly figure out the underlying issue. And it should do so without interrupting or corrupting other tests.

Additionally, QUnit should be fast to make it easy for developers to have confidence that putting their tests on their critical path won't slow them down.

### Univeral

QUnit should be universally applicable for testing JavaScript code and support many different environments. JavaScript can run in the browser, in worker threads, and on the server, and so should QUnit so that you can test your code in the same environment where it will be running; the environment where you need to have confidence it works.

### Extensible

QUnit should be opinionated with a lean API to support being easy-to-use, but it should also be highly extensible. There are many different approaches to testing and many different types of tests that users may want to write, and while we can not support all of these out of the box, we can support APIs to enable the community to extend QUnit to meet their needs.
