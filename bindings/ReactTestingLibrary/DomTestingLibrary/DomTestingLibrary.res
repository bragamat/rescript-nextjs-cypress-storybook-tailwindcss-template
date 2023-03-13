include DomTestingLibrary__Queries

module UserEvent = DomTestingLibrary__UserEvent

@module("@testing-library/dom")
external waitFor: (unit => 'element) => Js.Promise.t<'element> = "waitFor"

@module("@testing-library/dom")
external prettyDOM: (
  ~element: Js.undefined<'element>,
  ~maxLength: Js.undefined<float>,
  ~options: Js.undefined<string>,
) => string = "prettyDOM"
let prettyDOM = (~maxLength=?, ~options=?, element) =>
  prettyDOM(
    ~element=Js.Undefined.fromOption(element),
    ~maxLength=Js.Undefined.fromOption(maxLength),
    ~options=Js.Undefined.fromOption(options),
  )

let debugScreen = () => None->prettyDOM->Js.log

@val external screen: Dom.element = "document"

