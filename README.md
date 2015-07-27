rocket2_scheme
====

types
----
* __signed/unsigned int__ (4b)
* __signed/unsigned int64__ (8b
* __bool__ (1b)
* __string__ (null-terminated, variable length)
* __string__ (null-terminated, fixed length)
* __float__ (4b)
* __double__ (8b)
* __list<>__
* __map<,>__

byte-order
----
* dont-care (system default)
  * 동종 시스템간에 사용을 가정, 일단 구현 먼저

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
