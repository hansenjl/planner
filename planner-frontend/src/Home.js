import React from "react";
import { Link } from "react-router-dom";

const Home = (props) => {
  return (
      <div>
          <h1>Welcome {props.currentUser.email}</h1>
          <Link to="/trips">My Trips</Link>
      </div>
  )}

  export default Home