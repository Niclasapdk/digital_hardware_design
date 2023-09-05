# Digital Hardware Design - Exercises for Lecture 1

[table editor](https://www.tablesgenerator.com/markdown_tables)

# Exercise 1

| `a` | `b` | `c` | `(a + b)(a + c)` | `a + (b*c)` |
|---|---|---|------------|---------|
| 0 | 0 | 0 | 0          | 0       |
| 0 | 0 | 1 | 0          | 0       |
| 0 | 1 | 0 | 0          | 0       |
| 0 | 1 | 1 | 1          | 1       |
| 1 | 0 | 0 | 1          | 1       |
| 1 | 0 | 1 | 1          | 1       |
| 1 | 1 | 0 | 1          | 1       |
| 1 | 1 | 1 | 1          | 1       |

| `a` | `b` | `a*(a + b)` | `a` |
|---|---|---------|---|
| 0 | 0 | 0       | 0 |
| 0 | 1 | 0       | 0 |
| 1 | 0 | 1       | 1 |
| 1 | 1 | 1       | 1 |

| `a` | `a + a'` | `1` |
|---|------|---|
| 0 | 1    | 1 |
| 1 | 1    | 1 |

| `a` | `b` | `c` | `(a + b + c)'` | `a'*b'*c'` |
|---|---|---|----------|----------|
| 0 | 0 | 0 | 1        | 1        |
| 0 | 0 | 1 | 0        | 0        |
| 0 | 1 | 0 | 0        | 0        |
| 0 | 1 | 1 | 0        | 0        |
| 1 | 0 | 0 | 0        | 0        |
| 1 | 0 | 1 | 0        | 0        |
| 1 | 1 | 0 | 0        | 0        |
| 1 | 1 | 1 | 0        | 0        |

# Exercise 2

Use DeMorgan stuff to show stuff.

```
((ab')'(a'b)')' = (ab')'' + (a'b)'' = (ab') + (a'b)
```

| `a` | `b` | `(ab') + (a'b)` | `XOR` |
|---|---|---------------|-----|
| 0 | 0 | 0             | 0   |
| 0 | 1 | 1             | 1   |
| 1 | 0 | 1             | 1   |
| 1 | 1 | 0             | 0   |

# Exercise 3

```
AB'C'  +  ABC'  +  A'C' = C'(AB'  +  AB  +  A') = C'(ACB' + B) + A') = C'(A + A')  +  C'
```

```
MN'P + L'MP + L'MN' + L'MNP' + L'N'P' = M(N'P + L'P + L'N' + L'NP') + L'N'P'
= M(L'(P + N' + NP') + N'P) + L'N'P' = M(L'(P + N' + P') + N'P) + L'N'P' = M(L' + N'P) + L'N'P'
= ML' + MN'P + L'N'P'
```

# Exercise 4

```
X = (AB)'
Y = (A(AB)')'
Z = (B(AB)')'
C = ((A(AB)')' (B(AB)')')' = (A' + B')(A + B)
D = AB
```

| `A` | `B` | `D` | `C` |
|-----|-----|-----|-----|
| 0   | 0   | 0   | 0   |
| 0   | 1   | 0   | 1   |
| 1   | 0   | 0   | 1   |
| 1   | 1   | 1   | 0   |

The circuit is a 1-bit half-adder.

# Exercise 5

See the c file.
