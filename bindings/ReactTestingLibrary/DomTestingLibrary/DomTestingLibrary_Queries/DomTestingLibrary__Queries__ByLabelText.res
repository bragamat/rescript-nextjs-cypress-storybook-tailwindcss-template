open DomTestingLibrary__Queries__Options

type byLabelTextOptions = {
  selector: Js.undefined<string>,
  exact: Js.undefined<bool>,
  normalizer: Js.undefined<string => string>,
}

let makeByLabelTextOptions = (~selector=?, ~exact=?, ~normalizer=?, ()) => {
  {
    selector: selector->Js.Undefined.fromOption,
    exact: exact->Js.Undefined.fromOption,
    normalizer: normalizer->Js.Undefined.fromOption,
  }
}

@module("@testing-library/dom")
external getByLabelText: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byLabelTextOptions>,
) => 'element = "getByLabelText"
let getByLabelText = (~options=?, ~matcher, element) => getByLabelText(element, ~matcher, ~options)

@module("@testing-library/dom")
external findByLabelText: (
  'element,
  ~matcher: @unwrap
  [
    | #Func(textMatcher)
    | #RegExp(Js.Re.t)
    | #Str(string)
  ],
  ~options: option<byLabelTextOptions>,
) => Js.Promise.t<'element> = "findByLabelText"
let findByLabelText = (~options=?, ~matcher, element) =>
  findByLabelText(element, ~matcher, ~options)
