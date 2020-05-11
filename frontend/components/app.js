import React from "react";
import { 
  makeStyles 
} from "@material-ui/core/styles";
import { 
  AppBar, 
  CssBaseline, 
  Toolbar, 
  Link, 
  Button 
} from "@material-ui/core";
import { Switch, Route } from "react-router-dom";
import SectionsList from "./sections_list";

const useStyles = makeStyles((theme) => ({
  "@global": {
    ul: {
      margin: 0,
      padding: 0,
      listStyle: "none",
    },
  },
  appBar: {
    borderBottom: `1px solid ${theme.palette.divider}`,
  },
  toolbar: {
    flexWrap: "wrap",
  },
  toolbarTitle: {
    flexGrow: 1,
  },
  link: {
    margin: theme.spacing(1, 1.5),
  },
  heroContent: {
    padding: theme.spacing(8, 0, 6),
  },
  cardHeader: {
    backgroundColor:
      theme.palette.type === "light"
        ? theme.palette.grey[200]
        : theme.palette.grey[700],
  },
  cardPricing: {
    display: "flex",
    justifyContent: "center",
    alignItems: "baseline",
    marginBottom: theme.spacing(2),
  },
  footer: {
    borderTop: `1px solid ${theme.palette.divider}`,
    marginTop: theme.spacing(8),
    paddingTop: theme.spacing(3),
    paddingBottom: theme.spacing(3),
    [theme.breakpoints.up("sm")]: {
      paddingTop: theme.spacing(6),
      paddingBottom: theme.spacing(6),
    },
  },
  root: {
    width: "100%",
    backgroundColor: theme.palette.background.paper,
  },
}));

export default function App() {
  const classes = useStyles();

  const [selectedIndex, setSelectedIndex] = React.useState(1);

  const handleListItemClick = (event, index) => {
    setSelectedIndex(index);
  };

  return (
    <>
      <CssBaseline />
      <AppBar
        position="static"
        color="default"
        elevation={0}
        className={classes.appBar}
      >
        <Toolbar className={classes.toolbar}>
          <Link
            variant="h6"
            color="inherit"
            noWrap
            href="#"
            className={classes.toolbarTitle}
          >
            Shafeh: Daily Learning
          </Link>
          <nav>
            <Link
              variant="button"
              color="textPrimary"
              href="https://www.shafeh.org/Shnayim-Mikra/"
              className={classes.link}
            >
              Shnayim Mikra
            </Link>
          </nav>
          <Button
            href="#/login"
            color="primary"
            variant="outlined"
            className={classes.link}
          >
            Login
          </Button>
        </Toolbar>
      </AppBar>
      <Switch>
        <Route
          path={"/"}
          exact
          render={() => {
            return (
              <Button
                href="#/sections"
                color="primary"
                variant="outlined"
                className={classes.link}
              >
                Sections
              </Button>
            );
          }}
        />
        <Route
          path={"/login"}
          render={() => {
            return <h1>Login</h1>;
          }}
        />
        <Route
          path={"/sections"}
          render={() => {
            return <SectionsList useStyles={useStyles} />;
          }}
        />
      </Switch>
    </>
  );
}
