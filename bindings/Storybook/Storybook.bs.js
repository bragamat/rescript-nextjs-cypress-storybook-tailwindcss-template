// Generated by ReScript, PLEASE EDIT WITH CARE

import StorybookJs from "./storybook.js";

function story(title, component, argTypes, excludeStoriesOpt, param) {
  var excludeStories = excludeStoriesOpt !== undefined ? excludeStoriesOpt : [];
  var ignoredStories = excludeStories.length !== 0 ? "default|".concat(excludeStories.join("|")) : "default";
  return {
          title: title,
          excludeStories: new RegExp(ignoredStories),
          component: component,
          argTypes: argTypes
        };
}

function addArgTypes(prim0, prim1) {
  StorybookJs(prim0, prim1);
}

export {
  story ,
  addArgTypes ,
}
/* ./storybook.js Not a pure module */
