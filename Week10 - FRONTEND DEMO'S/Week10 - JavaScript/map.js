const words = ['bob', 'john', 'marry', 'hilton', 'bala'];

// Using map() to capitalize the first letter of each word
//Print capitalized words 
// ['Bob', 'John', 'Marry', 'Hilton', 'Bala']
const capitalWords = words.map(word => word.charAt(0).toUpperCase() + word.substr(1));
console.log(capitalWords);

// Using map() to create an array of word lengths
//Print words length
// [3, 4, 5, 6, 4]
const wordLengths = words.map(word => word.length);
console.log(wordLengths);


// Using map() to create an array of objects with word and length properties
//Print array of objects with word and length properties
// [{word: "bob", length: 3}, {word: "john", length: 4}, {word: "marry", length: 5}, {word: "hilton", length: 6}, {word: "bala", length: 4}]
const wordsWithLengths = words.map(word => ({ word: word, length: word.length }));
console.log(wordsWithLengths);

