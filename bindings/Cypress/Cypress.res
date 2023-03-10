
type function
type subject
type subjectValue

module Assertions = {
  type t = [
    | #haveAttr
    | #notHaveAttr
    | #haveProp
    | #notHaveProp
    | #haveCss
    | #notHaveCss
    | #haveData
    | #notHaveData
    | #haveClass
    | #notHaveClass
    | #haveId
    | #notHaveId
    | #haveHtml
    | #notHaveHtml
    | #haveText
    | #notHaveText
    | #haveValue
    | #notHaveValue
    | #beVisible
    | #notBeVisible
    | #beHidden
    | #notBeHidden
    | #beSelected
    | #notBeSelected
    | #beChecked
    | #notBeChecked
    | #haveFocus
    | #notBeFocused
    | #beEnabled
    | #beDisabled
    | #beEmpty
    | #notBeEmpty
    | #exist
    | #notExist
    | #match
    | #notMatch
    | #contain
    | #notContain
    | #haveDescendants
    | #notHaveDescendants
    | #beCalled
    | #notBeCalled
    | #haveCallCount
    | #notHaveCallCount
    | #beCalledOnce
    | #notBeCalledOnce
    | #beCalledTwice
    | #notBeCalledTwice
    | #beCalledThrice
    | #notBeCalledThrice
    | #beCalledBefore
    | #notBeCalledBefore
    | #beCalledAfter
    | #notBeCalledAfter
    | #beCalledWithNew
    | #notBeCalledWithNew
    | #alwaysBeCalledWithNew
    | #beCalledOn
    | #alwaysBeCalledOn
    | #beCalledWith
    | #alwaysBeCalledWith
    | #beCalledWithExactly
    | #alwaysBeCalledWithExactly
    | #beCalledWithMatch
    | #alwaysBeCalledWithMatch
    | #haveReturned
    | #haveAlwaysReturned
    | #haveThrown
    | #haveAlwaysThrown
    | #throw
    | #notThrow
    | #haveProperty
    | #notHaveProperty
    | #equal
    | #eq
    | #notEqual
    | #notEq
    | #deepEqual
    | #notDeepEqual
    | #deepInclude
    | #haveDeepMembers
    | #haveDeepKeys
    | #haveDeepProperty
    | #haveNestedProperty
    | #haveOrderedMembers
    | #notHaveOrderedMembers
    | #haveAnyKeys
    | #notHaveAnyKeys
    | #haveAllKeys
    | #notHaveAllKeys
    | #"include"
    | #notInclude
    | #includeNested
    | #includeKeys
    | #notIncludeKeys
    | #exist
    | #notExist
    | #beEmpty
    | #notBeEmpty
    | #haveLength
    | #notHaveLength
    | #beAbove
    | #beAtLeast
    | #beBelow
    | #beAtMost
    | #beWithin
    | #beCloseTo
    | #haveMembers
    | #beOneOf
    | #notBeOneOf
    | #beNull
    | #notBeNull
    | #beGt
    | #notBeGt
    | #beLt
    | #notBeLt
    | #beGte
    | #notBeGte
    | #beLte
    | #notBeLte
  ]

  let toValue = value =>
    switch value {
    | #haveAttr => "have.attr"
    | #notHaveAttr => "not.have.attr"
    | #haveProp => "have.prop"
    | #notHaveProp => "not.have.prop"
    | #haveCss => "have.css"
    | #notHaveCss => "not.have.css"
    | #haveData => "have.data"
    | #notHaveData => "not.have.data"
    | #haveClass => "have.class"
    | #notHaveClass => "not.have.class"
    | #haveId => "have.id"
    | #notHaveId => "not.have.id"
    | #haveHtml => "have.html"
    | #notHaveHtml => "not.have.html"
    | #haveText => "have.text"
    | #notHaveText => "not.have.text"
    | #haveValue => "have.value"
    | #notHaveValue => "not.have.value"
    | #beVisible => "be.visible"
    | #notBeVisible => "not.be.visible"
    | #beHidden => "be.hidden"
    | #notBeHidden => "not.be.hidden"
    | #beSelected => "be.selected"
    | #notBeSelected => "not.be.selected"
    | #beChecked => "be.checked"
    | #notBeChecked => "not.be.checked"
    | #haveFocus => "have.focus"
    | #notBeFocused => "not.be.focused"
    | #beEnabled => "be.enabled"
    | #beDisabled => "be.disabled"
    | #beEmpty => "be.empty"
    | #notBeEmpty => "not.be.empty"
    | #exist => "exist"
    | #notExist => "not.exist"
    | #match => "match"
    | #notMatch => "not.match"
    | #contain => "contain"
    | #notContain => "not.contain"
    | #haveDescendants => "have.descendants"
    | #notHaveDescendants => "not.have.descendants"
    | #beCalled => "be.called"
    | #notBeCalled => "not.be.called"
    | #haveCallCount => "have.callCount"
    | #notHaveCallCount => "not.have.callCount"
    | #beCalledOnce => "be.calledOnce"
    | #notBeCalledOnce => "not.be.calledOnce"
    | #beCalledTwice => "be.calledTwice"
    | #notBeCalledTwice => "not.be.calledTwice"
    | #beCalledThrice => "be.calledThrice"
    | #notBeCalledThrice => "not.be.calledThrice"
    | #beCalledBefore => "be.calledBefore"
    | #notBeCalledBefore => "not.be.calledBefore"
    | #beCalledAfter => "be.calledAfter"
    | #notBeCalledAfter => "not.be.calledAfter"
    | #beCalledWithNew => "be.calledWithNew"
    | #notBeCalledWithNew => "not.be.calledWithNew"
    | #alwaysBeCalledWithNew => "always.be.calledWithNew"
    | #beCalledOn => "be.calledOn"
    | #alwaysBeCalledOn => "always.be.calledOn"
    | #beCalledWith => "be.calledWith"
    | #alwaysBeCalledWith => "always.be.calledWith"
    | #beCalledWithExactly => "be.calledWithExactly"
    | #alwaysBeCalledWithExactly => "always.be.calledWithExactly"
    | #beCalledWithMatch => "be.calledWithMatch"
    | #alwaysBeCalledWithMatch => "always.be.calledWithMatch"
    | #haveReturned => "have.returned"
    | #haveAlwaysReturned => "have.always.returned"
    | #haveThrown => "have.thrown"
    | #haveAlwaysThrown => "have.always.thrown"
    | #throw => "throw"
    | #notThrow => "not.throw"
    | #haveProperty => "have.property"
    | #notHaveProperty => "not.have.property"
    | #equal => "equal"
    | #eq => "eq"
    | #notEq => "not.eq"
    | #notEqual => "not.eq"
    | #deepEqual => "deep.equal"
    | #notDeepEqual => "not.deep.equal"
    | #deepInclude => "deep.include"
    | #haveDeepMembers => "have.deep.members"
    | #haveDeepKeys => "have.deep.keys"
    | #haveDeepProperty => "have.deep.property"
    | #haveNestedProperty => "have.nested.property"
    | #includeNested => "include.nested"
    | #includeKeys => "include.keys"
    | #notIncludeKeys => "not.include.keys"
    | #haveOrderedMembers => "have.ordered.members"
    | #notHaveOrderedMembers => "not.have.ordered.members"
    | #haveAnyKeys => "have.any.keys"
    | #notHaveAnyKeys => "not.have.any.keys"
    | #haveAllKeys => "have.all.keys"
    | #notHaveAllKeys => "not.have.all.keys"
    | #"include" => "include"
    | #notInclude => "not.include"
    | #haveLength => "have.length"
    | #notHaveLength => "not.have.length"
    | #beAbove => "be.above"
    | #beAtLeast => "be.at.least"
    | #beBelow => "be.below"
    | #beAtMost => "be.at.most"
    | #beWithin => "be.within"
    | #beCloseTo => "be.close.to"
    | #haveMembers => "have.members"
    | #beOneOf => "be.oneOf"
    | #notBeOneOf => "not.be.oneOf"
    | #beNull => "be.null"
    | #notBeNull => "not.be.null"
    | #beGt => "be.gt"
    | #notBeGt => "not.be.gt"
    | #beLt => "be.lt"
    | #notBeLt => "not.be.lt"
    | #beGte => "be.gte"
    | #notBeGte => "not.be.gte"
    | #beLte => "be.lte"
    | #notBeLte => "not.be.lte"
    }
}

module Timeouts = {
  let defaultCommandTimeout = 4000
  let execTimeout = 60000
  let taskTimeout = 60000
  let pageLoadTimeout = 60000
  let requestTimeout = 5000
  let responseTimeout = 30000
}

module Acitonability = {
  let animationDistanceThreshold = 5
  let waitForAnimations = true
  let scrollBehavior = #top
}

module ScrollBehavior = {
  type t = [#top | #center | #bottom | #nearest | #"false"]

  let toValue = value =>
    switch value {
    | #top => "top"
    | #center => "center"
    | #bottom => "bottom"
    | #nearest => "nearest"
    | #"false" => "false"
    }
}

module BlurOptions = {
  type t = {
    log: bool,
    force: bool,
    timeout: int,
  }

  let make = (~log=true, ~force=false, ~timeout=Timeouts.defaultCommandTimeout, ()) => {
    log: log,
    force: force,
    timeout: timeout,
  }
}

module SelectOptions = BlurOptions

module CheckOptions = {
  type t = {
    animationDistanceThreshold: int,
    log: bool,
    force: bool,
    scrollBehavior: string,
    timeout: int,
    waitForAnimations: bool,
  }

  let make = (
    ~animationDistanceThreshold=Acitonability.animationDistanceThreshold,
    ~log=true,
    ~force=false,
    ~scrollBehavior=Acitonability.scrollBehavior,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~waitForAnimations=Acitonability.waitForAnimations,
    (),
  ) => {
    animationDistanceThreshold: animationDistanceThreshold,
    force: force,
    log: log,
    scrollBehavior: ScrollBehavior.toValue(scrollBehavior),
    timeout: timeout,
    waitForAnimations: waitForAnimations,
  }
}

module ClearOptions = {
  type t = {
    animationDistanceThreshold: int,
    force: bool,
    log: bool,
    scrollBehavior: ScrollBehavior.t,
    timeout: int,
    waitForAnimations: bool,
  }

  let make = (
    ~animationDistanceThreshold=Acitonability.animationDistanceThreshold,
    ~force=false,
    ~log=true,
    ~scrollBehavior=Acitonability.scrollBehavior,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~waitForAnimations=Acitonability.waitForAnimations,
    (),
  ) => {
    animationDistanceThreshold: animationDistanceThreshold,
    force: force,
    log: log,
    scrollBehavior: scrollBehavior,
    timeout: timeout,
    waitForAnimations: waitForAnimations,
  }
}

module ChildrenOptions = {
  type t = {
    log: bool,
    timeout: int,
  }
  let make = (~log=true, ~timeout=Timeouts.defaultCommandTimeout, ()) => {
    log: log,
    timeout: timeout,
  }
}

module CookieOptions = ChildrenOptions

module ClosestOptions = ChildrenOptions

module DocumentOptions = ChildrenOptions

module EqOptions = ChildrenOptions

module FilterOptions = ChildrenOptions

module FirstOptions = ChildrenOptions

module FocusOptions = ChildrenOptions

module HashOptions = ChildrenOptions

module InvokeOptions = ChildrenOptions

module ReloadOptions = ChildrenOptions

module ItsOptions = ChildrenOptions

module WrapOptions = ChildrenOptions

module LastOptions = ChildrenOptions

module LocationOptions = ChildrenOptions

module NextOptions = ChildrenOptions

module NotOptions = ChildrenOptions

module ParentOptions = ChildrenOptions

module ReadFileOptions = ChildrenOptions

module RootOptions = ChildrenOptions

module SiblingsOptions = ChildrenOptions

module SubmitOptions = ChildrenOptions

module TitleOptions = ChildrenOptions

module UrlOptions = ChildrenOptions

module WindowOptions = ChildrenOptions

module GoOptions = {
  type t = {
    log: bool,
    timeout: int,
  }
  let make = (~log=true, ~timeout=Timeouts.pageLoadTimeout, ()) => {
    log: log,
    timeout: timeout,
  }
}

module TaskOptions = {
  type t = {
    log: bool,
    timeout: int,
  }
  let make = (~log=true, ~timeout=Timeouts.taskTimeout, ()) => {
    log: log,
    timeout: timeout,
  }
}

module LocalStorageOptions = {
  type t = {log: bool}

  let make = (~log=true, ()) => {
    log: log,
  }
}

module ClockOptions = LocalStorageOptions

module DebugOptions = LocalStorageOptions

module PauseOptions = LocalStorageOptions

module PrevOptions = LocalStorageOptions

module TickOptions = LocalStorageOptions

module ViewportOptions = LocalStorageOptions

module WithinOptions = LocalStorageOptions

module FixtureOptions = {
  type t = {timeout: int}

  let make = (~timeout=Timeouts.responseTimeout, ()) => {
    timeout: timeout,
  }
}

module ContainsOptions = {
  type t = {
    matchCase: bool,
    log: bool,
    timeout: int,
    includeShadowDom: bool,
  }
  // TODO: Bind includeShadowDom to global value
  let make = (
    ~matchCase=true,
    ~log=true,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~includeShadowDom=false,
    (),
  ) => {
    matchCase: matchCase,
    log: log,
    timeout: timeout,
    includeShadowDom: includeShadowDom,
  }
}

module ExecOptions = {
  type t<'env> = {
    log: bool,
    env: 'env,
    failOnNonZeroExit: bool,
    timeout: int,
  }

  let make = (
    ~log=true,
    ~env=Js.Dict.empty(),
    ~failOnNonZeroExit=true,
    ~timeout=Timeouts.execTimeout,
    (),
  ) => {
    log: log,
    env: env,
    failOnNonZeroExit: failOnNonZeroExit,
    timeout: timeout,
  }
}

module FindOptions = {
  type t = {
    log: bool,
    timeout: int,
    includeShadowDom: bool,
  }

  // TODO: Bind includeShadowDom to global value
  let make = (~log=true, ~timeout=Timeouts.defaultCommandTimeout, ~includeShadowDom=false, ()) => {
    log: log,
    timeout: timeout,
    includeShadowDom: includeShadowDom,
  }
}

module GetOptions = {
  type t<'element> = {
    log: bool,
    timeout: int,
    withinSubject: Js.null<'element>,
    includeShadowDom: bool,
  }

  // TODO: Bind includeShadowDom to global value
  let make = (
    ~log=true,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~withinSubject=Js.null,
    ~includeShadowDom=false,
    (),
  ) => {
    log: log,
    withinSubject: withinSubject,
    timeout: timeout,
    includeShadowDom: includeShadowDom,
  }
}

module HTTPRequest = {
  type t = [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]

  let toValue = value =>
    switch value {
    | #get => "GET"
    | #head => "HEAD"
    | #post => "POST"
    | #put => "PUT"
    | #delete => "DELETE"
    | #connect => "CONNECT"
    | #options => "OPTIONS"
    | #trace => "TRACE"
    | #patch => "PATCH"
    }
}

module ClickOptions = {
  type t = {
    altKey: bool,
    animationDistanceThreshold: int,
    ctrlKey: bool,
    log: bool,
    force: bool,
    metaKey: bool,
    multiple: bool,
    scrollBehavior: string,
    shiftKey: bool,
    timeout: int,
    waitForAnimations: bool,
  }

  let make = (
    ~altKey=false,
    ~animationDistanceThreshold=Acitonability.animationDistanceThreshold,
    ~ctrlKey=false,
    ~log=true,
    ~force=false,
    ~metaKey=false,
    ~multiple=false,
    ~scrollBehavior=Acitonability.scrollBehavior,
    ~shiftKey=false,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~waitForAnimations=Acitonability.waitForAnimations,
    (),
  ) => {
    altKey: altKey,
    animationDistanceThreshold: animationDistanceThreshold,
    ctrlKey: ctrlKey,
    log: log,
    force: force,
    metaKey: metaKey,
    multiple: multiple,
    scrollBehavior: ScrollBehavior.toValue(scrollBehavior),
    shiftKey: shiftKey,
    timeout: timeout,
    waitForAnimations: waitForAnimations,
  }
}

module SameSite = {
  type t = [#lax | #strict | #no_restriction | #undefined]

  let toValue = value =>
    switch value {
    | #lax => Js.Undefined.return("lax")
    | #strict => Js.Undefined.return("strict")
    | #no_restriction => Js.Undefined.return("no_restriction")
    | #undefined => Js.undefined
    }
}

module SetCookieOptions = {
  type t = {
    log: bool,
    domain: string,
    expiry: float,
    httpOnly: bool,
    path: string,
    secure: bool,
    timeout: int,
    sameSite: Js.undefined<string>,
  }

  // INFO: default expiry 20 years from now in seconds: 60*60*24*365*20= 630720000
  let make = (
    ~log=true,
    ~domain="http://localhost:4176",
    ~expiry=630720000.,
    ~httpOnly=false,
    ~path="/",
    ~secure=false,
    ~timeout=30000,
    ~sameSite=#undefined,
    (),
  ) => {
    {
      log: log,
      domain: domain,
      expiry: expiry,
      httpOnly: httpOnly,
      path: path,
      secure: secure,
      timeout: timeout,
      sameSite: SameSite.toValue(sameSite),
    }
  }
}

type clipObject = {
  x: int,
  y: int,
  width: int,
  height: int,
}

module ScreenshotOptions = {
  module Capture = {
    type t = [#viewport | #fullPage | #runner]

    let toValue = val =>
      switch val {
      | #viewport => "viewport"
      | #fullPage => "fullPage"
      | #runner => "runner"
      }
  }

  type t = {
    log: bool,
    blackout: array<string>,
    capture: string,
    clip: Js.null<clipObject>,
    disableTimersAndAnimations: bool,
    padding: Js.null<int>,
    scale: bool,
    timeout: int,
    onBeforeScreenshot: Js.null<unit => unit>,
    onAfterScreenshot: Js.null<unit => unit>,
  }

  let createScreenshotOptionsObject = (
    ~log=true,
    ~blackout=[],
    ~capture: Capture.t=#fullPage,
    ~clip=Js.null,
    ~disableTimersAndAnimations=true,
    ~padding=Js.null,
    ~scale=false,
    ~timeout=30000,
    ~onBeforeScreenshot=Js.null,
    ~onAfterScreenshot=Js.null,
    (),
  ) => {
    log: log,
    blackout: blackout,
    capture: Capture.toValue(capture),
    clip: clip,
    disableTimersAndAnimations: disableTimersAndAnimations,
    padding: padding,
    scale: scale,
    timeout: timeout,
    onBeforeScreenshot: onBeforeScreenshot,
    onAfterScreenshot: onAfterScreenshot,
  }
}

module ScreenshotDefaults = {
  type t = {
    blackout: array<string>,
    capture: string,
    clip: Js.null<clipObject>,
    disableTimersAndAnimations: bool,
    scale: bool,
    screenshotOnRunFailure: bool,
    onBeforeScreenshot: Js.null<unit => unit>,
    onAfterScreenshot: Js.null<unit => unit>,
  }

  let make = (
    ~blackout=[],
    ~capture="fullPage",
    ~clip=Js.null,
    ~disableTimersAndAnimations=true,
    ~scale=false,
    ~screenshotOnRunFailure=true,
    ~onBeforeScreenshot=Js.null,
    ~onAfterScreenshot=Js.null,
    (),
  ) => {
    blackout: blackout,
    capture: capture,
    clip: clip,
    disableTimersAndAnimations: disableTimersAndAnimations,
    scale: scale,
    screenshotOnRunFailure: screenshotOnRunFailure,
    onBeforeScreenshot: onBeforeScreenshot,
    onAfterScreenshot: onAfterScreenshot,
  }
}

module Bindings = {
  @val external describe: (. string, (. unit) => unit) => unit = "describe"
  @val external describeOnly: (. string, (. unit) => unit) => unit = "describe.only"
  @val external it: (. string, (. unit) => unit) => unit = "it"
  @val external itOnly: (. string, (. unit) => unit) => unit = "it.only"
  @val external afterEach: (. (. unit) => unit) => unit = "afterEach"
  @val external beforeEach: (. (. unit) => unit) => unit = "beforeEach"
  @val external context: (. string, (. unit) => unit) => unit = "context"
  @val external expectRaw: (. 'a) => 'a = "expect"
  @val external expectRawWithDescription: (. 'a, string) => 'a = "expect"
}

let describe = (string, function) => Bindings.describe(.string, (. ()) => function())
let describeOnly = (string, function) => Bindings.describeOnly(.string, (. ()) => function())
let it = (string, function) => Bindings.it(.string, (. ()) => function())
let itOnly = (string, function) => Bindings.itOnly(.string, (. ()) => function())
let context = (string, function) => Bindings.context(.string, (. ()) => function())
let beforeEach = function => Bindings.beforeEach(.(. ()) => function())
let afterEach = function => Bindings.afterEach(.(. ()) => function())

let expect = rule => Bindings.expectRaw(. rule)
let expectWithDescription = (rule, description) =>
  Bindings.expectRawWithDescription(. rule, description)

// NOTE: Wrap value into the chain? Needs inspection
@scope("cy") @val external cyWrap: 'a => 'element = "wrap"
@scope("cy") @val external cyWrapWithOptions: ('a, WrapOptions.t) => 'a = "wrap"

@send @variadic
external shouldRaw: ('element, string, array<'a>) => unit = "should"
@send @variadic
external shouldRawP: ('element, string, array<'a>) => 'element = "should"

let should = (element, chainer, values: array<'a>) =>
  shouldRaw(element, Assertions.toValue(chainer), values)
let shouldP = (element, chainer, values: array<'a>) =>
  shouldRawP(element, Assertions.toValue(chainer), values)

type response<'a> = {
  status: int,
  body: 'a,
}

@send external shouldWithResponse: ('element, response<'a> => unit) => unit = "should"
@send external shouldWithResponseP: ('element, response<'a> => unit) => 'element = "should"

type reqObj<'a, 'b> = {
  body: 'a,
  headers: 'b,
  httpVersion: string,
  method: Js.null<string>,
  url: string,
}
type resObj<'a, 'b> = {
  body: 'a,
  headers: 'b,
  httpVersion: string,
  method: Js.null<string>,
  statusCode: int,
  statusMessage: string,
  url: string,
}

type response2<'a, 'b, 'c, 'd> = {
  request: reqObj<'a, 'b>,
  response: resObj<'c, 'd>,
}

@send
external shouldWithPostResponse: ('element, response2<'a, 'b, 'c, 'd> => unit) => unit = "should"
@send
external shouldWithPostResponseP: ('element, response2<'a, 'b, 'c, 'd> => unit) => 'element =
  "should"

@send external toEqual: ('element, 'a) => unit = "equal"
@scope("not") @send external notToEqual: ('element, 'a) => unit = "equal"

// NOTE: Should Assertions -----------------------------------------------------------

let shouldHaveDeepMembers = (element, any: 'a) => should(element, #haveDeepMembers, [any])
let shouldHaveDeepMembersP = (element, any: 'a) => shouldP(element, #haveDeepMembers, [any])

let andHaveDeepMembers = shouldHaveDeepMembers
let andHaveDeepMembersP = shouldHaveDeepMembersP

@scope(("to", "have", "deep")) @send
external toHaveDeepMembers: ('element, 'any) => unit = "members"
@scope(("to", "have", "deep")) @send
external toHaveDeepMembersP: ('element, 'any) => 'element = "members"

let shouldHaveMembers = (element, any: 'a) => should(element, #haveMembers, [any])
let shouldHaveMembersP = (element, any: 'a) => shouldP(element, #haveMembers, [any])
let shouldNotHaveMembers = (element, any: 'a) => should(element, #haveMembers, [any])
let shouldNotHaveMembersP = (element, any: 'a) => shouldP(element, #haveMembers, [any])

let andHaveMembers = shouldHaveMembers
let andHaveMembersP = shouldHaveMembersP
let andNotHaveMembers = shouldNotHaveMembers
let andNotHaveMembersP = shouldNotHaveMembersP

@scope(("to", "have")) @send external toHaveMembers: ('element, 'any) => unit = "members"
@scope(("to", "have")) @send external toHaveMembersP: ('element, 'any) => 'element = "members"
@scope(("not", "to", "have")) @send external notToHaveMembers: ('element, 'any) => unit = "members"
@scope(("not", "to", "have")) @send
external notToHaveMembersP: ('element, 'any) => 'element = "members"

let shouldHaveLength = (element, int: int) => should(element, #haveLength, [int])
let shouldHaveLengthP = (element, int: int) => shouldP(element, #haveLength, [int])
let shouldNotHaveLength = (element, int: int) => should(element, #notHaveLength, [int])
let shouldNotHaveLengthP = (element, int: int) => shouldP(element, #notHaveLength, [int])

let andHaveLength = shouldHaveLength
let andHaveLengthP = shouldHaveLengthP
let andNotHaveLength = shouldNotHaveLength
let andNotHaveLengthP = shouldNotHaveLengthP

@scope(("to", "have")) @send external toHaveLength: ('element, int) => unit = "length"
@scope(("to", "have")) @send external toHaveLengthP: ('element, int) => 'element = "length"
@scope(("not", "to", "have")) @send external notToHaveLength: ('element, int) => unit = "length"
@scope(("not", "to", "have")) @send
external notToHaveLengthP: ('element, int) => 'element = "length"

let shouldHaveText = (element, string: string) => should(element, #haveText, [string])
let shouldHaveTextP = (element, string: string) => shouldP(element, #haveText, [string])
let shouldNotHaveText = (element, string: string) => should(element, #notHaveText, [string])
let shouldNotHaveTextP = (element, string: string) => shouldP(element, #notHaveText, [string])

let andHaveText = shouldHaveText
let andHaveTextP = shouldHaveTextP
let andNotHaveText = shouldNotHaveText
let andNotHaveTextP = shouldNotHaveTextP

@scope(("to", "have")) @send external toHaveText: ('element, string) => unit = "text"
@scope(("to", "have")) @send external toHaveTextP: ('element, string) => 'element = "text"
@scope(("not", "to", "have")) @send external notToHaveText: ('element, string) => unit = "text"
@scope(("not", "to", "have")) @send external notToHaveTextP: ('element, string) => 'element = "text"

// NOTE: We can't pass (property, value) as a tuple - it's causing errors.
let shouldHavePropertyWithValue = (element, property: string, value: string) =>
  should(element, #haveProperty, [property, value])
let shouldHavePropertyWithValueP = (element, property: string, value: string) =>
  shouldP(element, #haveProperty, [property, value])
let shouldNotHavePropertyWithValue = (element, property: string, value: string) =>
  should(element, #notHaveProperty, [property, value])
let shouldNotHavePropertyWithValueP = (element, property: string, value: string) =>
  shouldP(element, #notHaveProperty, [property, value])

let andHavePropertyWithValue = shouldHavePropertyWithValue
let andHavePropertyWithValueP = shouldHavePropertyWithValueP
let andNotHavePropertyWithValue = shouldNotHavePropertyWithValue
let andNotHavePropertyWithValueP = shouldNotHavePropertyWithValueP

@scope(("to", "have")) @send
external toHavePropertyWithValue: ('element, string, 'value) => unit = "property"
@scope(("to", "have")) @send
external toHavePropertyWithValueP: ('element, string, 'value) => 'element = "property"
@scope(("not", "to", "have")) @send
external notToHavePropertyWithValue: ('element, string, 'value) => unit = "property"
@scope(("not", "to", "have")) @send
external notToHavePropertyWithValueP: ('element, string, 'value) => 'element = "property"

let shouldHaveProperty = (element, property: string) => should(element, #haveProperty, [property])
let shouldHavePropertyP = (element, property: string) => shouldP(element, #haveProperty, [property])
let shouldNotHaveProperty = (element, property: string) =>
  should(element, #notHaveProperty, [property])
let shouldNotHavePropertyP = (element, property: string) =>
  shouldP(element, #notHaveProperty, [property])

let andHaveProperty = shouldHaveProperty
let andHavePropertyP = shouldHavePropertyP
let andNotHaveProperty = shouldNotHaveProperty
let andNotHavePropertyP = shouldNotHavePropertyP

@scope(("to", "have")) @send
external toHaveProperty: ('element, string) => unit = "property"
@scope(("to", "have")) @send
external toHavePropertyP: ('element, string) => 'element = "property"
@scope(("not", "to", "have")) @send
external notToHaveProperty: ('element, string) => unit = "property"
@scope(("not", "to", "have")) @send
external notToHavePropertyP: ('element, string) => 'element = "property"

let shouldHaveClass = (element, string: string) => should(element, #haveClass, [string])
let shouldHaveClassP = (element, string: string) => shouldP(element, #haveClass, [string])
let shouldNotHaveClass = (element, string: string) => should(element, #notHaveClass, [string])
let shouldNotHaveClassP = (element, string: string) => shouldP(element, #notHaveClass, [string])

let andHaveClass = shouldHaveClass
let andHaveClassP = shouldHaveClassP
let andNotHaveClass = shouldNotHaveClass
let andNotHaveClassP = shouldNotHaveClassP

@scope(("to", "have")) @send
external toHaveClass: ('element, string) => unit = "class"
@scope(("to", "have")) @send
external toHaveClassP: ('element, string) => 'element = "class"
@scope(("not", "to", "have")) @send
external notToHaveClass: ('element, string) => unit = "class"
@scope(("not", "to", "have")) @send
external notToHaveClassP: ('element, string) => 'element = "class"

let shouldHaveCss = (element, property: string, value: string) =>
  should(element, #haveCss, [property, value])
let shouldHaveCssP = (element, property: string, value: string) =>
  shouldP(element, #haveCss, [property, value])
let shouldNotHaveCss = (element, property: string, value: string) =>
  should(element, #notHaveCss, [property, value])
let shouldNotHaveCssP = (element, property: string, value: string) =>
  shouldP(element, #notHaveCss, [property, value])

let andHaveCss = shouldHaveCss
let andHaveCssP = shouldHaveCssP
let andNotHaveCss = shouldNotHaveCss
let andNotHaveCssP = shouldNotHaveCssP

@scope(("to", "have")) @send
external toHaveCss: ('element, string, string) => unit = "css"
@scope(("to", "have")) @send
external toHaveCssP: ('element, string, string) => 'element = "css"
@scope(("not", "to", "have")) @send
external notToHaveCss: ('element, string, string) => unit = "css"
@scope(("not", "to", "have")) @send
external notToHaveCssP: ('element, string, string) => 'element = "css"

let shouldHaveValue = (element, string: string) => should(element, #haveValue, [string])
let shouldHaveValueP = (element, string: string) => shouldP(element, #haveValue, [string])
let shouldNotHaveValue = (element, string: string) => should(element, #notHaveValue, [string])
let shouldNotHaveValueP = (element, string: string) => shouldP(element, #notHaveValue, [string])

let andHaveValue = shouldHaveValue
let andHaveValueP = shouldHaveValueP
let andNotHaveValue = shouldNotHaveValue
let andNotHaveValueP = shouldNotHaveValueP

@scope(("to", "have")) @send
external toHaveValue: ('element, string) => unit = "value"
@scope(("to", "have")) @send
external toHaveValueP: ('element, string) => 'element = "value"
@scope(("not", "to", "have")) @send
external notToHaveValue: ('element, string) => unit = "value"
@scope(("not", "to", "have")) @send
external notToHaveValueP: ('element, string) => 'element = "value"

let shouldHaveId = (element, string: string) => should(element, #haveId, [string])
let shouldHaveIdP = (element, string: string) => shouldP(element, #haveId, [string])
let shouldNotHaveId = (element, string: string) => should(element, #notHaveId, [string])
let shouldNotHaveIdP = (element, string: string) => shouldP(element, #notHaveId, [string])

let andHaveId = shouldHaveId
let andHaveIdP = shouldHaveIdP
let andNotHaveId = shouldNotHaveId
let andNotHaveIdP = shouldNotHaveIdP

@scope(("to", "have")) @send
external toHaveId: ('element, string) => unit = "id"
@scope(("to", "have")) @send
external toHaveIdP: ('element, string) => 'element = "id"
@scope(("not", "to", "have")) @send
external notToHaveId: ('element, string) => unit = "id"
@scope(("not", "to", "have")) @send
external notToHaveIdP: ('element, string) => 'element = "id"

let shouldHaveAttr = (element, attr: string) => should(element, #haveAttr, [attr])
let shouldHaveAttrP = (element, attr: string) => shouldP(element, #haveAttr, [attr])
let shouldHaveAttrWithValue = (element, attr: string, value: string) =>
  should(element, #haveAttr, [attr, value])
let shouldHaveAttrWithValueP = (element, attr: string, value: string) =>
  shouldP(element, #haveAttr, [attr, value])

let shouldNotHaveAttr = (element, attr: string) => should(element, #notHaveAttr, [attr])
let shouldNotHaveAttrP = (element, attr: string) => shouldP(element, #notHaveAttr, [attr])
let shouldNotHaveAttrWithValue = (element, attr: string, value: string) =>
  should(element, #notHaveAttr, [attr, value])
let shouldNotHaveAttrWithValueP = (element, attr: string, value: string) =>
  shouldP(element, #notHaveAttr, [attr, value])

let andHaveAttr = shouldHaveAttr
let andHaveAttrP = shouldHaveAttrP
let andHaveAttrWithValue = shouldHaveAttrWithValue
let andHaveAttrWithValueP = shouldHaveAttrWithValueP

let andNotHaveAttr = shouldNotHaveAttr
let andNotHaveAttrP = shouldNotHaveAttrP
let andNotHaveAttrWithValue = shouldNotHaveAttrWithValue
let andNotHaveAttrWithValueP = shouldNotHaveAttrWithValueP

@scope(("to", "have")) @send
external toHaveAttr: ('element, string) => unit = "attr"
@scope(("to", "have")) @send
external toHaveAttrP: ('element, string) => 'element = "attr"
@scope(("not", "to", "have")) @send
external notToHaveAttr: ('element, string) => unit = "attr"
@scope(("not", "to", "have")) @send
external notToHaveAttrP: ('element, string) => 'element = "attr"

@scope(("to", "have")) @send
external toHaveAttrWithValue: ('element, string, string) => unit = "attr"
@scope(("to", "have")) @send
external toHaveAttrWithValueP: ('element, string, string) => 'element = "attr"
@scope(("not", "to", "have")) @send
external notToHaveAttrWithValue: ('element, string, string) => unit = "attr"
@scope(("not", "to", "have")) @send
external notToHaveAttrWithValueP: ('element, string, string) => 'element = "attr"

let shouldContain = (element, anyEl) => should(element, #contain, [anyEl])
let shouldContainP = (element, anyEl) => shouldP(element, #contain, [anyEl])
let shouldNotContain = (element, anyEl) => should(element, #notContain, [anyEl])
let shouldNotContainP = (element, anyEl) => shouldP(element, #notContain, [anyEl])

let andContain = shouldContain
let andContainP = shouldContainP
let andNotContain = shouldNotContain
let andNotContainP = shouldNotContainP

@scope("to") @send
external toContain: ('element, string, string) => unit = "contain"
@scope("to") @send
external toContainP: ('element, string, string) => 'element = "contain"
@scope(("not", "to")) @send
external notContain: ('element, string, string) => unit = "contain"
@scope(("not", "to")) @send
external notContainP: ('element, string, string) => 'element = "contain"

let shouldExist = element => should(element, #exist, [()])
let shouldExistP = element => shouldP(element, #exist, [()])
let shouldNotExist = element => should(element, #notExist, [()])
let shouldNotExistP = element => shouldP(element, #notExist, [()])

let andExist = shouldExist
let andExistP = shouldExistP
let andNotExist = shouldNotExist
let andNotExistP = shouldNotExistP

@scope("to") @send
external toExist: ('element, unit) => unit = "exist"
@scope("to") @send
external toExistP: ('element, unit) => 'element = "exist"
@scope(("not", "to")) @send
external notToExist: ('element, unit) => unit = "exist"
@scope(("not", "to")) @send
external notToExistP: ('element, unit) => 'element = "exist"

let shouldBeHidden = element => should(element, #beHidden, [()])
let shouldBeHiddenP = element => shouldP(element, #beHidden, [()])
let shouldNotBeHidden = element => should(element, #notBeHidden, [()])
let shouldNotBeHiddenP = element => shouldP(element, #notBeHidden, [()])

let andBeHidden = shouldBeHidden
let andBeHiddenP = shouldBeHiddenP
let andNotBeHidden = shouldNotBeHidden
let andNotBeHiddenP = shouldNotBeHiddenP

@scope(("to", "be")) @send
external toBeHidden: ('element, unit) => unit = "hidden"
@scope(("to", "be")) @send
external toBeHiddenP: ('element, unit) => 'element = "hidden"
@scope(("not", "to", "be")) @send
external notToBeHidden: ('element, unit) => unit = "hidden"
@scope(("not", "to", "be")) @send
external notToBeHiddenP: ('element, unit) => 'element = "hidden"

let shouldBeOneOf = (element, array: array<'a>) => should(element, #beOneOf, [array])
let shouldBeOneOfP = (element, array: array<'a>) => shouldP(element, #beOneOf, [array])
let shouldNotBeOneOf = (element, array: array<'a>) => should(element, #notBeOneOf, [array])
let shouldNotBeOneOfP = (element, array: array<'a>) => shouldP(element, #notBeOneOf, [array])

let andBeOneOf = shouldBeOneOf
let andBeOneOfP = shouldBeOneOfP
let andNotBeOneOf = shouldNotBeOneOf
let andNotBeOneOfP = shouldNotBeOneOfP

@scope(("to", "be")) @send
external toBeOneOf: ('element, unit) => unit = "oneOf"
@scope(("to", "be")) @send
external toBeOneOfP: ('element, unit) => 'element = "oneOf"
@scope(("not", "to", "be")) @send
external notToBeOneOf: ('element, unit) => unit = "oneOf"
@scope(("not", "to", "be")) @send
external notToBeOneOfP: ('element, unit) => 'element = "oneOf"

let shouldBeVisible = element => should(element, #beVisible, [()])
let shouldBeVisibleP = element => shouldP(element, #beVisible, [()])
let shouldNotBeVisible = element => should(element, #notBeVisible, [()])
let shouldNotBeVisibleP = element => shouldP(element, #notBeVisible, [()])

let andBeVisible = shouldBeVisible
let andBeVisibleP = shouldBeVisibleP
let andNotBeVisible = shouldNotBeVisible
let andNotBeVisibleP = shouldNotBeVisibleP

@scope(("to", "be")) @send
external toBeVisible: ('element, unit) => unit = "visible"
@scope(("to", "be")) @send
external toBeVisibleP: ('element, unit) => 'element = "visible"
@scope(("not", "to", "be")) @send
external notToBeVisible: ('element, unit) => unit = "visible"
@scope(("not", "to", "be")) @send
external notToBeVisibleP: ('element, unit) => 'element = "visible"

let shouldBeChecked = element => should(element, #beChecked, [()])
let shouldBeCheckedP = element => shouldP(element, #beChecked, [()])
let shouldNotBeChecked = element => should(element, #notBeChecked, [()])
let shouldNotBeCheckedP = element => shouldP(element, #notBeChecked, [()])

let andBeChecked = shouldBeChecked
let andBeCheckedP = shouldBeCheckedP
let andNotBeChecked = shouldNotBeChecked
let andNotBeCheckedP = shouldNotBeCheckedP

@scope(("to", "be")) @send
external toBeChecked: ('element, unit) => unit = "checked"
@scope(("to", "be")) @send
external toBeCheckedP: ('element, unit) => 'element = "checked"
@scope(("not", "to", "be")) @send
external notToBeChecked: ('element, unit) => unit = "checked"
@scope(("not", "to", "be")) @send
external notToBeCheckedP: ('element, unit) => 'element = "checked"

let shouldBeEmpty = element => should(element, #beEmpty, [()])
let shouldBeEmptyP = element => shouldP(element, #beEmpty, [()])
let shouldNotBeEmpty = element => should(element, #notBeEmpty, [()])
let shouldNotBeEmptyP = element => shouldP(element, #notBeEmpty, [()])

let andBeEmpty = shouldBeEmpty
let andBeEmptyP = shouldBeEmptyP
let andNotBeEmpty = shouldNotBeEmpty
let andNotBeEmptyP = shouldNotBeEmptyP

@scope(("to", "be")) @send
external toBeEmpty: ('element, unit) => unit = "empty"
@scope(("to", "be")) @send
external toBeEmptyP: ('element, unit) => 'element = "empty"
@scope(("not", "to", "be")) @send
external notToBeEmpty: ('element, unit) => unit = "empty"
@scope(("not", "to", "be")) @send
external notToBeEmptyP: ('element, unit) => 'element = "empty"

let shouldBeNull = element => should(element, #beNull, [()])
let shouldBeNullP = element => shouldP(element, #beNull, [()])
let shouldNotBeNull = element => should(element, #notBeNull, [()])
let shouldNotBeNullP = element => shouldP(element, #notBeNull, [()])

let andBeNull = shouldBeNull
let andBeNullP = shouldBeNullP
let andNotBeNull = shouldNotBeNull
let andNotBeNullP = shouldNotBeNullP

@scope(("to", "be")) @send
external toBeNull: ('element, unit) => unit = "null"
@scope(("to", "be")) @send
external toBeNullP: ('element, unit) => 'element = "null"
@scope(("not", "to", "be")) @send
external notToBeNull: ('element, unit) => unit = "null"
@scope(("not", "to", "be")) @send
external notToBeNullP: ('element, unit) => 'element = "null"

let shouldDeepEqual = (element, any: 'a) => should(element, #deepEqual, [any])
let shouldDeepEqualP = (element, any: 'a) => shouldP(element, #deepEqual, [any])
let shouldNotDeepEqual = (element, any: 'a) => should(element, #notDeepEqual, [any])
let shouldNotDeepEqualP = (element, any: 'a) => shouldP(element, #notDeepEqual, [any])

let andDeepEqual = shouldDeepEqual
let andDeepEqualP = shouldDeepEqualP
let andNotDeepEqual = shouldNotDeepEqual
let andNotDeepEqualP = shouldNotDeepEqualP

@scope(("to", "deep")) @send external toDeepEqual: ('element, 'any) => unit = "equal"
@scope(("to", "deep")) @send external toDeepEqualP: ('element, 'any) => 'element = "equal"
@scope(("not", "to", "deep")) @send external notToDeepEqual: ('element, 'any) => unit = "equal"
@scope(("not", "to", "deep")) @send external notToDeepEqualP: ('element, 'any) => 'element = "equal"

let shouldInclude = (element, any: 'a) => should(element, #"include", [any])
let shouldIncludeP = (element, any: 'a) => shouldP(element, #"include", [any])
let shouldNotInclude = (element, any: 'a) => should(element, #notInclude, [any])
let shouldNotIncludeP = (element, any: 'a) => shouldP(element, #notInclude, [any])

let andInclude = shouldInclude
let andIncludeP = shouldIncludeP
let andNotInclude = shouldNotInclude
let andNotIncludeP = shouldNotIncludeP

@scope("to") @send external toInclude: ('element, 'any) => unit = "include"
@scope("to") @send external toIncludeP: ('element, 'any) => 'element = "include"
@scope(("not", "to")) @send external notToInclude: ('element, 'any) => unit = "include"
@scope(("not", "to")) @send external notToIncludeP: ('element, 'any) => 'element = "include"

let shouldDeepInclude = (element, any: 'a) => should(element, #deepInclude, [any])
let shouldDeepIncludeP = (element, any: 'a) => shouldP(element, #deepInclude, [any])

let andDeepInclude = shouldDeepInclude
let andDeepIncludeP = shouldDeepIncludeP

@scope(("to", "deep")) @send external toDeepInclude: ('element, 'any) => unit = "include"
@scope(("to", "deep")) @send external toDeepIncludeP: ('element, 'any) => 'element = "include"

let shouldIncludeKeys = (element, any: 'a) => should(element, #includeKeys, [any])
let shouldIncludeKeysP = (element, any: 'a) => shouldP(element, #includeKeys, [any])
let shouldNotIncludeKeys = (element, any: 'a) => should(element, #notIncludeKeys, [any])
let shouldNotIncludeKeysP = (element, any: 'a) => shouldP(element, #notIncludeKeys, [any])

let andIncludeKeys = shouldIncludeKeys
let andIncludeKeysP = shouldIncludeKeysP
let andNotIncludeKeys = shouldNotIncludeKeys
let andNotIncludeKeysP = shouldNotIncludeKeysP

@scope(("to", "include")) @send external toIncludeKeys: ('element, 'any) => unit = "keys"
@scope(("to", "include")) @send external toIncludeKeysP: ('element, 'any) => 'element = "keys"
@scope(("not", "to", "include")) @send external notToIncludeKeys: ('element, 'any) => unit = "keys"
@scope(("not", "to", "include")) @send
external notToIncludeKeysP: ('element, 'any) => 'element = "keys"

let shouldEqualString = (element, string: string) => should(element, #equal, [string])
let shouldEqualStringP = (element, string: string) => shouldP(element, #equal, [string])
let shouldNotEqualString = (element, string: string) => should(element, #notEqual, [string])
let shouldNotEqualStringP = (element, string: string) => shouldP(element, #notEqual, [string])

let andEqualString = shouldEqualString
let andEqualStringP = shouldEqualStringP
let andNotEqualString = shouldNotEqualString
let andNotEqualStringP = shouldNotEqualStringP

@scope("to") @send external toEqualString: ('element, string) => unit = "equal"
@scope("to") @send external toEqualStringP: ('element, string) => 'element = "equal"
@scope(("not", "to")) @send external notToEqualString: ('element, string) => unit = "equal"
@scope(("not", "to")) @send
external notToEqualStringP: ('element, string) => 'element = "equal"

let shouldEqualInt = (element, int: int) => should(element, #equal, [int])
let shouldEqualIntP = (element, int: int) => shouldP(element, #equal, [int])
let shouldNotEqualInt = (element, int: int) => should(element, #notEqual, [int])
let shouldNotEqualIntP = (element, int: int) => shouldP(element, #notEqual, [int])

let andEqualInt = shouldEqualInt
let andEqualIntP = shouldEqualIntP
let andNotEqualInt = shouldNotEqualInt
let andNotEqualIntP = shouldNotEqualIntP

@scope("to") @send external toEqualInt: ('element, int) => unit = "equal"
@scope("to") @send external toEqualIntP: ('element, int) => 'element = "equal"
@scope(("not", "to")) @send external notToEqualInt: ('element, int) => unit = "equal"
@scope(("not", "to")) @send
external notToEqualIntP: ('element, int) => 'element = "equal"

let shouldBeGtInt = (element, int: int) => should(element, #beGt, [int])
let shouldBeGtIntP = (element, int: int) => shouldP(element, #beGt, [int])
let shouldNotBeGtInt = (element, int: int) => should(element, #notBeGt, [int])
let shouldNotBeGtIntP = (element, int: int) => shouldP(element, #notBeGt, [int])

let andBeGtInt = shouldBeGtInt
let andBeGtIntP = shouldBeGtIntP
let andNotBeGtInt = shouldNotBeGtIntP
let andNotBeGtIntP = shouldNotBeGtIntP

@scope(("to", "be", "greater")) @send external toBeGtInt: ('element, int) => unit = "than"
@scope(("to", "be", "greater")) @send external toBeGtIntP: ('element, int) => 'element = "than"
@scope(("not", "to", "be", "greater")) @send external notToBeGtInt: ('element, int) => unit = "than"
@scope(("not", "to", "be", "greater")) @send
external notToBeGtIntP: ('element, int) => 'element = "than"

let shouldBeLtInt = (element, int: int) => should(element, #beLt, [int])
let shouldBeLtIntP = (element, int: int) => shouldP(element, #beLt, [int])
let shouldNotBeLtInt = (element, int: int) => should(element, #notBeLt, [int])
let shouldNotBeLtIntP = (element, int: int) => shouldP(element, #notBeLt, [int])

let andBeLtInt = shouldBeLtInt
let andBeLtIntP = shouldBeLtIntP
let andNotBeLtInt = shouldNotBeLtIntP
let andNotBeLtIntP = shouldNotBeLtIntP

@scope(("to", "be", "less")) @send external toBeLtInt: ('element, int) => unit = "than"
@scope(("to", "be", "less")) @send external toBeLtIntP: ('element, int) => 'element = "than"
@scope(("not", "to", "be", "less")) @send external notToBeLtInt: ('element, int) => unit = "than"
@scope(("not", "to", "be", "less")) @send
external notToBeLtIntP: ('element, int) => 'element = "than"

let shouldBeGteInt = (element, int: int) => should(element, #beGte, [int])
let shouldBeGteIntP = (element, int: int) => shouldP(element, #beGte, [int])
let shouldNotBeGteInt = (element, int: int) => should(element, #notBeGte, [int])
let shouldNotBeGteIntP = (element, int: int) => shouldP(element, #notBeGte, [int])

let andBeGteInt = shouldBeGteInt
let andBeGteIntP = shouldBeGteIntP
let andNotBeGteInt = shouldNotBeGteIntP
let andNotBeGteIntP = shouldNotBeGteIntP

@scope(("to", "be")) @send external toBeGteInt: ('element, int) => unit = "gte"
@scope(("to", "be")) @send external toBeGteIntP: ('element, int) => 'element = "gte"
@scope(("not", "to", "be")) @send external notToBeGteInt: ('element, int) => unit = "gte"
@scope(("not", "to", "be")) @send
external notToBeGteIntP: ('element, int) => 'element = "gte"

let shouldBeLteInt = (element, int: int) => should(element, #beLte, [int])
let shouldBeLteIntP = (element, int: int) => shouldP(element, #beLte, [int])
let shouldNotBeLteInt = (element, int: int) => should(element, #notBeLte, [int])
let shouldNotBeLteIntP = (element, int: int) => shouldP(element, #notBeLte, [int])

let andBeLteInt = shouldBeLteInt
let andBeLteIntP = shouldBeLteIntP
let andNotBeLteInt = shouldNotBeLteIntP
let andNotBeLteIntP = shouldNotBeLteIntP

@scope(("to", "be")) @send external toBeLteInt: ('element, int) => unit = "lte"
@scope(("to", "be")) @send external toBeLteIntP: ('element, int) => 'element = "lte"
@scope(("not", "to", "be")) @send external notToBeLteInt: ('element, int) => unit = "lte"
@scope(("not", "to", "be")) @send
external notToBeLteIntP: ('element, int) => 'element = "lte"

let shouldEqualFloat = (element, float: float) => should(element, #eq, [float])
let shouldEqualFloatP = (element, float: float) => shouldP(element, #eq, [float])
let shouldNotEqualFloat = (element, float: float) => should(element, #notEq, [float])
let shouldNotEqualFloatP = (element, float: float) => shouldP(element, #notEq, [float])

let andEqualFloat = shouldEqualFloat
let andEqualFloatP = shouldEqualFloatP
let andNotEqualFloat = shouldNotEqualFloat
let andNotEqualFloatP = shouldNotEqualFloatP

@scope("to") @send external toEqualFloat: ('element, float) => unit = "equal"
@scope("to") @send external toEqualFloatP: ('element, float) => 'element = "equal"
@scope(("not", "to")) @send external notToEqualFloat: ('element, float) => unit = "equal"
@scope(("not", "to")) @send
external notToEqualFloatP: ('element, float) => 'element = "equal"

let shouldBeGtFloat = (element, float: float) => should(element, #beGt, [float])
let shouldBeGtFloatP = (element, float: float) => shouldP(element, #beGt, [float])
let shouldNotBeGtFloat = (element, float: float) => should(element, #notBeGt, [float])
let shouldNotBeGtFloatP = (element, float: float) => shouldP(element, #notBeGt, [float])

let andBeGtFloat = shouldBeGtFloat
let andBeGtFloatP = shouldBeGtFloatP
let andNotBeGtFloat = shouldNotBeGtFloatP
let andNotBeGtFloatP = shouldNotBeGtFloatP

@scope(("to", "be")) @send external toBeGtFloat: ('element, float) => unit = "gt"
@scope(("to", "be")) @send external toBeGtFloatP: ('element, float) => 'element = "gt"
@scope(("not", "to", "be")) @send external notToBeGtFloat: ('element, float) => unit = "gt"
@scope(("not", "to", "be")) @send
external notToBeGtFloatP: ('element, float) => 'element = "gt"

let shouldBeLtFloat = (element, float: float) => should(element, #beLt, [float])
let shouldBeLtFloatP = (element, float: float) => shouldP(element, #beLt, [float])
let shouldNotBeLtFloat = (element, float: float) => should(element, #notBeLt, [float])
let shouldNotBeLtFloatP = (element, float: float) => shouldP(element, #notBeLt, [float])

let andBeLtFloat = shouldBeLtFloat
let andBeLtFloatP = shouldBeLtFloatP
let andNotBeLtFloat = shouldNotBeLtFloatP
let andNotBeLtFloatP = shouldNotBeLtFloatP

@scope(("to", "be")) @send external toBeLtFloat: ('element, float) => unit = "lt"
@scope(("to", "be")) @send external toBeLtFloatP: ('element, float) => 'element = "lt"
@scope(("not", "to", "be")) @send external notToBeLtFloat: ('element, float) => unit = "lt"
@scope(("not", "to", "be")) @send
external notToBeLtFloatP: ('element, float) => 'element = "lt"

let shouldBeGteFloat = (element, float: float) => should(element, #beGte, [float])
let shouldBeGteFloatP = (element, float: float) => shouldP(element, #beGte, [float])
let shouldNotBeGteFloat = (element, float: float) => should(element, #notBeGte, [float])
let shouldNotBeGteFloatP = (element, float: float) => shouldP(element, #notBeGte, [float])

let andBeGteFloat = shouldBeGteFloat
let andBeGteFloatP = shouldBeGteFloatP
let andNotBeGteFloat = shouldNotBeGteFloatP
let andNotBeGteFloatP = shouldNotBeGteFloatP

@scope(("to", "be")) @send external toBeGteFloat: ('element, float) => unit = "gte"
@scope(("to", "be")) @send external toBeGteFloatP: ('element, float) => 'element = "gte"
@scope(("not", "to", "be")) @send external notToBeGteFloat: ('element, float) => unit = "gte"
@scope(("not", "to", "be")) @send
external notToBeGteFloatP: ('element, float) => 'element = "gte"

let shouldHaveHtml = (element, string) => should(element, #haveHtml, [string])
let shouldHaveHtmlP = (element, string) => shouldP(element, #haveHtml, [string])
let shouldNotHaveHtml = (element, string) => should(element, #notHaveHtml, [string])
let shouldNotHaveHtmlP = (element, string) => shouldP(element, #notHaveHtml, [string])

let andHaveHtml = shouldHaveHtml
let andHaveHtmlP = shouldHaveHtmlP
let andNotHaveHtml = shouldNotHaveHtml
let andNotHaveHtmlP = shouldNotHaveHtmlP

@scope(("to", "have")) @send external toHaveHtml: ('element, string) => unit = "html"
@scope(("to", "have")) @send external toHaveHtmlP: ('element, string) => 'element = "html"
@scope(("not", "to", "have")) @send external notToHaveHtml: ('element, string) => unit = "html"
@scope(("not", "to", "have")) @send
external notToHaveHtmlP: ('element, string) => 'element = "html"

let shouldMatch = (element, string: string) => should(element, #match, [string])
let shouldMatchP = (element, string: string) => shouldP(element, #match, [string])
let shouldNotMatch = (element, string: string) => should(element, #notMatch, [string])
let shouldNotMatchP = (element, string: string) => shouldP(element, #notMatch, [string])

let andMatch = shouldMatch
let andMatchP = shouldMatchP
let andNotMatch = shouldNotMatch
let andNotMatchP = shouldNotMatchP

@scope("to") @send external toMatch: ('element, string) => unit = "match"
@scope("to") @send external toMatchP: ('element, string) => 'element = "match"
@scope(("not", "to")) @send external notToMatch: ('element, string) => unit = "match"
@scope(("not", "to")) @send
external notToMatchP: ('element, string) => 'element = "match"

let shouldMatchRe = (element, re: Js.Re.t) => should(element, #match, [re])
let shouldMatchReP = (element, re: Js.Re.t) => shouldP(element, #match, [re])
let shouldNotMatchRe = (element, re: Js.Re.t) => should(element, #notMatch, [re])
let shouldNotMatchReP = (element, re: Js.Re.t) => shouldP(element, #notMatch, [re])

let andMatchRe = shouldMatchRe
let andMatchReP = shouldMatchReP
let andNotMatchRe = shouldNotMatchRe
let andNotMatchReP = shouldNotMatchReP

@send external toMatchRe: ('element, Js.Re.t) => unit = "match"
@send external toMatchReP: ('element, Js.Re.t) => 'element = "match"
@scope("not") @send external notToMatchRe: ('element, Js.Re.t) => unit = "match"
@scope("not") @send external notToMatchReP: ('element, Js.Re.t) => 'element = "match"

@scope(("to", "be")) @get external toBeCalled: 'element => unit = "called"
@scope(("to", "be")) @get
external toBeCalledP: 'element => 'element = "called"
@scope(("not", "to", "be")) @get
external notToBeCalled: 'element => unit = "called"
@scope(("not", "to", "be")) @get
external notToBeCalledP: 'element => 'element = "called"

let shouldHaveBeenCalledTwice = element => should(element, #beCalledTwice, [()])

@send external callThrough: ('element, unit) => unit = "callThrough"
@send external callThroughP: ('element, unit) => 'element = "callThrough"

@send external returns: ('element, 'returnVal) => 'element = "returns"
@send external throws: ('element, Js.Exn.t) => unit = "throws"

module Sinon = {
  @scope(("Cypress", "sinon", "match")) @val
  external matchString: 'element = "string"
  @scope(("Cypress", "sinon", "match")) @val
  external matchNumber: 'element = "number"
}

@send external withArgs: ('element, 'args) => 'element = "withArgs"

module RequestMethod = {
  type t = [
    | #get
    | #post
    | #put
    | #delete
    | #patch
    | #head
    | #options
    | #trace
    | #copy
    | #lock
    | #mkcol
    | #move
    | #purge
    | #propfind
    | #proppatch
    | #unlcok
    | #report
    | #mkactivity
    | #checkout
    | #merge
    | #mSearch
    | #notify
    | #subscribe
    | #unsubscribe
    | #search
    | #connect
  ]

  let toValue = val =>
    switch val {
    | #get => "GET"
    | #post => "POST"
    | #put => "PUT"
    | #delete => "DELETE"
    | #patch => "PATCH"
    | #head => "HEAD"
    | #options => "OPTIONS"
    | #trace => "TRACE"
    | #copy => "COPY"
    | #lock => "LOCK"
    | #mkcol => "MKCOL"
    | #move => "MOVE"
    | #purge => "PURGE"
    | #propfind => "PROPFIND"
    | #proppatch => "PROPPATCH"
    | #unlcok => "UNLOCK"
    | #report => "REPORT"
    | #mkactivity => "MKACTIVITY"
    | #checkout => "CHECKOUT"
    | #merge => "MERGE"
    | #mSearch => "MSEARCH"
    | #notify => "NOTIFY"
    | #subscribe => "SUBSCRIBE"
    | #unsubscribe => "UNSUBSCRIBE"
    | #search => "SEARCH"
    | #connect => "CONNECT"
    }
}

module Encoding = {
  type t = [#utf8 | #ascii | #base64 | #binary | #hex | #latin1 | #ucs2 | #utf16le]

  let toValue = value =>
    switch value {
    | #utf8 => "utf8"
    | #ascii => "ascii"
    | #base64 => "base64"
    | #binary => "binary"
    | #hex => "hex"
    | #latin1 => "latin1"
    | #ucs2 => "ucs2"
    | #utf16le => "utf16le"
    }
}

type requestObject<'auth, 'body, 'qs, 'headers> = {
  log: bool,
  url: Js.null<string>,
  method: string,
  auth: Js.null<'auth>,
  body: Js.null<'body>,
  failOnStatusCode: bool,
  followRedirect: bool,
  form: bool,
  encoding: string,
  gzip: bool,
  headers: Js.null<'headers>,
  qs: Js.null<'qs>,
  retryOnStatusCodeFailure: bool,
  retryOnNetworkFailure: bool,
  timeout: int,
}

let createRequestOptionsObject = (
  ~log=true,
  ~url=Js.null,
  ~method=#get,
  ~auth=Js.null,
  ~body=Js.null,
  ~failOnStatusCode=true,
  ~followRedirect=true,
  ~form=false,
  ~encoding=#utf8,
  ~gzip=true,
  ~headers=Js.null,
  ~qs=Js.null,
  ~retryOnStatusCodeFailure=false,
  ~retryOnNetworkFailure=true,
  ~timeout=30000,
  (),
) => {
  log: log,
  url: url,
  method: RequestMethod.toValue(method),
  auth: auth,
  body: body,
  failOnStatusCode: failOnStatusCode,
  followRedirect: followRedirect,
  form: form,
  encoding: Encoding.toValue(encoding),
  gzip: gzip,
  headers: headers,
  qs: qs,
  retryOnStatusCodeFailure: retryOnStatusCodeFailure,
  retryOnNetworkFailure: retryOnNetworkFailure,
  timeout: timeout,
}

// INFO: Local Storage
@scope("localStorage") @val external getItem: string => 'a = "getItem"

type locationObject<'authObj> = {
  auth: string,
  authObj: Js.undefined<'authObj>,
  hash: string,
  host: string,
  hostname: string,
  href: string,
  origin: string,
  originPolicy: string,
  pathname: string,
  port: int,
  protocol: string,
  search: string,
  toString: unit => string,
}

@send
external shouldWithLocationObject: (
  locationObject<'authObj>,
  locationObject<'authObj> => unit,
) => unit = "should"

/*
      // INFO: Assign an alias for later use. Reference the alias later within a cy.get() or cy.wait() command with an @ prefix.
      // LINK: https://docs.cypress.io/api/commands/as#Syntax
 */
@send external as_: ('element, string) => unit = "as"
@send external as_P: ('element, string) => 'element = "as"
/*
      // INFO: Blur a focused 'element.
      // LINK: https://docs.cypress.io/api/commands/blur
 */
@send external blur: ('element, ~options: BlurOptions.t=?, unit) => unit = "blur"
@send external blurP: ('element, ~options: BlurOptions.t=?, unit) => 'element = "blur"

/*
      // INFO: Check checkbox(es) or radio(s).
      // LINK: https://docs.cypress.io/api/commands/check
 */
@send external check: ('element, ~options: CheckOptions.t=?, unit) => unit = "check"
@send external checkP: ('element, ~options: CheckOptions.t=?, unit) => 'element = "check"

@send
external checkWithString: ('element, string, ~options: CheckOptions.t=?, unit) => unit = "check"
@send
external checkWithStringP: ('element, string, ~options: CheckOptions.t=?, unit) => 'element =
  "check"

@send
external checkWithArray: ('element, array<string>, ~options: CheckOptions.t=?, unit) => unit =
  "check"
@send
external checkWithArrayP: ('element, array<string>, ~options: CheckOptions.t=?, unit) => 'element =
  "check"

/*
      // INFO: Get the children of each DOM 'element within a set of DOM 'elements.
      // LINK: https://docs.cypress.io/api/commands/children
 */
@send external children: ('element, ~options: ChildrenOptions.t=?, unit) => unit = "children"
@send external childrenP: ('element, ~options: ChildrenOptions.t=?, unit) => 'element = "children"

@send
external childrenWithString: ('element, string, ~options: ChildrenOptions.t=?, unit) => unit =
  "children"
@send
external childrenWithStringP: ('element, string, ~options: ChildrenOptions.t=?, unit) => 'element =
  "children"

/*
      // INFO: Clear the value of an input or textarea.
      // LINK: https://docs.cypress.io/api/commands/clear
 */
@send external clear: ('element, ~options: ClearOptions.t=?, unit) => unit = "clear"
@send external clearP: ('element, ~options: ClearOptions.t=?, unit) => 'element = "clear"

/*
      // INFO: Clear a specific browser cookie.
      // LINK: https://docs.cypress.io/api/commands/clearcookie
 */
@val external cyClearCookie: (string, ~options: CookieOptions.t=?, unit) => unit = "cy.clearCookie"

/*
      // INFO: Clear all browser cookies for current domain and subdomain.
      // LINK: https://docs.cypress.io/api/commands/clearcookies
 */
@val external cyClearCookies: (~options: CookieOptions.t=?, unit) => unit = "cy.clearCookies"

/*
      // INFO: Clear data in localStorage for current domain and subdomain.
      // LINK: https://docs.cypress.io/api/commands/clearlocalstorage
 */
@val
external cyClearLocalStorage: (~options: LocalStorageOptions.t=?, unit) => unit =
  "cy.clearLocalStorage"
@val
external cyClearLocalStorageP: (~options: LocalStorageOptions.t=?, unit) => 'element =
  "cy.clearLocalStorage"

@val
external cyClearLocalStorageWithString: (string, ~options: LocalStorageOptions.t=?, unit) => unit =
  "cy.clearLocalStorage"
@val
external cyClearLocalStorageWithStringP: (
  string,
  ~options: LocalStorageOptions.t=?,
  unit,
) => 'element = "cy.clearLocalStorage"

@val
external cyClearLocalStorageWithRe: (Js.Re.t, ~options: LocalStorageOptions.t=?, unit) => unit =
  "cy.clearLocalStorage"
@val
external cyClearLocalStorageWithReP: (
  Js.Re.t,
  ~options: LocalStorageOptions.t=?,
  unit,
) => 'element = "cy.clearLocalStorage"

/*
        // INFO: Click a DOM 'element.
        // LINK: https://docs.cypress.io/api/commands/click
 */
@send external click: ('element, ~options: ClickOptions.t=?, unit) => unit = "click"
@send external clickP: ('element, ~options: ClickOptions.t=?, unit) => 'element = "click"

@send
external clickWithPosition: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => unit = "click"
@send
external clickWithPositionP: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => 'element = "click"

@send
external clickWithXY: ('element, ~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => unit =
  "click"
@send
external clickWithXYP: ('element, ~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => 'element =
  "click"

/*
      // INFO: cy.clock() overrides native global functions related to time allowing them to be controlled synchronously via cy.tick() or the yielded clock object.
      // LINK: https://docs.cypress.io/api/commands/clock
 */
//  NOTE: It looks like there is something wrong with functionNames. Needs further investigation. Passing undefined works
@val
external cyClock: (
  ~now: float=?,
  ~functionNames: array<string>=?,
  ~options: ClockOptions.t=?,
  unit,
) => unit = "cy.clock"
@val
external cyClockP: (
  ~now: float=?,
  ~functionNames: array<string>=?,
  ~options: ClockOptions.t=?,
  unit,
) => 'element = "cy.clock"

/*
    // INFO: Get the first DOM 'element that matches the selector (whether it be itself or one of its ancestors).
    // LINK: https://docs.cypress.io/api/commands/closest
 */
@send external closest: ('element, string, ~options: ClosestOptions.t=?, unit) => unit = "closest"
@send
external closestP: ('element, string, ~options: ClosestOptions.t=?, unit) => 'element = "closest"

/*
    // INFO: Get the DOM 'element containing the text. DOM 'elements can contain more than the desired text and still match. Additionally, Cypress prefers some DOM 'elements over the deepest 'element found.
    // LINK: https://docs.cypress.io/api/commands/contains
 */
@val
external cyContainsString: (
  ~selector: string=?,
  string,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "cy.contains"
@val
external cyContainsStringP: (
  ~selector: string=?,
  string,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "cy.contains"

@val
external cyContainsRe: (~selector: string=?, Js.Re.t, ~options: ContainsOptions.t=?, unit) => unit =
  "cy.contains"
@val
external cyContainsReP: (
  ~selector: string=?,
  Js.Re.t,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "cy.contains"

@val
external cyContainsInt: (~selector: string=?, int, ~options: ContainsOptions.t=?, unit) => unit =
  "cy.contains"
@val
external cyContainsIntP: (
  ~selector: string=?,
  int,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "cy.contains"

@val
external cyContainsFloat: (
  ~selector: string=?,
  float,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "cy.contains"
@val
external cyContainsFloatP: (
  ~selector: string=?,
  float,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "cy.contains"

@send
external containsString: (
  'element,
  ~selector: string=?,
  string,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "contains"
@send
external containsStringP: (
  'element,
  ~selector: string=?,
  string,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "contains"

@send
external containsRe: (
  'element,
  ~selector: string=?,
  Js.Re.t,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "contains"
@send
external containsReP: (
  'element,
  ~selector: string=?,
  Js.Re.t,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "contains"

@send
external containsInt: (
  'element,
  ~selector: string=?,
  int,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "contains"
@send
external containsIntP: (
  'element,
  ~selector: string=?,
  int,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "contains"

@send
external containsFloat: (
  'element,
  ~selector: string=?,
  float,
  ~options: ContainsOptions.t=?,
  unit,
) => unit = "contains"
@send
external containsFloatP: (
  'element,
  ~selector: string=?,
  float,
  ~options: ContainsOptions.t=?,
  unit,
) => 'element = "contains"

/*
    // INFO: Double-click a DOM element.
    // LINK: https://docs.cypress.io/api/commands/dblclick
 */
@send external dblclick: ('element, ~options: ClickOptions.t=?, unit) => unit = "dblclick"
@send external dblclickP: ('element, ~options: ClickOptions.t=?, unit) => 'element = "dblclick"

@send
external dblclickWithPosition: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => unit = "dblclick"
@send
external dblclickWithPositionP: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => 'element = "dblclick"

@send
external dblclickXY: ('element, ~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => unit =
  "dblclick"
@send
external dblclickXYP: ('element, ~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => 'element =
  "dblclick"

/*
    // INFO: Set a debugger and log what the previous command yields.
    // LINK: https://docs.cypress.io/api/commands/debug
 */
@val external cyDebug: (~options: DebugOptions.t=?, unit) => unit = "cy.debug"
@val external cyDebugP: (~options: DebugOptions.t=?, unit) => 'element = "cy.debug"

@val external debug: ('element, ~options: DebugOptions.t=?, unit) => unit = "debug"
@val external debugP: ('element, ~options: DebugOptions.t=?, unit) => 'element = "debug"

/*
    // INFO: Get the window.document of the page that is currently active.
    // LINK: https://docs.cypress.io/api/commands/document
 */
@val external cyDocumentP: (~options: DocumentOptions.t=?, unit) => 'element = "cy.documnet"

/*
    // INFO: Iterate through an array like structure (arrays or objects with a length property).
    // LINK: https://docs.cypress.io/api/commands/each
 */
@send
external each: ('element, ('element, int, array<'element>) => unit) => unit = "each"
external eachP: ('element, ('element, int, array<'element>) => unit) => 'element = "each"

/*
    // INFO: End a chain of commands.
    // LINK: https://docs.cypress.io/api/commands/end
 */
@send external end: ('element, unit) => unit = "end"

/*
    // INFO: Get A DOM 'element at a specific index in an array of 'elements.
    // LINK: https://docs.cypress.io/api/commands/eq
 */
@send external eq: ('element, int, ~options: EqOptions.t=?, unit) => unit = "eq"
@send external eqP: ('element, int, ~options: EqOptions.t=?, unit) => 'element = "eq"

/*
    // INFO: Execute a system command.
    // LINK: https://docs.cypress.io/api/commands/exec
 */
@val external cyExec: (string, ~options: ExecOptions.t<'env>=?, unit) => 'element = "cy.exec"
@val external cyExecP: (string, ~options: ExecOptions.t<'env>=?, unit) => unit = "cy.exec"

/*
    // INFO: The querying behavior of this command matches exactly how .filter() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/filter
 */
@send external filter: ('element, string, ~options: FilterOptions.t=?, unit) => unit = "filter"
@send external filterP: ('element, string, ~options: FilterOptions.t=?, unit) => 'element = "filter"

/*
    // INFO: The querying behavior of this command matches exactly how .find() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/find
 */
@send external find: ('element, string, ~options: FindOptions.t=?, unit) => unit = "find"
@send external findP: ('element, string, ~options: FindOptions.t=?, unit) => 'element = "find"

/*
    // INFO: The querying behavior of this command matches exactly how .first() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/first
 */
@send external first: ('element, ~options: FirstOptions.t=?, unit) => unit = "first"
@send external firstP: ('element, ~options: FirstOptions.t=?, unit) => 'element = "first"

/*
    // INFO: Load a fixed set of data located in a file.
    // LINK: https://docs.cypress.io/api/commands/fixture
 */
@val
external cyFixture: (
  string,
  ~encoding: [
    | #ascii
    | #base64
    | #binary
    | #hex
    | #latin1
    | #utf8
    | #ucs2
    | #utf16le
  ]=?,
  ~options: FixtureOptions.t=?,
  unit,
) => unit = "cy.fixture"
@val
external cyFixtureP: (
  string,
  ~encoding: [
    | #ascii
    | #base64
    | #binary
    | #hex
    | #latin1
    | #utf8
    | #ucs2
    | #utf16le
  ]=?,
  ~options: FixtureOptions.t=?,
  unit,
) => 'element = "cy.fixture"

/*
    // INFO: Focus on a DOM 'element.
    // LINK: https://docs.cypress.io/api/commands/focus
 */
@send external focus: ('element, ~options: FocusOptions.t=?, unit) => unit = "focus"
@send external focusP: ('element, ~options: FocusOptions.t=?, unit) => 'element = "focus"

/*
    // INFO: Get the DOM 'element that is currently focused.
    // LINK: https://docs.cypress.io/api/commands/focused
 */
@val external cyFocused: (~options: FocusOptions.t=?, unit) => 'element = "cy.focused"

/*
    // INFO: Get one or more DOM 'elements by selector or alias.
    // LINK: https://docs.cypress.io/api/commands/get
 */
@val external cyGet: (string, ~options: GetOptions.t<'element>=?, unit) => 'element = "cy.get"
@send external get: ('element, string, ~options: GetOptions.t<'element>=?, unit) => 'element = "get"

/*
    // INFO: Get a browser cookie by its name.
    // LINK: https://docs.cypress.io/api/commands/getcookie
 */

type cookieObjectReturn = {
  domain: string,
  expiry: Js.undefined<float>,
  httpOnly: bool,
  name: string,
  path: string,
  sameSite: Js.undefined<string>,
  secure: bool,
}
@val external cyGetCookie: (string, ~options: CookieOptions.t=?, unit) => unit = "cy.getCookie"
@val external cyGetCookieP: (string, ~options: CookieOptions.t=?, unit) => 'element = "cy.getCookie"

/*
    // INFO: Get all of the browser cookies.
    // LINK: https://docs.cypress.io/api/commands/getcookies
 */
@val external cyGetCookies: (~options: CookieOptions.t=?, unit) => 'element = "cy.getCookies"

/*
    // INFO: Navigate back or forward to the previous or next URL in the browser's history.
    // LINK: https://docs.cypress.io/api/commands/go
 */
@val
external cyGo: (
  [
    | #back
    | #forward
  ],
  ~options: GoOptions.t=?,
  unit,
) => unit = "cy.go"

/*
    // INFO: Get the current URL hash of the page that is currently active.
    // LINK: https://docs.cypress.io/api/commands/hash
 */
@val external cyHash: (~options: HashOptions.t=?, unit) => 'element = "cy.hash"

/*
    // INFO: No native hover - explore cypress-real-events
    // LINK: https://docs.cypress.io/api/commands/hover
 */

/*
    // INFO: Spy and stub network requests and responses.
    // LINK: https://docs.cypress.io/api/commands/intercept
 */
@val external cySpy: ('object, string) => unit = "cy.spy"
// NOTE: When you want to pipe spy? Pass it to as_ function
// EXAMPLE: cySpyP(obj, "foo")->as_("anyArgs")
@val external cySpyP: ('object, string) => 'element = "cy.spy"

/*
    // INFO: Replace a function, record its usage and control its behavior.
    // LINK: https://docs.cypress.io/api/commands/stub#Syntax
 */
@val external cyStub: unit => unit = "cy.stub"
@val external cyStubP: unit => 'element = "cy.stub"
@val external cyStubWithObjectAndString: ('element, string) => unit = "cy.stub"
@val external cyStubWithObjectAndStringP: ('element, string) => 'element = "cy.stub"
@val external cyStubWithMethod: ('object, string) => unit = "cy.stub"

/*
    // INFO: Submit a form.
    // LINK: https://docs.cypress.io/api/commands/submit
 */

@obj
external routeMatcher: (
  ~auth: 'auth=?,
  ~headers: 'headers=?,
  ~hostname: string=?,
  ~https: bool=?,
  ~method: [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]=?,
  ~middleware: bool=?,
  ~path: string=?,
  ~pathname: string=?,
  ~port: 'port=?,
  ~query: 'query=?,
  ~times: float=?,
  ~url: string=?,
  unit,
) => _ = ""

@obj
external staticResponse: (
  ~fixture: string=?,
  ~body: 'body=?,
  ~headers: 'headers=?,
  ~statusCode: int=?,
  ~delay: float=?,
  unit,
) => _ = ""

// TODO: Version with the routeHandlers
@val
external cyInterceptWithString: (
  ~method: [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]=?,
  string,
  ~staticResponse: 'a=?,
  unit,
) => unit = "cy.intercept"
@val
external cyInterceptWithStringP: (
  ~method: [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]=?,
  string,
  ~staticResponse: 'a=?,
  unit,
) => 'element = "cy.intercept"

@val
external cyInterceptRe: (
  ~method: [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]=?,
  Js.Re.t,
  unit,
) => unit = "cy.intercept"
@val
external cyInterceptReP: (
  ~method: [#get | #head | #post | #put | #delete | #connect | #options | #trace | #patch]=?,
  Js.Re.t,
  unit,
) => 'element = "cy.intercept"

@val
external cyInterceptWithRouteMatcher: (~routeMatcher: 'a=?, ~staticResponse: 'b=?, unit) => unit =
  "cy.intercept"
@val
external cyInterceptWithRouteMatcherP: (
  ~routeMatcher: 'a=?,
  ~staticResponse: 'b=?,
  unit,
) => 'element = "cy.intercept"

/*
    // INFO: Invoke a function on the previously yielded subject.
    // LINK: https://docs.cypress.io/api/commands/invoke
 */
@send @variadic
external invoke: ('element, string, ~args: array<'arguments>) => unit = "invoke"
@send @variadic
external invokeP: ('element, string, ~args: array<'arguments>) => 'element = "invoke"

@send @variadic
external invokeWithOptions: (
  'element,
  ~options: InvokeOptions.t,
  string,
  ~args: array<'arguments>,
) => unit = "invoke"
@send @variadic
external invokeWithOptionsP: (
  'element,
  ~options: InvokeOptions.t,
  string,
  ~args: array<'arguments>,
) => 'element = "invoke"

/*
    // INFO: Get a property's value on the previously yielded subject.
    // LINK: https://docs.cypress.io/api/commands/its
 */
@send external its: ('element, string, ~options: ItsOptions.t=?, unit) => 'element = "its"

/*
    // INFO: Get the last DOM 'element within a set of DOM 'elements.
    // LINK: https://docs.cypress.io/api/commands/last
 */
@send external last: ('element, ~options: LastOptions.t=?, unit) => unit = "last"
@send external lastP: ('element, ~options: LastOptions.t=?, unit) => 'element = "last"

/*
    // INFO: Get the global window.location object of the page that is currently active.
    // LINK: https://docs.cypress.io/api/commands/location
 */
@val
external cyLocation: (~options: LocationOptions.t=?, unit) => locationObject<'authObj> =
  "cy.location"
@val
external cyLocationWithString: (string, ~options: LocationOptions.t=?, unit) => 'element =
  "cy.location"

/*
    // INFO: Print a message to the Cypress Command Log.
    // LINK: https://docs.cypress.io/api/commands/log
 */
@val external cyLog: string => unit = "cy.log"

/*
    // INFO: The querying behavior of this command matches exactly how .next() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/next
 */
@send external next: ('element, ~options: NextOptions.t=?, unit) => unit = "next"
@send external nextP: ('element, ~options: NextOptions.t=?, unit) => 'element = "next"
@send
external nextWithSelector: ('element, string, ~options: NextOptions.t=?, unit) => unit = "next"
@send
external nextWithSelectorP: ('element, string, ~options: NextOptions.t=?, unit) => 'element = "next"

/*
    // INFO: The querying behavior of this command matches exactly how .nextAll() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/nextall
 */
@send external nextAll: ('element, ~options: NextOptions.t=?, unit) => unit = "nextAll"
@send external nextAllP: ('element, ~options: NextOptions.t=?, unit) => 'element = "nextAll"
@send
external nextAllWithSelector: ('element, string, ~options: NextOptions.t=?, unit) => unit =
  "nextAll"
@send
external nextAllWithSelectorP: ('element, string, ~options: NextOptions.t=?, unit) => 'element =
  "nextAll"

/*
    // INFO: The querying behavior of this command matches exactly how .nextUntil() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/nextuntil
 */
@send
external nextUntilString: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "nextUntil"
@send
external nextUntilStringP: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "nextUntil"
@send
external nextUntilElement: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "nextUntil"
@send
external nextUntilElementP: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "nextUntil"

/*
    // INFO: The querying behavior of this command matches exactly how .not() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/not
 */
@send external not: ('element, string, ~options: NotOptions.t=?, unit) => unit = "not"
@send external notP: ('element, string, ~options: NotOptions.t=?, unit) => 'element = "not"

/*
    // INFO: The querying behavior of this command matches exactly how .parent() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/parent
 */
@send external parent: ('element, ~options: ParentOptions.t=?, unit) => unit = "parent"
@send external parentP: ('element, ~options: ParentOptions.t=?, unit) => 'element = "parent"
@send
external parentWithString: ('element, string, ~options: ParentOptions.t=?, unit) => unit = "parent"
@send
external parentWithStringP: ('element, string, ~options: ParentOptions.t=?, unit) => 'element =
  "parent"

/*
    // INFO: The querying behavior of this command matches exactly how .parents() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/parents
 */

@send external parents: ('element, ~options: ParentOptions.t=?, unit) => unit = "parents"
@send external parentsP: ('element, ~options: ParentOptions.t=?, unit) => 'element = "parents"

@send
external parentsWithString: ('element, string, ~options: ParentOptions.t=?, unit) => unit =
  "parents"
@send
external parentsWithStringP: ('element, string, ~options: ParentOptions.t=?, unit) => 'element =
  "parents"

/*
    // INFO: The querying behavior of this command matches exactly how .parentsUntil() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/parentsuntil
 */
@send
external parentsUntilString: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "parentsUntil"
@send
external parentsUntilStringP: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "parentsUntil"
@send
external parentsUntilElement: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "parentsUntil"
@send
external parentsUntilElementP: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "parentsUntil"

/*
    // INFO: his does not set a debugger in your code, unlike .debug()
    // LINK: https://docs.cypress.io/api/commands/pause
 */
@val external cyPause: (~options: PauseOptions.t=?, unit) => unit = "cy.pause"
@val external cyPauseP: (~options: PauseOptions.t=?, unit) => 'element = "cy.pause"

@val external pause: ('element, ~options: PauseOptions.t=?, unit) => unit = "pause"
@val external pauseP: ('element, ~options: PauseOptions.t=?, unit) => 'element = "pause"

/*
    // INFO: The querying behavior of this command matches exactly how .prev() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/prev
 */
@send external prev: ('element, ~options: PrevOptions.t=?, unit) => unit = "prev"
@send external prevP: ('element, ~options: PrevOptions.t=?, unit) => 'element = "prev"

@send
external prevWithSelector: ('element, string, ~options: PrevOptions.t=?, unit) => unit = "prev"
@send
external prevWithSelectorP: ('element, string, ~options: PrevOptions.t=?, unit) => 'element = "prev"

/*
    // INFO: The querying behavior of this command matches exactly how .prevAll() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/prevall
 */

@send external prevAll: ('element, ~options: PrevOptions.t=?, unit) => unit = "prevAll"
@send external prevAllP: ('element, ~options: PrevOptions.t=?, unit) => 'element = "prevAll"

@send
external prevAllWithSelector: ('element, string, ~options: PrevOptions.t=?, unit) => unit =
  "prevAll"
@send
external prevAllWithSelectorP: ('element, string, ~options: PrevOptions.t=?, unit) => 'element =
  "prevAll"

/*
    // INFO: The querying behavior of this command matches exactly how .prevUntil() works in jQuery.
    // LINK: https://docs.cypress.io/api/commands/prevuntil
 */

@send
external prevUntilString: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "prevUntil"
@send
external prevUntilStringP: (
  'element,
  string,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "prevUntil"
@send
external prevUntilElement: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => unit = "prevUntil"
@send
external prevUntilElementP: (
  'element,
  'element,
  ~filter: string=?,
  ~options: NextOptions.t=?,
  unit,
) => 'element = "prevUntil"

/*
    // INFO: Read a file and yield its contents.
    // LINK: https://docs.cypress.io/api/commands/readfile
 */
@val
external cyReadFile: (
  string,
  ~encoding: [
    | #ascii
    | #base64
    | #binary
    | #hex
    | #latin1
    | #utf8
    | #ucs2
    | #utf16le
  ]=?,
  ~options: ReadFileOptions.t=?,
  unit,
) => unit = "cy.readFile"
@val
external cyReadFileP: (
  string,
  ~encoding: [
    | #ascii
    | #base64
    | #binary
    | #hex
    | #latin1
    | #utf8
    | #ucs2
    | #utf16le
  ]=?,
  ~options: ReadFileOptions.t=?,
  unit,
) => 'element = "cy.readFile"

/*
    // INFO: Reload the page.
    // LINK: https://docs.cypress.io/api/commands/reload
 */
@val external cyReload: (~options: ReloadOptions.t=?, unit) => unit = "cy.reload"
@val external cyReloadP: (~options: ReloadOptions.t=?, unit) => 'element = "cy.reload"

@val external cyReloadWithBool: (bool, ~options: ReloadOptions.t=?, unit) => unit = "cy.reload"
@val external cyReloadWithBoolP: (bool, ~options: ReloadOptions.t=?, unit) => 'element = "cy.reload"

/*
    // INFO: Make an HTTP request.
    // LINK: https://docs.cypress.io/api/commands/request#Syntax
 */
@val
external cyRequestWithString: (
  ~method: [
    | #get
    | #post
    | #put
    | #delete
    | #patch
    | #head
    | #options
    | #trace
    | #copy
    | #lock
    | #mkcol
    | #move
    | #purge
    | #propfind
    | #proppatch
    | #unlcok
    | #report
    | #mkactivity
    | #checkout
    | #merge
    | #mSearch
    | #notify
    | #subscribe
    | #unsubscribe
    | #search
    | #connect
  ]=?,
  string,
  ~body: 'a=?,
  unit,
) => unit = "cy.request"

@val
external cyRequestWithStringP: (
  ~method: [
    | #get
    | #post
    | #put
    | #delete
    | #patch
    | #head
    | #options
    | #trace
    | #copy
    | #lock
    | #mkcol
    | #move
    | #purge
    | #propfind
    | #proppatch
    | #unlcok
    | #report
    | #mkactivity
    | #checkout
    | #merge
    | #mSearch
    | #notify
    | #subscribe
    | #unsubscribe
    | #search
    | #connect
  ]=?,
  string,
  ~body: 'a=?,
  unit,
) => 'b = "cy.request"

@val
external cyRequestWithOptions: requestObject<'auth, 'body, 'qs, 'headers> => 'element = "cy.request"

/*
    // INFO: Right click a DOM element.
    // LINK: https://docs.cypress.io/api/commands/rightclick
 */
@send external rightClick: 'element => unit = "rightclick"
@send external rightClickP: ('element, ~options: ClickOptions.t=?, unit) => 'element = "rightclick"

@send
external rightClickWithPosition: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => unit = "rightclick"
@send
external rightClickWithPositionP: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ClickOptions.t=?,
  unit,
) => 'element = "rightclick"

@send
external rightclickWithXY: (~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => unit =
  "rightclick"
@send
external rightclickWithXYP: (~x: int, ~y: int, ~options: ClickOptions.t=?, unit) => 'element =
  "rightclick"

/*
    // INFO: Get the root DOM element.
    // LINK: https://docs.cypress.io/api/commands/root
 */
@val external cyRoot: (~options: RootOptions.t=?, unit) => 'element = "cy.root"

/*
    // INFO: Take a screenshot of the application under test and, optionally, the Cypress Command Log.
    // LINK: https://docs.cypress.io/api/commands/screenshot
 */
@val external cyScreenshot: (~options: ScreenshotOptions.t=?, unit) => unit = "cy.screenshot"
@val external cyScreenshotP: (~options: ScreenshotOptions.t=?, unit) => 'element = "cy.screenshot"

@val
external cyScreenshotWithFileName: (string, ~options: ScreenshotOptions.t=?, unit) => unit =
  "cy.screenshot"

@val
external cyScreenshotWithFileNameP: (string, ~options: ScreenshotOptions.t=?, unit) => 'element =
  "cy.screenshot"

@send external screenshot: ('element, ~options: ScreenshotOptions.t=?, unit) => unit = "screenshot"
@send
external screenshotP: ('element, ~options: ScreenshotOptions.t=?, unit) => 'element = "screenshot"

@send
external screenshotWithFileName: ('element, string, ~options: ScreenshotOptions.t=?, unit) => unit =
  "screenshot"

@send
external screenshotWithFileNameP: (
  'element,
  string,
  ~options: ScreenshotOptions.t=?,
  unit,
) => 'element = "screenshot"

/*
    // INFO: Scroll an element into view.
    // LINK: https://docs.cypress.io/api/commands/scrollintoview
 */

module ScrollToOptions = {
  type t = {
    duration: int,
    easing: string,
    ensureScrollable: bool,
    log: bool,
    timeout: int,
  }

  let make = (
    ~duration=0,
    ~easing="swing",
    ~ensureScrollable=true,
    ~log=true,
    ~timeout=Timeouts.defaultCommandTimeout,
    (),
  ) => {
    duration: duration,
    easing: easing,
    ensureScrollable: ensureScrollable,
    log: log,
    timeout: timeout,
  }
}

@send
external scrollIntoView: ('element, ~options: ScrollToOptions.t=?, unit) => unit = "scrollIntoView"
@send
external scrollIntoViewP: ('element, ~options: ScrollToOptions.t=?, unit) => 'element =
  "scrollIntoView"

/*
    // INFO: Scroll to a specific position.
    // LINK: https://docs.cypress.io/api/commands/scrollto
 */

@val
external cyScrollTo: (
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ScrollToOptions.t=?,
  unit,
) => unit = "cy.scrollTo"
@send
external scrollTo: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ScrollToOptions.t=?,
  unit,
) => unit = "scrollTo"
@send
external scrollToP: (
  'element,
  [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ],
  ~options: ScrollToOptions.t=?,
  unit,
) => 'element = "scrollTo"

@send
external scrollToWithCoord: (
  'element,
  ~x: int,
  ~y: int,
  ~options: ScrollToOptions.t=?,
  unit,
) => unit = "scrollTo"
@send
external scrollToWithCoordP: (
  'element,
  ~x: int,
  ~y: int,
  ~options: ScrollToOptions.t=?,
  unit,
) => 'element = "scrollTo"

@send
external scrollToWithPercentages: (
  'element,
  ~width: string,
  ~height: string,
  ~options: ScrollToOptions.t=?,
  unit,
) => unit = "scrollTo"
@send
external scrollToWithPercentagesP: (
  'element,
  ~width: string,
  ~height: string,
  ~options: ScrollToOptions.t=?,
  unit,
) => 'element = "scrollTo"

/*
    // INFO: Select an <option> within a <select>.
    // LINK: https://docs.cypress.io/api/commands/select
 */
@send external select: ('element, string, ~options: SelectOptions.t=?, unit) => unit = "select"
@send external selectP: ('element, string, ~options: SelectOptions.t=?, unit) => 'element = "select"
@send
external selectWithArray: ('element, array<string>, ~options: SelectOptions.t=?, unit) => unit =
  "select"
@send
external selectWithArrayP: (
  'element,
  array<string>,
  ~options: SelectOptions.t=?,
  unit,
) => 'element = "select"

/*
    // INFO: Set a browser cookie.
    // LINK: https://docs.cypress.io/api/commands/setcookie
 */
@val
external cySetCookie: (string, string, ~options: SetCookieOptions.t=?, unit) => unit =
  "cy.setCookie"

/*
    // INFO: Traverse into the shadow DOM of an element.
    // LINK: https://docs.cypress.io/api/commands/shadow
 */

/*
     // INFO: Create an assertion. Assertions are automatically retried until they pass or time out.
     // LINK: https://docs.cypress.io/api/commands/should
 */

/*
     // INFO: Get sibling DOM elements.
     // LINK: https://docs.cypress.io/api/commands/siblings
 */
@send external siblings: ('element, ~options: SiblingsOptions.t=?, unit) => unit = "siblings"
@send external siblingsP: ('element, ~options: SiblingsOptions.t=?, unit) => 'element = "siblings"

@send
external siblingsWithString: ('element, string, ~options: SiblingsOptions.t=?, unit) => unit =
  "siblings"
@send
external siblingsWithStringP: ('element, string, ~options: SiblingsOptions.t=?, unit) => 'element =
  "siblings"

// NOTE: No need to use spread

/*
    // INFO: Wrap a method in a spy in order to record calls to and arguments of the function.
    // LINK: https://docs.cypress.io/api/commands/spy
 */
//  NOTE: You need to pass form element to submit!
@send external submit: ('element, ~options: SubmitOptions.t=?, unit) => unit = "submit"
@send external submitP: ('element, ~options: SubmitOptions.t=?, unit) => 'element = "submit"

/*
    // INFO: Execute code in Node via the task plugin event.
    // LINK: https://docs.cypress.io/api/commands/task
 */
@val external cyTask: (string, 'arg, ~options: TaskOptions.t=?, unit) => unit = "cy.task"

/*
    // INFO: Enables you to work with the subject yielded from the previous command.
    // LINK: https://docs.cypress.io/api/commands/then
 */

// @send external then: (element, 'a => unit) => unit = "then"
// @send external thenP: (element, 'a => 'b) => element = "then"
// @send external thenGeneric: ('a, 'b => unit) => unit = "then"
@send external then: ('a, 'b => unit) => unit = "then"
@send external thenP: ('a, 'b => 'c) => 'element = "then"

/*
    // INFO: Move time after overriding a native time function with cy.clock().
    // LINK: https://docs.cypress.io/api/commands/tick
 */
@val external cyTick: (int, ~options: TickOptions.t=?, unit) => unit = "cy.tick"

/*
    // INFO: Get the document.title property of the page that is currently active.
    // LINK: https://docs.cypress.io/api/commands/title
 */
@val external cyTitle: (~options: TitleOptions.t=?, unit) => string = "cy.title"

/*
    // INFO: Trigger an event on a DOM element.
    // LINK: https://docs.cypress.io/api/commands/trigger
 */

module TriggerOptions = {
  type t = {
    animationDistanceThreshold: int,
    bubbles: bool,
    cancelable: bool,
    eventConstructor: string,
    force: bool,
    log: bool,
    scrollBehavior: ScrollBehavior.t,
    timeout: int,
    waitForAnimations: bool,
  }

  let make = (
    ~animationDistanceThreshold=Acitonability.animationDistanceThreshold,
    ~bubbles=true,
    ~cancelable=true,
    ~eventConstructor="Event",
    ~force=false,
    ~log=true,
    ~scrollBehavior=Acitonability.scrollBehavior,
    ~timeout=Timeouts.defaultCommandTimeout,
    ~waitForAnimations=Acitonability.waitForAnimations,
    (),
  ) => {
    animationDistanceThreshold: animationDistanceThreshold,
    bubbles: bubbles,
    cancelable: cancelable,
    eventConstructor: eventConstructor,
    force: force,
    log: log,
    scrollBehavior: scrollBehavior,
    timeout: timeout,
    waitForAnimations: waitForAnimations,
  }
}

@send
external trigger: (
  'element,
  string,
  ~position: [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ]=?,
  ~options: TriggerOptions.t=?,
  unit,
) => unit = "trigger"
@send
external triggerP: (
  'element,
  string,
  ~position: [
    | #topLeft
    | #top
    | #topRight
    | #left
    | #center
    | #right
    | #bottomLeft
    | #bottom
    | #bottomRight
  ]=?,
  ~options: TriggerOptions.t=?,
  unit,
) => 'element = "trigger"

@send
external triggerWithXY: (
  'element,
  string,
  ~x: int,
  ~y: int,
  ~options: TriggerOptions.t=?,
  unit,
) => unit = "trigger"
@send
external triggerWithXYP: (
  'element,
  string,
  ~x: int,
  ~y: int,
  ~options: TriggerOptions.t=?,
  unit,
) => 'element = "trigger"

/*
    // INFO: Type into a DOM element.
    // LINK: https://docs.cypress.io/api/commands/type
 */

module TypeOptions = {
  type t = {
    animationDistanceThreshold: int,
    delay: int,
    force: bool,
    log: bool,
    parseSpecialCharSequences: bool,
    release: bool,
    scrollBehavior: string,
    timeout: int,
    waitForAnimations: bool,
  }

  let make = (
    ~animationDistanceThreshold=5,
    ~delay=10,
    ~force=false,
    ~log=true,
    ~parseSpecialCharSequences=true,
    ~release=true,
    ~scrollBehavior=#top,
    ~timeout=4000,
    ~waitForAnimations=true,
    (),
  ) => {
    animationDistanceThreshold: animationDistanceThreshold,
    delay: delay,
    force: force,
    log: log,
    parseSpecialCharSequences: parseSpecialCharSequences,
    release: release,
    scrollBehavior: ScrollBehavior.toValue(scrollBehavior),
    timeout: timeout,
    waitForAnimations: waitForAnimations,
  }
}

@send external type_: ('element, string, ~options: TypeOptions.t=?, unit) => unit = "type"
@send external typeP: ('element, string, ~options: TypeOptions.t=?, unit) => 'element = "type"

/*
    // INFO: Uncheck checkbox(es).
    // LINK: https://docs.cypress.io/api/commands/uncheck
 */

@send external uncheck: ('element, ~options: CheckOptions.t=?, unit) => unit = "uncheck"
@send external uncheckP: ('element, ~options: CheckOptions.t=?, unit) => 'element = "uncheck"

@send
external uncheckWithString: ('element, string, ~options: CheckOptions.t=?, unit) => unit = "uncheck"
@send
external uncheckWithStringP: ('element, string, ~options: CheckOptions.t=?, unit) => 'element =
  "uncheck"

@send
external uncheckWithArray: ('element, array<string>, ~options: CheckOptions.t=?, unit) => unit =
  "uncheck"
@send
external uncheckWithArrayP: (
  'element,
  array<string>,
  ~options: CheckOptions.t=?,
  unit,
) => 'element = "uncheck"

/*
      // INFO: Get the current URL of the page that is currently active.
      // LINK: https://docs.cypress.io/api/commands/url
 */

// HACK: Type is wrong url does not yield DOM element
@val external cyUrl: (~options: UrlOptions.t=?, unit) => 'element = "cy.url"

/*
    // INFO: Control the size and orientation of the screen for your application.
    // LINK: https://docs.cypress.io/api/commands/viewport
 */

@val
external cyViewport: (~width: int, ~height: int, ~options: ViewportOptions.t=?, unit) => unit =
  "cy.viewport"
@val
external cyViewportP: (~width: int, ~height: int, ~options: ViewportOptions.t=?, unit) => 'element =
  "cy.viewport"

@val
external cyViewportWithPreset: (
  ~preset: [
    | @as("ipad-2") #ipad2
    | @as("ipad-mini") #ipadMini
    | @as("iphone-3") #iphone3
    | @as("iphone-4") #iphone4
    | @as("iphone-5") #iphone5
    | @as("iphone-6") #iphone6
    | @as("iphone-6+") #iphone6Plus
    | @as("iphone-7") #iphone7
    | @as("iphone-8") #iphone8
    | @as("iphone-x") #iphoneX
    | @as("iphone-xr") #iphoneXR
    | @as("iphone-se2") #iphoneSE2
    | @as("macbook-11") #macbook11
    | @as("macbook-13") #macbook13
    | @as("macbook-15") #macbook15
    | @as("macbook-16") #macbook16
    | @as("samsung-note9") #samsungNote9
    | @as("samsung-s10") #samsungS10
  ],
  ~orientation: [#portrait | #landscape],
  ~options: ViewportOptions.t=?,
  unit,
) => unit = "cy.viewport"
@val
external cyViewportWithPresetP: (
  ~preset: [
    | @as("ipad-2") #ipad2
    | @as("ipad-mini") #ipadMini
    | @as("iphone-3") #iphone3
    | @as("iphone-4") #iphone4
    | @as("iphone-5") #iphone5
    | @as("iphone-6") #iphone6
    | @as("iphone-6+") #iphone6Plus
    | @as("iphone-7") #iphone7
    | @as("iphone-8") #iphone8
    | @as("iphone-x") #iphoneX
    | @as("iphone-xr") #iphoneXR
    | @as("iphone-se2") #iphoneSE2
    | @as("macbook-11") #macbook11
    | @as("macbook-13") #macbook13
    | @as("macbook-15") #macbook15
    | @as("macbook-16") #macbook16
    | @as("samsung-note9") #samsungNote9
    | @as("samsung-s10") #samsungS10
  ],
  ~orientation: [#portrait | #landscape],
  ~options: ViewportOptions.t=?,
  unit,
) => 'element = "cy.viewport"

/*
    // INFO: Visit a remote URL.
    // LINK: https://docs.cypress.io/api/commands/visit#Syntax
 */

module VisitOptions = {
  module VisitMethod = {
    type t = [#get | #post]
    let toValue = value =>
      switch value {
      | #get => "GET"
      | #post => "POST"
      }
  }

  type t<'body, 'headers, 'qs, 'auth> = {
    url: Js.null<string>,
    method: string,
    body: Js.null<'body>,
    headers: 'headers,
    qs: 'qs,
    log: bool,
    auth: Js.null<'auth>,
    failOnStatusCode: bool,
    onBeforeLoad: {.} => unit,
    onLoad: {.} => unit,
    retryOnStatusCodeFailure: bool,
    retryOnNetworkFailure: bool,
    timeout: int,
  }

  let make = (
    ~url=Js.null,
    ~method=#get,
    ~body=Js.null,
    ~headers=Js.Obj.empty(),
    ~qs=Js.Obj.empty(),
    ~log=true,
    ~auth=Js.null,
    ~failOnStatusCode=true,
    ~onBeforeLoad=_ => (),
    ~onLoad=_ => (),
    ~retryOnStatusCodeFailure=false,
    ~retryOnNetworkFailure=true,
    ~timeout=Timeouts.pageLoadTimeout,
    (),
  ) => {
    url: url,
    method: VisitMethod.toValue(method),
    body: body,
    headers: headers,
    qs: qs,
    log: log,
    auth: auth,
    failOnStatusCode: failOnStatusCode,
    onBeforeLoad: onBeforeLoad,
    onLoad: onLoad,
    retryOnStatusCodeFailure: retryOnStatusCodeFailure,
    retryOnNetworkFailure: retryOnNetworkFailure,
    timeout: timeout,
  }
}

@val
external cyVisit: (string, ~options: VisitOptions.t<'body, 'headers, 'qs, 'auth>=?, unit) => unit =
  "cy.visit"
@val external cyVisitWithOptions: VisitOptions.t<'body, 'headers, 'qs, 'auth> => unit = "cy.visit"

/*
    // INFO: Wait for a number of milliseconds or wait for an aliased resource to resolve before moving on to the next command.
    // LINK: https://docs.cypress.io/api/commands/wait
 */

module WaitOptions = {
  type t = {
    log: bool,
    timeout: int,
    requestTimeout: int,
    responseTimeout: int,
  }

  let make = (
    ~log=true,
    ~requestTimeout=Timeouts.requestTimeout,
    ~responseTimeout=Timeouts.responseTimeout,
    ~timeout=Timeouts.requestTimeout,
    (),
  ) => {
    log: log,
    timeout: timeout,
    requestTimeout: requestTimeout,
    responseTimeout: responseTimeout,
  }
}

@val external cyWait: (int, ~options: WaitOptions.t=?, unit) => unit = "cy.wait"
@val external cyWaitP: (int, ~options: WaitOptions.t=?, unit) => 'element = "cy.wait"
@val external cyWaitWithAlias: (string, ~options: WaitOptions.t=?, unit) => unit = "cy.wait"
@val external cyWaitWithAliasP: (string, ~options: WaitOptions.t=?, unit) => 'element = "cy.wait"
@val
external cyWaitWithAliases: (array<string>, ~options: WaitOptions.t=?, unit) => unit = "cy.wait"
@val
external cyWaitWithAliasesP: (array<string>, ~options: WaitOptions.t=?, unit) => 'element =
  "cy.wait"

/*
    // INFO: Get the window object of the page that is currently active.
    // LINK: https://docs.cypress.io/api/commands/window
 */
@val external cyWindow: (~options: WindowOptions.t=?, unit) => 'element = "cy.window"

/*
    // INFO: Scopes all subsequent cy commands to within this 'element. Useful when working within a particular group of 'elements such as a <form>.
    // LINK: https://docs.cypress.io/api/commands/within
 */
@send external within: ('element, unit => unit) => unit = "within"
@send external withinP: ('element, unit => unit) => 'element = "within"

/*
    // INFO: Write to a file with the specified contents.
    // LINK: https://docs.cypress.io/api/commands/writefile
 */

module WriteFileOptions = {
  type t = {
    log: bool,
    flag: [
      | #a
      | #ax
      | @as("a+") #aPlus
      | @as("ax+") #axPlus
      | @as("as") #as_
      | @as("as+") #asPlus
      | #r
      | @as("r+") #rPlus
      | @as("rs+") #rsPlus
      | #w
      | #wx
      | @as("w+") #wPlus
      | @as("wx+") #wxPlus
    ],
  }
}

@val
external cyWriteFile: (
  ~filePath: string,
  ~contents: 'a,
  ~encoding: Encoding.t=?,
  ~options: WriteFileOptions.t=?,
  unit,
) => unit = "cy.writeFile"

module Commands = {
  module AddOptions = {
    type t = {prevSubject: bool}

    let make = (~prevSubject=false, ()) => {
      prevSubject: prevSubject,
    }
  }

  // NOTE: Cypress API

  @scope(("Cypress", "Commands")) @val
  external add: (string, ~options: AddOptions.t=?, function) => unit = "add"
  // @scope(("Cypress", "Commands")) @val
  // external addWithOptions: (string, function, addOptions) => unit = "add"
  @scope(("Cypress", "Commands")) @val
  external overwrite: (string, function) => unit = "overwrite"
}

type cookiesDefaults<'a> = {preserve: 'a}

@scope(("Cypress", "Cookies")) @val external cookiesDebug: bool => unit = "debug"
@scope(("Cypress", "Cookies")) @variadic @val
external cookiesPreserveOnce: array<string> => unit = "preserveOnce"
@scope(("Cypress", "Cookies")) @val
external cookiesDefaults: cookiesDefaults<'a> => unit = "defaults"

type browserObject = {
  channel: string,
  displayName: string,
  family: string,
  isChosen: bool,
  majorVersion: int,
  name: string,
  path: string,
  version: string,
  isHeadless: bool,
  isHeaded: bool,
}

@scope("Cypress") @val external platform: string = "platform"
@scope("Cypress") @val external arch: string = "arch"
@scope("Cypress") @val external browser: browserObject = "browser"
@scope("Cypress") @val external spec: 'specObj = "browser"
@scope("Cypress") @val external testingType: string = "testingType"
@scope("Cypress") @val external version: string = "testingType"

// NOTE: Get all environment variables from configuration file (cypress.json by default)
@scope("Cypress") @val external env: unit => 'envObj = "env"
@scope("Cypress") @val external envWithString: string => Js.undefined<'value> = "env"
@scope("Cypress") @val external envWithStringAndValue: (string, 'value) => unit = "env"
@scope("Cypress") @val external envWithObject: 'obj => unit = "env"

@scope(("Cypress", "Screenshot")) @val
external screenshotDefaults: ScreenshotDefaults.t => unit = "defaults"

@scope("Cypress") @val external isBrowser: string => bool = "isBrowser"
@scope("Cypress") @val external isBrowserWithArray: array<string> => bool = "isBrowser"
// TODO: Finish filter implementation
@scope("Cypress") @val external isBrowserWithFilters: 'filter => bool = "isBrowser"

@val @module("@cypress/react") external mount: React.element => unit = "mount"

