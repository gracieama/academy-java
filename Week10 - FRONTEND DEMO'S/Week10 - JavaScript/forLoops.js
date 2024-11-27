const characters = ['a', 'b', 'c', 'd', 'e'];

//Using for, print elements in characters array
for (let i = 0; i < characters.length; i++) {
  console.log(characters[i]);
}

//Using for/in, print elements in characters array
// iterates over the key of an object
for(const i in characters){
  console.log(characters[i]);
}

//Using forEach(), print elements in characters array
characters.forEach((character) => {
    console.log(character);
});

// characters.forEach((v, i) => { /* ... */ })

//Using for/of, print elements in characters array
// iterates over the value of an array
for (const i of characters) {
    console.log(i);
}




