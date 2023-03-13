type t
type eventInit
type options

type clickOptions = {
  skipHover: bool,
  clickCount: int,
}

type typeOptions = {
  delay: int,
  skipClick: bool,
  skipAutoClose: bool,
  initialSelectionStart: int,
  initialSelectionEnd: int,
}

type keyboardOptions = {delay: int}

@module("@testing-library/user-event")
external userEvent: t = "default"

@send
external _click: (t, 'element, Js.undefined<clickOptions>, Js.undefined<eventInit>) => unit =
  "click"
@send
let click = (~options=?, ~init=?, element) => {
  let options = options->Js.Undefined.fromOption
  let init = init->Js.Undefined.fromOption

  _click(userEvent, element, options, init)
}

@send external _type: (t, 'element, string, Js.undefined<typeOptions>) => unit = "type"
let type_ = (~options=?, element, text) => {
  let options = options->Js.Undefined.fromOption

  _type(userEvent, element, text, options)
}

@send external _keyboard: (t, string, Js.undefined<keyboardOptions>) => unit = "keyboard"
let keyboard = (~options=?, text) => {
  let options = options->Js.Undefined.fromOption

  _keyboard(userEvent, text, options)
}

type tabOptions = {
  shift: bool,
  focusTrab: Dom.element,
}

@send external _tab: (t, Js.undefined<tabOptions>) => unit = "tab"
let tab = (~options=?, ()) => {
  let options = options->Js.Undefined.fromOption
  _tab(userEvent, options)
}
