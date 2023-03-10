let s = React.string

@react.component
let make = () => {
  <nav>
  { "this is my nav" -> s}
  </nav>
}
