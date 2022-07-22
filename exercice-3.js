//
// Q3.1 - Créez un tableau JS qui stocke chaque triplet d'entiers figurant dans une ligne du tableau HTML sous la forme d'un tableau JS à 3 éléments.
// Ce tableau ne doit contenir ni les en-têtes, ni les noms de continents.
// Tableau attendu : [[48,3,5],[0,0,1],[31,12,6],[29,10,6],[13,10,14],[7,7,14],[12,0,2]]


let premiertab= document.querySelectorAll("body");

let tabjs = [];

for (let element of premiertab){
    let tr = document.querySelectorAll(element.firstChild);
    let td = tr.filter(function item(a){ return a.textcont == Number});
    let tdfiltrer = td.filter(function input(b){return b.textcont});
    tabjs.unshift(tdfiltrer);
    element.firstChild = element.nextSibling;
}




// Q3.2 Créez un tableau JS qui stocke chaque ligne du tableau HTML, sauf la ligne d'en-têtes, sous la forme d'un objet
// ayant 4 propriétés dénommées continent, republic, monarchy et other.
// Tableau attendu :
  let div = document.querySelectorAll("td");
 let tJS = [];
 let objet = {contient : div[0],
              reublic : div[1],
            monarchy : div[2],
            other : div[3],
        
        };
        let angers = {contient : div[4],
            reublic : div[5],
          monarchy : div[6],
          other : div[7],
      
      };
      let paris = {contient : div[8],
        reublic : div[9],
      monarchy : div[10],
      other : div[11],
  
  };
  let monaco = {contient : div[12],
    reublic : div[13],
  monarchy : div[14],
  other : div[15],

};
let Nantes = {contient : div[16],
    reublic : div[17],
  monarchy : div[18],
  other : div[19],

};
let toulon= {contient : div[20],
    reublic : div[21],
  monarchy : div[22],
  other : div[23],

};
tJS.unshift(objet,angers,paris,monaco,toulon);
// [
// {
// "continent": "Africa",
// "republic": 48,
// "monarchy": 3,
// "other": 5
// },
// {
// "continent": "Antarctica",
// "republic": 0,
// "monarchy": 0,
// "other": 1
// },
// {
// "continent": "Asia",
// "republic": 31,
// "monarchy": 12,
// "other": 6
// },
// {
// "continent": "Europe",
// "republic": 29,
// "monarchy": 10,
// "other": 6
// },
// {
// "continent": "North America",
// "republic": 13,
// "monarchy": 10,
// "other": 14
// },
// {
// "continent": "Oceania",
// "republic": 7,
// "monarchy": 7,
// "other": 14
// },
// {
// "continent": "South America",
// "republic": 12,
// "monarchy": 0,
// "other": 2
// }
// ]


//
// Q3.4 - Fonction formaterMinMax(ncol) 
// Prend en entrée un numéro de colonne du tableau HTML (ncol) et applique aux 2 cellules contenant les valeurs minimal et maximal de la colonne la mise en forme suivante :
// - le texte est en gras,
// - le texte est de couleur rouge pour la valeur minimale et vert clair pour la valeur maximale,
// - le fond est de couleur rose pour la valeur minimale et vert pour la valeur maximale.
//

function effacerFormatage(){let today  = document.querySelectorAll("td");
for (let i of today ){
    if(i.textContent == Number)
    i.textContent.style.font = "white";
    i.textcontent.style.color = "black";
    i.textcontent.style.weigth = "normal";
}
}

function formaterMinMax(){
    let colonne = document.querySelectorAll("th");
    for (let element of colonne){
        let alpha = document.querySelectorAll("tr");
        let a = math.min(alpha);
        let b = math.max(alpha);
        a.style.textTransform = "uppercase";
        b.style.textTransform = "uppercase";
        a.style.color = "red";
        b.style.color ="ligth";
        a.style.font="rose";
        b.style.font = "green";
    }
}


//
// Q3.5 - Remplacez le texte des en-têtes du tableau HTML ``Republic'', ``Monarchy'' et ``Other'' par des boutons (éléments 
// button ou input de type button). Chaque bouton affiche le même texte que l’en-tête qu'il remplace. Enregistrez ensuite 
// un gestionnaire d’événements sur chaque bouton qui appellera les fonctions effacerFormattage et indiquerMinMax lorsqu'il 
// sera cliqué en veillant à communiquer le bon numéro de colonne à cette dernière.
//

