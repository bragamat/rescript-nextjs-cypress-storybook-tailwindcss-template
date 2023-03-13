type textMatcher = (string, Dom.element) => bool
type textMatch = [
  | #Func(textMatcher)
  | #RegExp(Js.Re.t)
  | #Str(string)
]
