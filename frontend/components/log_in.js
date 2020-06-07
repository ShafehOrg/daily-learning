import React, { useState, useEffect } from "react";
import { withRouter, Link } from "react-router-dom";
import { connect } from "react-redux";
import { loginUser, clearErrors } from "../actions/session_actions";

const mstp = (state, ownProps) => {
  return {
    errors: state.errors.login
  };
};

const mdtp = (dispatch) => {
  return {
    login: user => dispatch(loginUser(user)),
    clearErrors: () => dispatch(clearErrors())
  };
};

const LogIn = props => {
  useEffect(() => {
    return function cleanup() {
      props.clearErrors()
    }
  }, [])

  const [values, setValues] = useState({
    email: "",
    password: "",
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setValues({ ...values, [name]: value });
  };

  const handleSubmit = e => {
    e.preventDefault();
    
    props.login(values)
      .then(() => props.clearErrors())
  }

  const errors = props.errors;

  return (
      <div>
        <h1>Sign in</h1>
      <form onSubmit={handleSubmit}>
        <input
          required
          id="email"
          label="Email Address"
          name="email"
          type="email"
          onChange={handleInputChange}
          value={values.email}
        />
        <input
          required
          id="password"
          label="Password"
          name="password"
          type="password"
          onChange={handleInputChange}
          value={values.password}
        />
        {errors ?? null}
        <button>Sign In</button>
          <Link to="/signup">
            {"Don't have an account? Sign Up"}
          </Link>
        </form>
      </div>
  );
}

export default withRouter(
  connect(
    mstp,
    mdtp
  )(LogIn)
);
