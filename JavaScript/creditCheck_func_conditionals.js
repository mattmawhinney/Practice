// http://www.codecademy.com/courses/javascript-beginner-en-6LzGd/2/4?curriculum_id=506324b3a7dffd00020bf661
// A function with conditionals 

var creditCheck = function(income) {
    
    if (income >= 100) {
      return "You earn a lot of money! You qualify for a credit card.";
      
} else {

  return "Alas you do not qualify for a credit card. Capitalism is cruel like that.";
  
}
    
    
};

creditCheck(75)
creditCheck(125)
creditCheck(100)


// Model of how to do a conditional in JS 

if (20 == 21) {
    
    console.log("I am right")
    
}    else {
    
    console.log("I am wrong")
}