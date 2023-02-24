# Notes on JavaScript

array of objects to object value


```
> a = [{a: 1}, {a: 1},{a: 1},{a: 1},{a: 1},{a: 1},{a: 1},{a: 1},{a: 1},]
[
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }
]
> a
[
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }
]
> Object.values(a)
[
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }, { a: 1 },
  { a: 1 }
]
> Object.values(a).map(row => row.a)
[
  1, 1, 1, 1, 1,
  1, 1, 1, 1
]

```
