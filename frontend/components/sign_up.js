import React, { useState, useEffect } from "react";
import { withRouter, Link } from "react-router-dom";
import { connect } from "react-redux";
import { createUser, clearErrors } from "../actions/session_actions";

const mstp = (state, ownProps) => {
  return {
    errors: state.errors.login
  };
};

const mdtp = (dispatch) => {
  return {
    signup: user => dispatch(createUser(user)),
    clearErrors: () => dispatch(clearErrors())
  };
};


const SignUp = props => {
  useEffect(() => {
    return function cleanup() {
      props.clearErrors()
    }
  }, [])

  const [values, setValues] = useState({
    name: "",
    username: "",
    email: "",
    password: "",
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setValues({ ...values, [name]: value });
  };

  const handleSubmit = e => {
    e.preventDefault();

    props.signup(values)
      .then(() => props.clearErrors())
  }

  const {errors} = props;

  return (
    <div>
      <h1>Sign Up</h1>
      <form onSubmit={handleSubmit}>
        name
        <input
          required
          id="name"
          label="Name"
          name="name"
          type="text"
          onChange={handleInputChange}
          value={values.name}
        />
        username
        <input
          required
          id="username"
          label="Username"
          name="username"
          type="text"
          onChange={handleInputChange}
          value={values.username}
        />
        email
        <input
          required
          id="email"
          label="Email"
          name="email"
          type="email"
          onChange={handleInputChange}
          value={values.email}
        />
        password
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
        <button>Sign Up</button>
        <Link to="/login">
          {"Already joined? Log In"}
        </Link>
      </form>
    </div>
  );
}

export default withRouter(
  connect(
    mstp,
    mdtp
  )(SignUp)
);
