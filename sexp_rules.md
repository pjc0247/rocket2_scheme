packet
----
```
.begin_packet
  .space
  .ident.capture(:name)
  .repeat
    .mixin?.capture(:mixin).push
      .space
      .ident.push
      .semicolon
      .pop
    .typename?.capture(:field).push
      .space
      .ident.push
      .semicolon
      .pop
  .pop
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
