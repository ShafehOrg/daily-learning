import React from "react";
import {
  CssBaseline,
  List,
  ListItem,
  ListItemText,
} from "@material-ui/core";

export default function SectionsList(props) {
  const classes = props.useStyles();

  const [selectedIndex, setSelectedIndex] = React.useState(1);

  const handleListItemClick = (event, index) => {
    setSelectedIndex(index);
  };

  return (
    <>
      <CssBaseline />
      <List component="nav" className={classes.root}>
        <ListItem
          button
          selected={selectedIndex === 0}
          onClick={event => handleListItemClick(event, 0)}
        >
          <ListItemText primary="One" />
        </ListItem>
        <ListItem
          button
          selected={selectedIndex === 1}
          onClick={event => handleListItemClick(event, 1)}
        >
          <ListItemText primary="Two" />
        </ListItem>
      </List>
    </>
  );
}
