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
4 mac (\r)
```

Ref: https://github.com/texstudio-org/texstudio/issues/4667

## Què he de fer quan la he liada i les imatges han petat en el procés?
`git restore --source=<commitHash> -- *.png`

Si tinc un `<commitHash>` d'on puc recuperar-les. Per a evitar més problemes, recordar que s'ha de recordar que són binaris `*.png binary` quan preparo el .gitattributes. 