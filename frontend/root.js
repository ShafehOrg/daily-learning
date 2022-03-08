import React from "react";
import App from "./components/app";
import Provider from "./components/provider";

const Root = ({ store }) => {
  return (
    <Provider store={store}>
      <App />
    </Provider>
  );
}

export default Root;
