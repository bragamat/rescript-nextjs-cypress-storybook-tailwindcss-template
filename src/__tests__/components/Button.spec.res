open Vitest

describe("Hello, Vitest", () => {
  test("This is a test case", (_) => {

    // Test using the `Expect` module
    expect(1 + 2)->Expect.toBe(3)

    // There are some nested modules for specific type
    expect([1, 2, 3])
    ->Expect.Array.toContain(2)

    expect("Hello, ReScript-Vitest!")
    ->Expect.String.toContain("ReScript")

  // You can specify timeout for a test suite
  })
})
