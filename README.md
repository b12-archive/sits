# sits
simple integration test suite

## write your specs

pattern:
```
# my spec

  $ command
  expected response
```

```
# test credentials

  $ api GET / -u foo:bar
  Status: 401
  {
    "documentation_url": "https://developer.github.com/v3",
    "message": "Bad credentials"
  }
```

## dependencies

* make
* curl
* Python with json support
* [cram][cram]


[cram]: https://pypi.python.org/pypi/cram
