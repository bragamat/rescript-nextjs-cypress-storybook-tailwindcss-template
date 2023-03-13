open DomTestingLibrary__Queries__Options

type byTitleOptions = {
  exact: Js.undefined<bool>,
  normalizer: Js.undefined<string => string>,
}

let makeByTitleOptions = (~exact=?, ~normalizer=?, ()) => {
  {
    exact: exact->Js.Undefined.fromOption,
    normalizer: normalizer->Js.Undefined.fromOption,
  }
}

@module("@testing-library/dom")
external getByTitle: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTitleOptions>,
) => 'element = "getByTitle"
let getByTitle = (~options=?, ~matcher, element) => getByTitle(element, ~matcher, ~options)

@module("@testing-library/dom")
external findByTitle: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTitleOptions>,
) => Js.Promise.t<'element> = "findByTitle"
let findByTitle = (~options=?, ~matcher, element) => findByTitle(element, ~matcher, ~options)

@module("@testing-library/dom")
external getAllByTitle: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTitleOptions>,
) => array<'element> = "getAllByTitle"
let getAllByTitle = (~options=?, ~matcher, element) => getAllByTitle(element, ~matcher, ~options)

@module("@testing-library/dom")
external queryAllByTitle: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTitleOptions>,
) => array<'element> = "queryAllByTitle"
let queryAllByTitle = (~options=?, ~matcher, element) =>
  queryAllByTitle(element, ~matcher, ~options)

@module("@testing-library/dom")
external findAllByTitle: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byTitleOptions>,
) => Js.Promise.t<array<'element>> = "findAllByTitle"
let findAllByTitle = (~options=?, ~matcher, element) => findAllByTitle(element, ~matcher, ~options)
