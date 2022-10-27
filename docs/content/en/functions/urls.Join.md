---
title: urls.Join
description: Join parts of a URL resulting in a clean URL without back references like `../`
date: 2022-10-27
publishdate: 2022-10-27
lastmod: 2022-10-27
categories: [functions]
menu:
  docs:
    parent: "functions"
keywords: [urls]
signature: ["urls.Join BASE [PARTS]"]
workson: []
hugoversion:
deprecated: false
aliases: []
---

`urls.Join` takes a base url and a list of path segments as input


```
{{ $url := urls.Join "http://www.gohugo.io" "/a/b" "../" "../" }}
```

and returns a string.

Note that `urls.Join` does not escape special characters.