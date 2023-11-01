// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining items.

// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

function removeFirstAndShuffle(arr) {
    const firstItem = arr.shift() // Remove the first item
    const shuffledArray = arr.sort(() => Math.random() - 0.5) // Shuffle the remaining items
    return shuffledArray
  }

const colors1 = ["purple", "blue", "green", "yellow", "pink"]
// Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
const colors2 = ["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
// Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]

// b) Create the function that makes the test pass.

test('removes first item and shuffles the array', () => {
  // Arrange
  const inputArray = [1, 2, 3, 4, 5]

  // Act
  const resultArray = removeFirstAndShuffle([...inputArray]) // Make a copy to avoid mutating the original array

  // Assert
  expect(resultArray.length).toBe(inputArray.length - 1) // The result array should have one less element
  expect(resultArray).not.toContain(inputArray[0]) // The first element should be removed
  expect(resultArray).toEqual(expect.arrayContaining(inputArray.slice(1))) // All other elements should be present
})

test('example with provided variable', () => {
  // Arrange
  const exampleArray = [10, 20, 30, 40, 50]

  // Act
  const resultArray = removeFirstAndShuffle([...exampleArray])

  // Assert
  expect(resultArray).not.toContain(10); // The first element (10) should be removed
})
// Pseudo code:

// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

function calculateTally(votes) {
    return votes.upVotes - votes.downVotes
  }

const votes1 = { upVotes: 13, downVotes: 2 }
// Expected output: 11
const votes2 = { upVotes: 2, downVotes: 33 }
// Expected output: -31

// b) Create the function that makes the test pass.
test('calculateTally for votes1', () => {
    const result = calculateTally(votes1)
    const expected = 11
    expect(result).toBe(expected)
  })
  
  test('calculateTally for votes2', () => {
    const result = calculateTally(votes2)
    const expected = -31
    expect(result).toBe(expected)
  })

// Pseudo code: Function calculateTally(votes):
    // Set upVotes to votes.upVotes
    // Set downVotes to votes.downVotes
    
    // Set tally to upVotes - downVotes
    
    // Return tally
