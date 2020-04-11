# Partidos de futbol

## Ejemplo inversibilidad aritmetica negacion


### Los hechos
partido/4 relaciona a dos países con su correpondiente cantidad de goles que hicieron en un partido

```prolog
partido(islandia,5,croacia,1).
partido(nigeria,0,argentina,1).
partido(croacia,0,argentina,6).
partido(brasil,5,costaRica,0).
partido(brasil,2,croacia,2).
```
continente/2 relaciona un país con el continente donde está

```prolog
continente(brasil,america).
continente(croacia,europa).
continente(argentina,america).
continente(costarica,america).
continente(islandia,europa).
continente(nigeria,africa).
```

descalificado/1 representa cuáles son los países que fueron descalificados

```prolog
descalificado(brasil).
descalificado(alemania).
```

### Se pide realizar

1. La cantidad de goles que hizo un país en algún partido

`goles(Pais,Goles)`

Pista: prestar atención si el país jugó de local o visitante.

2. Encontrar los países de cada continente que hicieron más de dos goles en algún partido

`hacenMuchosGoles(Continente,Pais)`

Variante: verificar que el país no haya sido descalificado. 

3. Si hubo goleada entre dos países, considerando más de tres goles de diferencia en un partido. 

`fueGoleada(E1,E2)`

Variante: que la diferencia de goles sea precisa, exactamente 6.
Pista: delegar en un predicado diferencia/3

