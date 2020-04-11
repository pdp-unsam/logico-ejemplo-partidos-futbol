
partido(islandia,5,croacia,1).
partido(nigeria,0,argentina,1).
partido(croacia,0,argentina,6).
partido(brasil,5,costaRica,0).
partido(brasil,2,croacia,2).

continente(brasil,america).
continente(croacia,europa).
continente(argentina,america).
continente(costarica,america).
continente(islandia,europa).
continente(nigeria,africa).

descalificado(brasil).
descalificado(alemania).

hacenMuchosGoles(Continente,Pais):-
  continente(Pais,Continente),
  not(descalificado(Pais)),
  goles(Pais,Cantidad),
  Cantidad > 2.

goles(Pais,Goles):-
  partido(Pais,Goles,_,_).
goles(Pais,Goles):-
  partido(_,_,Pais,Goles).

fueGoleada(E1,E2):-
  partido(E1,G1,E2,G2),
  diferencia(G1,G2,Dif),
  Dif > 3.

fueGoleadaPrecisa(E1,E2):-
  partido(E1,G1,E2,G2),
  diferencia(G1,G2,6).

diferencia(Nro1, Nro2, Dif):-
  Dif is Nro1 - Nro2.

diferencia(Nro1, Nro2, Dif):-
  Dif is Nro2 - Nro1.


% argentinaClasifica :- 
%   gana(argentina,nigeria),
%   flojoResultado(islandia).

% flojoResultado(Pais):-gana(croacia,Pais).
% flojoResultado(Pais):-empata(croacia,Pais).
% flojoResultado(Pais):- 
%  gana(Pais,croacia),
%  mejorDiferenciaGol(argentina,Pais).

% %islandiaPierdeCroacia.
% empata(Pais1,Pais2):-
%   resultado(Pais1,Goles,Pais2,Goles).

% gana(Equipo,OtroEquipo):-
%   resultado(Equipo,Goles,OtroEquipo,OtrosGoles),
%   Goles > OtrosGoles.

% resultado(E1,G1,E2,G2):- partido(E1,G1,E2,G2).
% resultado(E1,G1,E2,G2):- partido(E2,G2,E1,G1).
