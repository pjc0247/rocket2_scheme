rocket2_scheme
====

packet
----
```cpp
packet dummy_1
  int foo;
  list<list<int>> nested;
  map<list<int>, map<list<int>,string>> very_complex;
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
