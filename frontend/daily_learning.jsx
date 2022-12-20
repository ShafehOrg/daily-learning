import React from "react";
import ReactDOM from "react-dom";
import Root from "./root";
import configureStore from "./store/store";

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");

  let store;
  if (window.currentUser) {
    const preloadedState = {
      session: {
        "currentUser": {
          name: currentUser.name,
          username: currentUser.username,
        }
      }
    };
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }
  delete window.currentUser;


  ReactDOM.render( <Root store={store} />, root );
});
