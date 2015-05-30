# es6-snippets.el

A collection of Emacs' Yasnippets for ECMAScript 6.

Most new features and syntax have a snippet, but feel free to create
an issue or pull-request if one is missing or if there is clashing
key binding.

### Snippets

*Arrow Functions*

```
arw
```

expands to

```
($1) => {
    $0
}
```

*Classes*

```
class
```

expands to

```
class $1 {
    $0
}
```

*Class Constructor*

```
ccs
```

expands to

```
constructor($1) {
    $0
}
```

*Const variables*

```
const
```

expands to

```
const $1 = $0;
```

*Let variables*

```
let
```

expands to

```
let $1 = $0;
```

*Super methods*

```
sup
```

expands to

