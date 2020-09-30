import React, { useState } from "react";
import { Switch, Route } from "react-router-dom";
import Home from "./Home";
import Trips from "./Trips";
import NavBar from "./NavBar";
import NewTrip from "./NewTrip";
import Trip from "./Trip";

const MainRouting = (props) => {
  return (
    <div>
      <h1>Main Routing!</h1>
      <NavBar />
      <Switch>
        <Route exact path="/">
          <Home currentUser={props.currentUser} />
        </Route>
        <Route exact path="/trips">
          <Trips />
        </Route>
        <Route exact path="/trips/new">
          <NewTrip />
        </Route>
        <Route exact path="/trips/:id">
          <Trip />
        </Route>
      </Switch>
    </div>
  );
};

export default MainRouting;
