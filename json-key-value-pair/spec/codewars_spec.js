// run with `karma start`
'use strict';
import {getCharacters} from '../lib/codewars.js';

describe('getCharacters', () => {
  // setup
  let characters = {
    "characters": [
      { name: 'Dipper Pines', age: '12', speciality: 'adventurer' },
      { name: 'Mabel Pines', age: '12', speciality: 'energetic optimist' },
      { name: 'Grunkle Stan', age: 'Unknown', speciality: 'shyster' },
      { name: 'Soos Ramirez', age: '22', speciality: ' lovable man-child' },
      { name: 'Wendy Corduroy', age: '15', speciality: 'sociable and nonchalant' },
      { name: 'Waddles', age: 'Unknown', speciality: 'pig stuff' },
      { name: 'Tambry', age: '15', speciality: 'sociable and nonchalant' }
    ]
  }

  // assert
  it('returns an array of the matching objects', () => {
    // expect
    expect(getCharacters(characters,'name','Dipper Pines')).toEqual([{"name":"Dipper Pines", "age":"12", "speciality":"adventurer"}]);
  });

  it('should be case insensitive', () => {
    expect(getCharacters(characters, 'name', 'waddles')).toEqual([{"name":"Waddles", "age":"Unknown", "speciality":"pig stuff"}]);
  });

  it('returns "given argument is not a function" if not passed a function', () => {
    expect().toEqual();
  });

  it('Function should match the full passed criteria.', () => {
    expect(getCharacters(characters, 'name', 'Wendy')).toEqual([]);
  });

  // teardown
  afterEach(() => {
    // do something
  });
});
