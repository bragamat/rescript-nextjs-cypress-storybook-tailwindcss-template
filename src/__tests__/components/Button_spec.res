open Vitest
open Expect
open ReactTestingLibrary

describe("Button",_ => {
  beforeEach(_ => {
    <Button  label="Button"/> ->renderOnScreen
  })

  test("render Red option", _ => {
    screen
    ->getByRole(~matcher=#Str("option"), ~options=makeByRoleOptions(~name="Red", ()))
    ->expect
    ->toMatchSnapshot
  })

  test("render Green option",_ => {
    screen
    ->getByRole(~matcher=#Str("option"), ~options=makeByRoleOptions(~name="Green", ()))
    ->expect
    ->toMatchSnapshot
  })

  test("render Blue option", _ => {
    screen
    ->getByRole(~matcher=#Str("option"), ~options=makeByRoleOptions(~name="Blue", ()))
    ->expect
    ->toMatchSnapshot
  })
})
