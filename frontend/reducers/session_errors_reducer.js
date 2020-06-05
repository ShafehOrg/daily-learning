import {
  RECEIVE_SESSION_ERRORS,
  CLEAR_SESSION_ERRORS
} from "../actions/session_actions";

const _default = {
  "login": null
}

const errorsReducer = (state = _default, action) => {
  switch (action.type) {
    case RECEIVE_SESSION_ERRORS:
      return {
        "login": action.errors
      };
    case CLEAR_SESSION_ERRORS:
      return _default;
    default:
      return state;
  }
}

export default errorsReducer;