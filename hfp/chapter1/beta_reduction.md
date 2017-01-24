## Chapter 1
Exercises from chapter one of lambda calculus from hfp book.

### Exercise 1
``` 
(λabc.cba)zz(λwv.w)
(λa.λb.λc.cba)(z)z(λw.λv.w)
(λ[a:=z].λb.λc.cb[a:=z])z(λw.λv.w)
(λb.λc.cbz)(z)(λw.λv.w)
(λ[b:=z].λc.c[b:=z]z)(λw.λv.w)
(λc.czz)(λw.λv.w)
(λ[c(λw.λv.w)].[c:=(λw.λv.w)]zz)
(λw.λv.w)(z)z
(λ[w:=z].λv.[w:=z])z
(λv.z)z
(λ[v:=z].z)
z
```

### Exercise 2
```
(λx.λy.xyy)(λa.a)b
(λx.λy.xyy)(λa.a)b
(λ[x:=(λa.a)].λy.[x:=(λa.a)]yy)(b)
(λy.(λa.a)yy)(b)
(λ[y:=b].(λa.a)[y:=b][y:=b])
((λa.a)(b)b)
((λa.a)(b)b)
((λ[a:=b].[a=b])b)
bb
```

### Exercise 3
```
(λy.y)(λx.xx)(λz.zq)    
(λ[y:=λx.xx].[y:=λx.xx](λz.zq)    
(λ[y:=λx.xx].[y:=λx.xx](λz.zq)    
(λx.xx)(λz.zq)
(λ[x:=λz.zq].[(x:=λz.zq)]([x:=λz.zq)])
(λz.zq)(λz.zq)
(λ[z:=(λz.zq)].[z:=(λz.zq)]q)
(λz.zq)(q)
(λ[z:=q].[z:=q]q)
qq
```

### Exercise 4
```
(λz.z)(λz.zz)(λz.zy)    
(λ[z:=(λz.zz)].[z:=(λz.zz)])(λz.zy)    
(λz.zz)(λz.zy)
(λ[z:=(λz.zy)].[z:=(λz.zy)][z:=(λz.zy)])
(λz.zy)(λz.zy)
(λz=[(λz.zy)].[z:=[(λz.zy)]y)
(λz.zy)(y)
(λ[z:=y].[z:=y]y)
yy
```

### Exercise 5
```
(λx.λy.xyy)(λy.y)y    
(λ[x:=(λy.y)].λy.[x:=(λy.y)]yy)y    
(λy.(λy.y)yy)(y)
(λ[y:=y].(λy.y)yy)
(λy.y)(y)y
(λ[y:=y].y)y
yy
```