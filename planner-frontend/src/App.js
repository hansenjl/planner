import React from "react";
import "./App.css";
import Signup from "./Signup";
import MainRouting from "./MainRouting";
import { connect } from "react-redux";

function App(props) {
  console.log(props);
  return (
    <div className="App">
      <header className="App-header">
        <h1>Activity Planner!</h1>
      </header>
      {props.loggedIn ? <MainRouting currentUser={props.currentUser} /> : <Signup />
      }
    </div>
  );
}
const mSTP = (state) => {
  console.log(state.user.loggedIn);
  return {
    loggedIn: state.user.loggedIn,
    currentUser: state.user.currentUser,
  };
};
export default connect(mSTP)(App);
