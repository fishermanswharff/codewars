/*
describe("sorting arrays", function() {
  var array = [
                {a: 1, b: 3},
                {a: 3, b: 2},
                {a: 2, b: 40},
                {a: 4, b: 12}
              ];
  it("will sort by object properties", function() {
    expect(sortList('a',array)).toEqual([{a: 4, b: 12},{a: 3, b: 2},{a: 2, b: 40},{a: 1, b: 3}]);
  });
});
*/

describe('matrix diagonals',function(){
  var exampleArray =  [
                        [1, 0, 0, 0, 0],
                        [0, 1, 0, 0, 0],
                        [0, 0, 1, 0, 0],
                        [0, 0, 0, 1, 0],
                        [0, 0, 0, 0, 1]
                      ];
  it('sums the values from top left to bottom right',function(){
    expect(diagonalSum(exampleArray)).toEqual(5);
  });
});

describe('spam',function(){
  it('multiplies hue by the number passed as a param',function(){
    expect(spam(14)).toEqual('huehuehuehuehuehuehuehuehuehuehuehuehuehue');
    expect(spam(6)).toEqual('huehuehuehuehuehue')
  });
})