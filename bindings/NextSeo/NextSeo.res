type image = {
  url: string,
  width: int,
  height: int,
  alt: string,
  type_: string,
}

type images = array<image>

type openGraph = {
  url: string,
  title: string,
  description: string,
  images: images,
  siteName: string
}

type twitter = {
  handle: string,
  site: string,
  cardType: string,
}

@module("next-seo") @react.component
external make: (
  ~title: string,
  ~description: string,
  ~canonical: string,
  ~openGraph: openGraph=?,
  ~twitter: twitter=?,
) => React.element = "NextSeo"
