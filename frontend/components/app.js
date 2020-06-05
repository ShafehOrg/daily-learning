import React from "react";

import { Switch, Route, Link } from "react-router-dom";
import { AuthRoute } from "../utils/route_util";

import SectionsList from "./sections_list";
import LogIn from "./log_in";
import SignUp from "./sign_up";
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
    "Chumash": [true, "/chumash"],
    "Tehillim": [true, "/tehillim"],
    "Tanya": [true, "/tanya"],
    "Hayom Yom": [true, "/hayomyom"],
    "Rambam": [true, "/rambam"],
    "Shnayim Mikra": [false, "https://www.shafeh.org/Shnayim-Mikra/"],
    "Tikkun Korim": [false, "https://www.sharshi.com/tikkunkorim/"],
    "Github": [false, "https://github.com/ShafehOrg/daily-learning"],
  };

  const nav = (
    <div>
      {Object.keys(links).map(text => {
        const [internal, link] = links[text];
        return (
          <div key={text}>
            <Link to={`${link}`} > {text} </Link>
          </div>
        )
      })}
    </div>
  );

  const session = (
    <>
      { props.loggedIn ?
        <Link to="/" onClick={props.logOut}>  Log out  </Link> :
        <>
          <Link to="/login">  Login  </Link>
          <Link to="/signup">  Sign Up  </Link>
        </>
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
                <Link to="/sections" >Sections</Link>
              );
            }}
          />
          <AuthRoute
            path={"/login"}
            component={() => <LogIn />}
          />
          <AuthRoute
            path={"/signup"}
            component={() => <SignUp />}
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