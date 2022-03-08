import React from "react";
import { connect } from "react-redux";
import { logoutUser } from "../actions/session_actions";
import { Link } from "react-router-dom";
import PropTypes from 'prop-types';

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser.name)
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    logOut: () => dispatch(logoutUser())
  };
};

export const Session = ({ loggedIn, logOut }) => {
  return (
    <>
      { loggedIn ?
        <Link to="/" onClick={ logOut }>  Log out  </Link> :
        <>
          <Link to="/login">  Login  </Link>
          <Link to="/signup">  Sign Up  </Link>
        </>
      }
    </>
  );
};

Session.propTypes = {
  loggedIn: PropTypes.bool.isRequired,
  logOut: PropTypes.func.isRequired,
};

Session.defaultProps = {
  loggedIn: true,
  logOut: () => {},
};

export default connect(mapStateToProps, mapDispatchToProps)(Session);