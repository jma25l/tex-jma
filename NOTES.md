# Anotacions útils
## Garantir que els arxius acostumin a ser \n
define a macro.
Trigger: `?new-file`
Content (script): `editor.document().setLineEnding(2)`

LineEnding code:
```0 conservative (basically local)
1 local (only \n or \r\n)
2 linux (\n)
3 win (\r\n)
4 mac (\r)```

Ref: https://github.com/texstudio-org/texstudio/issues/4667

## Què fer quan la he liada i les imatges han petat en el procés:
git restore --source=<commitHash> -- *.png
Si tinc un <commitHash> d'on puc recuperar-les. 