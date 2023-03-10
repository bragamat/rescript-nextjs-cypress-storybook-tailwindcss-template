module Html = Next.Document.Html
module Head = Next.Document.Head
module Main = Next.Document.Main
module NextScript = Next.Document.NextScript

@react.component
let default = () => {
  <Html className="dark">
    <Head />
    <body>
      <Main />
      <NextScript />
    </body>
  </Html>
}
