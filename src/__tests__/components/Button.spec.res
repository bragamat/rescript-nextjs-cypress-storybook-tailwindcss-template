open Vitest
open Expect
open ReactTestingLibrary


module DummyComponent = {
  @react.component
  let make = () => {
    <div>
      <label> {React.string("Choose a color")} </label>
      <select>
        <option> {React.string("Red")} </option>
        <option> {React.string("Green")} </option>
        <option onClick={_ => Js.log("Blue")}> {React.string("Blue")} </option>
      </select>
    </div>
  }
}


describe("DummyComponent", () => {
  beforeEach(() => {
    <DummyComponent />->renderOnScreen
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
