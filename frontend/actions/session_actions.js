import {
  getUser,
  login,
  logout,
  signup
} from "../utils/auth_api_util";

export const RECEIVE_USER = "RECEIVE_USER";
export const RECEIVE_USER_SIGNIN = "RECEIVE_USER_SIGNIN";
export const REMOVE_USER = "REMOVE_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";
export const CLEAR_SESSION_ERRORS = "CLEAR_SESSION_ERRORS";

const receiveUser = (user) => ({
  type: RECEIVE_USER,
  user,
});

const receiveUserSignin = (user) => ({
  type: RECEIVE_USER_SIGNIN,
  user,
});

const removeUser = (userId) => ({
  type: REMOVE_USER,
  userId,
});

const receiveErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors,
});

export const clearErrors = () => ({
  type: CLEAR_SESSION_ERRORS,
});

export const fetchUser = (id) => (dispatch) => {
  return getUser(id).then(
    (user) => dispatch(receiveUser(user)),
    (errors) => dispatch(receiveErrors(errors.responseJSON))
  );
};

export const createUser = (user) => (dispatch) => {
  return signup(user).then(
    (user) => dispatch(receiveUserSignin(user)),
    (errors) => dispatch(receiveErrors(errors.responseJSON))
  );
};

export const loginUser = (user) => (dispatch) => {
  return login(user).then(
    (user) => dispatch(receiveUserSignin(user)),
    (errors) => dispatch(receiveErrors(errors.responseJSON))
  );
};

export const logoutUser = (user) => (dispatch) => {
  return logout(user).then(
    (user) => dispatch(removeUser(user.id)),
    (errors) => dispatch(receiveErrors(errors.responseJSON))
  );
};