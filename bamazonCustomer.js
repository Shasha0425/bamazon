var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
  });
  
  // function which prompts with list of items and askw which item to purchase
  function start() {
    // query the database for all items in the product table
    connection.query("SELECT * FROM products", function(err, results) {
        if (err) throw err;
         console.log(results);  
        // once you have the items, prompts the customer for which item they would like to buy
        inquirer
        .prompt([
            {
            name: "choice",
            type: "rawlist",
            choices: function() {
                var choiceArray = [];
                for (var i = 0; i < results.length; i++) {
                choiceArray.push(results[i]);
                }
                return choiceArray;
                
            },
            
            message: "Which item(s) would you like to purchase?"
            },
            {
            name: "quantity",
            type: "input",
            message: "How many would you like to purchase"
            }
        ])
        .then(function(answer) {
            // get the information of the chosen item
            var chosenItem;
            for (var i = 0; i < results.length; i++) {
            if (results[i].product_name === answer.choice) {
                chosenItem = results[i];
            }
         }
     }

    )}

)};
    