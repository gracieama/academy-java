async function getData() {
    return new Promise((resolve, reject) => {
     setTimeout(() => {
       resolve({ message: "Data Fetched Successfully" });
    }, 4000);
    });
 }
  
async function startTask() {
  try {
    console.log("Fetching data...");
     let data = await getData();
      console.log(data.message);
  }
  catch(error) {
    console.log("Error fetching data:", error.message);
  }
}

startTask();
