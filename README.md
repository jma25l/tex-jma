# La meva classe de LaTeX:

__Nota Important:__ Aquest projecte resulta de la recopilació de les eines que jo empro en maquetar un document, i per tant, que em són d'utilitat. Ho he incorporat en un repositori per facilitar-me el control de versions, documentat per tenir clar què és el que estic fent, i publicat perquè ja que estic. Sigues lliure de tocar, adaptar, inspirar-te o emprar qualsevol element d'aqui. A continuació enumero una mica per sobre les diferents parts que té aquest repositori, a més d'alguna consideració. 

La majoria de les parts dels noms de les macros, a més dels comentaris estan en castellà, en ser la llengua en la que els vaig escriure quen plantejava originalment. 

## Tipografia

L'arxiu `JoaquinMath.ttf` és una font pràcticament buida, que resulta de compilar `font.json` amb les instruccions del `Makefile`. És important remarcar que cal tenir una instalació de [Fontforge](https://fontforge.org/en-US/), amb l'arxiu `ffpython` accessible (preferiblement via Path). Els caracters es defineixen a l'arxiu `font.json` i els svg (dibuixos vectorials) estan plantejats per a posar-se al directori `font`.

En aquest moment, hi ha els següents glifs: 
- 0x41 (A): \mathbb{A} a la que se li ha aplicat una simetria especular, per a que el "pal doble" estigui a la banda esquerra.   
- 0x4E (N): \mathbb{N} a la que s'ha col·locat el "pal doble" al traç vertical esquerre, enlloc de al trasversal. 
- 0x3B (;): \rightleftharpoons (nadiu, diria), que s'ha posat en vertical. El doble ham el faig servir per a denotar una bijecció, per a fer algun diagrama caçador em convenia tenir-lo en vertical, va ser llavors quan no el vaig trobar i el vaig fer. Soc conscient que és una notació gens habitual, de fet, no l'he trobada enlloc, però per a fer-me resums, m'és útil. 

Adjunto una imatge on es veuen exemples d'ús dels tres glifs, és una captura de l'arxiu `demo/demo.tex`: 
![Exemple](/docs/img/font.png)



La llicència de les fonts de la AMS (\mathbb, per exemple) permet la publicació de modificacions amb la condició que es canvïi el nom a la font. És important destacar, que com la font la obtinc en format .ttf, només és compatible amb XeLaTeX o LuaTex.

## Ús paquet LaTeX: 
Per afegir la classe, simplement `\usepackage{<ruta relativa>}`. Està plantejat per a que la estructura de directoris sigui: 
- Base
  - sty
    - jma.sty
    - JoaquinMath.ttf
  - document 1
    - main.tex
  - document 2
    - main.tex

En cas contrari i per a poder carregar bé la font, cal posar `\newcommand{\intRutaPaquete}{<ruta relativa>}`, veure l'exemple a la carpeta demo. 

## Funcionalitats paquet
- Sigui $X \in \{N, Z, Q, R, C, K, A\}$, aleshores `\X`: `\mathbb X`. Emprant XeLaTeX i la font, alguns caracters donen la versió modificada. 
- \biy, \biyV: Bijecció, veure la nota sobre la font
- Substituir `\geq, \leq` per les versions $\geqslant, \leqslant$. El mateix amb `\phi`: $\varphi$ i `\epsilon`: $\varepsilon$
- Macro `\titulo` per encapçalar documents senzills. Incorpora el títol, l'autor i la data de compilació. *Molt útil quan s'imprimeixen/envien esborranys*. 
- Definir alguns colors que empro per al paquet listings (mostrar codi). *PENDENT: Incorporar la configuració de l'estil dels blocs de codi, *
- (Si no són diapositives) Adjustar els marges de la pàgina amb el paquet `geometry`, a més de carregar els paquets `xcolor` i `enumitem` 
- Carregar els paquets `amsmath`, `amssymb`, `amsfonts` i `cancel`; per a formatar l'entrada matemàtica. 
- Afegida macro `\sepDemo{#1}`, que empro per recuadrar per sota i per la dreta, l'empro per a indicar les inclusions i també les implicacions. Hi ha els àlies: `\directa: \sepDemo{$\implies$}` i  `\reciproc: \sepDemo{$\impliedby$}` 

