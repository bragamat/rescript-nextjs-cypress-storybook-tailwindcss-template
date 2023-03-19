// import { Html, Head, Main, NextScript } from 'next/document'
external default: unit => React.element = "default"
module Html = {
  @module("next/document") @react.component
  external make: (~className: string=?, ~children: React.element) => React.element = "Html"
}

module Head = {
  @module("next/document") @react.component
  external make: (~children: option<React.element>=?) => React.element = "Head"
}

module Main = {
  @module("next/document") @react.component
  external make: unit => React.element = "Main"
}

module NextScript = {
  @module("next/document") @react.component
  external make: unit => React.element = "NextScript"
}
