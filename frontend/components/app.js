import React, { useState } from "react";
import { useHistory } from "react-router-dom";

import { Switch, Route, Link } from "react-router-dom";
import { AuthRoute } from "../utils/route_util";

import SectionsList from "./sections_list";
import LogIn from "./log_in";
import { connect } from "react-redux";

import { logoutUser } from "../actions/session_actions";


const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.currentUser.id)
  };
};


const mapDispatchToProps = (dispatch) => {
  return {
    logOut: () => dispatch(logoutUser())
  };
};

const App = function(props) {
  
  const links = {
    "Torah": [true, "/torah"],
    "Shnayim Mikra": [false, "https://www.shafeh.org/Shnayim-Mikra/"],
    "Github": [false, "https://github.com/ShafehOrg/daily-learning"],
  };

  const nav = (
      <div>
      {Object.keys(links).map(text => {
          return (
            <div key={text}>
              {text}
            </div>
          )}
        )}
      </div>
  );

  const session = (
    <>
      { props.loggedIn ?
        <button onClick={props.logOut}>  Log out  </button> :
        <Link to="/login">  Login  </Link>
      }
    </>
  )

  return (
    <div>
      <Link to="/" > Shafeh: Daily Learning  </Link>
      {session}
      <nav>
        {nav}
      </nav>
      <main >
        <div />
        <Switch>
          <Route
            path={"/"}
            exact
            render={() => {
              return (
                <Link
                  to="/sections"
                >
                  Sections
                </Link>
              );
            }}
          />
          <AuthRoute
            path={"/login"}
            component={() => <LogIn />}
          />
          <Route
            path={"/sections"}
            render={() => {
              return <SectionsList />;
            }}
          />
        </Switch>
      </main>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(App);