//http://www.codecademy.com/courses/javascript-beginner-en-NhsaT/2/3?curriculum_id=506324b3a7dffd00020bf661
// For loop with an array; now we are into iterator territory 

// This prints "I would like to visit ___" with the various elements of cities plugged in 

var cities = ["Melbourne", "Amman", "Helsinki", "NYC", "San Fran"];

for (var i = 0; i < cities.length; i++) {
    console.log("I would like to visit " + cities[i]);
}


// Gives the largest number in an array 

var array = [3, 6, 2, 56, 32, 5, 89, 32];
var largest = 0;


for (var i=0; i < array.length; i++) {
    if (largest < array[i]) {
        largest = array[i];
    }
    

    
}




console.log(largest);