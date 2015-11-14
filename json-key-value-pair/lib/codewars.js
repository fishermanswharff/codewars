'use strict';
export function getCharacters(obj, key, val) {
  var foundCharacters = [];

  // obj.characters.filter(val => RegExp(`^${val}$`, 'ig').test(val[key]));

  obj.characters.forEach(function(value,index){
    if(value[key].toString().toLocaleLowerCase() == val.toLocaleLowerCase()){
      foundCharacters.push(value);
    };
  });


  return foundCharacters;
}
