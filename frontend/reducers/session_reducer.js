import { REMOVE_USER, RECEIVE_USER_SIGNIN } from "../actions/session_actions";

/**
 * TODO: Save the session state to localStorage
 */
const defaultState = {
  currentUser: {
    name: null,
    username: null
  },
};

const sessionReducer = (state = defaultState, action) => {
  switch (action.type) {
    case RECEIVE_USER_SIGNIN:
      return {
        currentUser: {
          name: action.user.name,
          username: action.user.username
        },
      };
    case REMOVE_USER:
      return defaultState;
    default:
      return state;
  }
};

export default sessionReducer;
