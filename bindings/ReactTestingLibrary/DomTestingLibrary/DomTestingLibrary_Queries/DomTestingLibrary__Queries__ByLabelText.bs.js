// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Js_undefined from "rescript/lib/es6/js_undefined.js";
import * as Dom from "@testing-library/dom";

function makeByLabelTextOptions(selector, exact, normalizer, param) {
  return {
          selector: Js_undefined.fromOption(selector),
          exact: Js_undefined.fromOption(exact),
          normalizer: Js_undefined.fromOption(normalizer)
        };
}

function getByLabelText(options, matcher, element) {
  return Dom.getByLabelText(element, matcher.VAL, options);
}

function findByLabelText(options, matcher, element) {
  return Dom.findByLabelText(element, matcher.VAL, options);
}

export {
  makeByLabelTextOptions ,
  getByLabelText ,
  findByLabelText ,
}
/* @testing-library/dom Not a pure module */