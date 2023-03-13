open DomTestingLibrary__Queries__Options

type byTestIdOptions = {
  exact: Js.undefined<bool>,
  normalizer: Js.undefined<string => string>,
}

let makeByTestIdOptions = (~exact=?, ~normalizer=?, ()) => {
  {
    exact: exact->Js.Undefined.fromOption,
    normalizer: normalizer->Js.Undefined.fromOption,
  }
}

@module("@testing-library/dom")
external getByTestId: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTestIdOptions>,
) => 'element = "getByTestId"
let getByTestId = (~options=?, ~matcher, element) => getByTestId(element, ~matcher, ~options)

@module("@testing-library/dom")
external findByTestId: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTestIdOptions>,
) => Js.Promise.t<'element> = "findByTestId"
let findByTestId = (~options=?, ~matcher, element) => findByTestId(element, ~matcher, ~options)

@module("@testing-library/dom")
external getAllByTestId: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTestIdOptions>,
) => array<'element> = "getAllByTestId"
let getAllByTestId = (~options=?, ~matcher, element) => getAllByTestId(element, ~matcher, ~options)

@module("@testing-library/dom")
external queryAllByTestId: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTestIdOptions>,
) => array<'element> = "queryAllByTestId"
let queryAllByTestId = (~options=?, ~matcher, element) =>
  queryAllByTestId(element, ~matcher, ~options)

@module("@testing-library/dom")
external findAllByTestId: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTestIdOptions>,
) => Js.Promise.t<array<'element>> = "findAllByTestId"
let findAllByTestId = (~options=?, ~matcher, element) =>
  findAllByTestId(element, ~matcher, ~options)
