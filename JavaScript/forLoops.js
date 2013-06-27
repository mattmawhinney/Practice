
// Basic for loop structure 

for (var i = 1; i < 11; i = i + 1;) {
    code code code; 
}


// Example that prints the numners 4..23

\

for (var i = 4; i < 24; i = i + 1) {
	console.log(i);
}


// a. A more efficient way to code to increment up by 1 is to write i++.
// b. We decrement down by 1 by writing i--.
// c. We can increment up by any value by writing i += x, where x is how much we want to increment up by. e.g., i += 3 counts up by 3s.
// d. We can decrement down by any value by writing i -= x. (See the Hint for more.)


// Example that counts from 5 to 50 counting only multiples of 5



for (var i = 5; i <= 50; i+=5) {
	console.log(i);
}


// Example that counts down from 10..0

for (var i = 10; i >= 0; i -= 1) {
	console.log(i);
}