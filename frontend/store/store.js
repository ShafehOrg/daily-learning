import { createStore, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import { logger } from "redux-logger";
import { composeWithDevTools } from "redux-devtools-extension";
import RootReducer from "../reducers/root_reducer";

let middleware = [thunk];

if (process.env.NODE_ENV !== "production") {
  middleware = middleware.concat(logger);
}

export default (preloadedState = {}) =>
  createStore(
    RootReducer,
    preloadedState,
    composeWithDevTools(
      applyMiddleware(...middleware)
    )
  );
