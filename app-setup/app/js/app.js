'use strict';

var trace = function(){
  for(var i = 0; i < arguments.length; i++){
    console.log(arguments[i]);
  }
};

var sortList = function(sortBy, list) {
  list.sort(function(a,b){
    if(a[sortBy] < b[sortBy]) return -1;
    if(a[sortBy] > b[sortBy]) return 1;
    return 0
  });
  return list.reverse();
}

var diagonalSum = function(matrix){
  return matrix.reduce(function(prev,curr,index,array){
    return prev + matrix[index][index];
  }, 0);
};

function spam(number){
  var string = 'hue';
  for(var i = 1; i < number; i++){
    string += 'hue';
  }
  return string;
}