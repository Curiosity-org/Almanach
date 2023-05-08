<div align="center">
  <img height="200" src="https://user-images.githubusercontent.com/29739547/236830745-2ac00685-5708-44ad-8acb-30623e2d3381.svg"  />
</div>

# Almanach

Application de transports en commun open-source.

## Dans quel but ?

Fort du constat que les seules applications d'informations sur les transports en commun sont soit 
propriétaires, soit ouvertes mais nettement inférieures aux applications propriétaires, Almanach 
a pour but de fournir une application open-source de qualité, basée sur des jeux de données ouverts.

L'application est développée en Flutter, ce qui permet de la déployer sur Android et iOS, même si 
pour le moment seul Android sera notre priorité.

Quant aux logiciels back-end, nous utiliserons une instance auto-hébergée de Supabase, qui est une 
alternative open-source à Firebase. Pour le calcul des itinéraires, ainsi que la récupération des 
horaires et pertubations en temps réel, nous utiliserons une instance auto-hébergée de Navitia, 
qui est une API open-source de calcul d'itinéraires.