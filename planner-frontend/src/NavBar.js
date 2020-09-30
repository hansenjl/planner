import React from "react";
import { Link } from "react-router-dom";

const NavBar = (props) => {
  return (
    <div>
      <Link to="/trips">View Your Trips</Link>
      <Link to="/trips/new">Create a new trip</Link>
    </div>
  );
};

export default NavBar;
