import React from "react";

import { connect } from "react-redux";
import { logoutUser } from "../actions/session_actions";

import { Switch, Route, Link } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/route_util";
import {
  SectionsList,
  LogIn,
  SignUp,
  Chumash,
  Tehillim,
  Tanya,
  HayomYom,
  Rambam,
  Siddur,
  SiddurEdit,
} from "./components";

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
    "Chumash": "/chumash",
    "Tehillim": "/tehillim",
    "Tanya": "/tanya",
    "Hayom Yom": "/hayomyom",
    "Rambam": "/rambam",
  };

  const externalLinks = {
    "Shnayim Mikra": "/shnayimmikra",
    "Tikkun Korim": "/tikkun/online",
    "Github": "/github",
  };

  const nav = (
    <nav>
      <div className="internal-links">{Object.keys(links).map(text => {
        const link = links[text];
        return <div key={text}>
          <Link to={`${link}`} > {text} </Link>
        </div>
      })}</div>
      <br />
      external:
      <div className="external-links">{Object.keys(externalLinks).map(text => {
        const link = externalLinks[text];
        return <div key={text}>
          <Link to={`${link}`} > {text} </Link>
        </div>
      })}</div>
    </nav>
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
      {nav}
      <main >
        <Switch>
          <Route
            path={"/"}
            exact
            render={() => {
              return <Link to="/sections" >Sections</Link>;
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
            render={() => <SectionsList />}
          />
          <Route
            path={"/chumash"}
            render={() => <Chumash />}
          />
          <Route
            path={"/tehillim"}
            render={() => <Tehillim />}
          />
          <Route
            path={"/tanya"}
            render={() => <Tanya />}
          />
          <Route
            path={"/hayomyom"}
            render={() => <HayomYom />}
          />
          <Route
            path={"/rambam"}
            render={() => <Rambam />}
          />
          <Route
            exact
            path={"/siddur"}
            render={() => <Siddur />}
          />
          <ProtectedRoute
            exact
            path={"/siddur/edit"}
            component={() => <SiddurEdit />}
          />
          <Route exact path="/shnayimmikra" render={() => (window.location = "https://shafehorg.github.io/Shnayim-Mikra/")} />
          <Route exact path="/tikkun/online" render={() => (window.location = "https://www.sharshi.com/tikkunkorim/")} />
          <Route exact path="/github" render={() => (window.location = "https://github.com/ShafehOrg/daily-learning")} />
          <Route component={() => 404} />
        </Switch>
      </main>
    </div>
  );
}

export default connect(mapStateToProps, mapDispatchToProps)(App);