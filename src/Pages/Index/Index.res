let s = React.string

@react.component
let make = () => {
  <h1 className="text-3xl font-bold underline"> {"Hello world!"->s} </h1>
}
