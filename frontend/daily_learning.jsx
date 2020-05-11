import React from "react";
import ReactDOM from "react-dom";
import Root from "./root";
import configureStore from "./store/store";

/**
 * >>>>test
 */
import { allSections, oneSection } from "./utils/sections_util";
/**
 * <<<test
 */


document.addEventListener("DOMContentLoaded", () => {

  /**
  * >>>>test
  */
  window.allSections = allSections;
  window.oneSection = oneSection;
  /**
  * <<<test
  */

  const store = configureStore();
  const root = document.getElementById("root");
  ReactDOM.render( <Root store={store} />, root );
})