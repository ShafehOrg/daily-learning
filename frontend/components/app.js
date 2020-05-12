import React from "react";
import { useHistory } from "react-router-dom";
import { makeStyles, useTheme } from "@material-ui/core/styles";
import IconButton from "@material-ui/core/IconButton";
import {
  Menu as MenuIcon,
  ChevronLeft as ChevronLeftIcon,
} from "@material-ui/icons";
import {
  AppBar,
  CssBaseline,
  Toolbar,
  Link,
  Button,
  Drawer,
  Divider,
  List,
  ListItem,
  ListItemText,
  Typography,
  Hidden
} from "@material-ui/core";
import { Switch, Route } from "react-router-dom";
import { AuthRoute } from "../utils/route_util";

import withWidth, { isWidthDown } from "@material-ui/core/withWidth";

import SectionsList from "./sections_list";
import LogIn from "./log_in";

const drawerWidth = 240;

const useStyles = makeStyles((theme) => ({
  root: {
    display: 'flex',
  },
  drawer: {
    [theme.breakpoints.up('md')]: {
      width: drawerWidth,
      flexShrink: 0,
    },
  },
  appBar: {
    [theme.breakpoints.up('md')]: {
      width: `calc(100% - ${drawerWidth}px)`,
      marginLeft: drawerWidth,
    },
  },
  menuButton: {
    marginRight: theme.spacing(2),
    [theme.breakpoints.up('md')]: {
      display: 'none',
    },
  },
  // necessary for content to be below app bar
  toolbar: theme.mixins.toolbar,
  drawerPaper: {
    width: drawerWidth,
  },
  content: {
    flexGrow: 1,
    padding: theme.spacing(3),
  },
}));

const App = function(props) {
  const propWindow = props.window;

  const classes = useStyles();
  const theme = useTheme();
  const history = useHistory();

  const [mobileOpen, setMobileOpen] = React.useState(false);

  const handleDrawerToggle = () => {
    setMobileOpen(!mobileOpen);
  };

  const container =
    propWindow !== undefined ? () => propWindow().document.body : undefined;

  const links = {
    "Login": [true, "/login"],
    "Torah": [true, "/torah"],
    "Shnayim Mikra": [false, "https://www.shafeh.org/Shnayim-Mikra/"],
    "Github": [false, "https://github.com/ShafehOrg/daily-learning"],
  };

  const handleListItemClick = (e, text) => {
    if (isWidthDown("sm", props.width)) handleDrawerToggle();
    links[text][0]
      ? history.push(links[text][1])
      : (window.open(links[text][1]));
  };

  const drawer = (
    <>
      <div className={classes.toolbar} />
      <Divider />
      <List>
        {["Login", "Torah", "Shnayim Mikra", "Github"].map((text) => (
          <ListItem
            button
            key={text}
            onClick={(event) => handleListItemClick(event, text)}
          >
            <ListItemText primary={text} />
          </ListItem>
        ))}
      </List>
    </>
  );

  return (
    <div className={classes.root}>
      <CssBaseline />
      <AppBar position="fixed" className={classes.appBar}>
        <Toolbar className={classes.toolbar}>
          <IconButton
            color="inherit"
            aria-label="open drawer"
            edge="start"
            onClick={handleDrawerToggle}
            className={classes.menuButton}
          >
            <MenuIcon />
          </IconButton>
          <Link
            variant="h6"
            color="inherit"
            noWrap
            href="#"
            className={classes.toolbarTitle}
          >
            Shafeh: Daily Learning
          </Link>
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
      <nav className={classes.drawer} aria-label="mailbox folders">
        <Hidden mdUp implementation="css">
          <Drawer
            container={container}
            variant="temporary"
            anchor={theme.direction === "rtl" ? "right" : "left"}
            open={mobileOpen}
            onClose={handleDrawerToggle}
            classes={{
              paper: classes.drawerPaper,
            }}
            ModalProps={{
              keepMounted: true, // Better open performance on mobile.
            }}
          >
            {drawer}
          </Drawer>
        </Hidden>
        <Hidden smDown implementation="css">
          <Drawer
            classes={{
              paper: classes.drawerPaper,
            }}
            variant="permanent"
            open
          >
            {drawer}
          </Drawer>
        </Hidden>
      </nav>
      <main className={classes.content}>
        <div className={classes.toolbar} />
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
          <AuthRoute
            path={"/login"}
            component={() => <LogIn />}
          />
          <Route
            path={"/sections"}
            render={() => {
              return <SectionsList useStyles={useStyles} />;
            }}
          />
        </Switch>
      </main>
    </div>
  );
}

export default withWidth()(App);