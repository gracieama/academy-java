let promiseTask = new Promise((resolve, reject) => {
    setTimeout(() => {
      const timestamp = Date.now(); 
      if (timestamp % 2 === 0) {
        resolve("Timestamp is even"); 
      } else {
        reject(new Error ("Timestamp is odd")); 
      }
    }, 1000); 
  });
  
  promiseTask
    .then((message) => {
      console.log(message); 
    })
    .catch((error) => {
      console.error("An error occurred:", error); 
    });
  