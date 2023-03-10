open Cypress

describe("Root path", () => {
  it("/", () => {
    cyVisit("/", ())
    cyContainsStringP("EXAMPLE 1", ())
  })
})
