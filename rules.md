packet
----
```
.begin_packet
  .space
  .ident.capture(:name)
    .mixin.optional.capture(:mixin)
      .space
      .ident.push
      .semicolon
    .typename.optional.capture(:field)
      .space
      .ident.push
      .semicolon
  .repeat
  .end
```
```
packet dummy
  mixin hello;
  mixin world;
  
  int a;
  string b;
end
```
```
[:name, dummy,
  [:mixin, 
    [hello, nil]],
  [:mixin,  
    [world, nil]],
  [:field, int,
    [a, nil]],
  [:field, string,
    [b, nil]]]
```
