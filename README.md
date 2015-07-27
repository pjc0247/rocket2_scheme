rocket2_scheme
====

types
----
* __signed/unsigned int (4b)__
* __signed/unsigned int64 (8b)__
* __bool (1b)__
* __string (null-terminated, variable length)__
* __string (null-terminated, fixed length)__
* __float (4b)__
* __double (8b)__
* __list<>__
* __map<,>__

byte-order
----
* dont-care (system default)

packet
----
```cpp
packet dummy_1
  int foo;
  list<list<int>> nested;
  map<list<int>, map<list<int>,string>> very_complex;
end
```

enum
----
```cpp
enum fruits
  banana,
  apple,
  pineapple
end
```

data-model
----
```cpp
model user
  string id;
  string nickname;
  int level;
end
```
```cpp
struct user_data_response
  user user_data;
end
```

mixin
----
```cpp
packet user_data_respone
  mixin user;
  # string id;
  # string nickname;
  # int level;
end
```

cli-options
----
* __align-size__
* __crc__
