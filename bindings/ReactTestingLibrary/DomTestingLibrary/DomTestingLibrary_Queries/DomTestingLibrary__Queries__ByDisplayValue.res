open DomTestingLibrary__Queries__Options

type byDisplayValueOptions = {
  exact: Js.undefined<bool>,
  normalizer: Js.undefined<string => string>,
}

let makeByDisplayValueOptions = (~exact=?, ~normalizer=?, ()) => {
  {
    exact: exact->Js.Undefined.fromOption,
    normalizer: normalizer->Js.Undefined.fromOption,
  }
}

@module("@testing-library/dom")
external getByDisplayValue: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byDisplayValueOptions>,
) => 'element = "getByDisplayValue"
let getByDisplayValue = (~options=?, ~matcher, element) =>
  getByDisplayValue(element, ~matcher, ~options)

@module("@testing-library/dom")
external findByDisplayValue: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byDisplayValueOptions>,
) => Js.Promise.t<'element> = "findByDisplayValue"
let findByDisplayValue = (~options=?, ~matcher, element) =>
  findByDisplayValue(element, ~matcher, ~options)

@module("@testing-library/dom")
external getAllByDisplayValue: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byDisplayValueOptions>,
) => array<'element> = "getAllByDisplayValue"
let getAllByDisplayValue = (~options=?, ~matcher, element) =>
  getAllByDisplayValue(element, ~matcher, ~options)

@module("@testing-library/dom")
external queryAllByDisplayValue: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byDisplayValueOptions>,
) => array<'element> = "queryAllByDisplayValue"
let queryAllByDisplayValue = (~options=?, ~matcher, element) =>
  queryAllByDisplayValue(element, ~matcher, ~options)

@module("@testing-library/dom")
external findAllByDisplayValue: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byDisplayValueOptions>,
) => Js.Promise.t<array<'element>> = "findAllByDisplayValue"
let findAllByDisplayValue = (~options=?, ~matcher, element) =>
  findAllByDisplayValue(element, ~matcher, ~options)
