import { REMOVE_USER, RECEIVE_USER_SIGNIN } from "../actions/session_actions";

const defaultState = {
  currentUser: {
    id: null,
    username: null
  },
};

const sessionReducer = (state = defaultState, action) => {
  switch (action.type) {
    case RECEIVE_USER_SIGNIN:
      return {
        currentUser: {
          id: action.user.id,
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
