import React, { useState, useEffect } from "react";
import { connect } from "react-redux";
import { fetchTrips } from "./actions/tripActions";


const Trip = (props) => {
  console.log(props.trips);

  useEffect(() => {
    props.fetchTrips(props.currentUser.id);
  }, []);

  return (
    <div>
      <h2>Your Trips!</h2>
    </div>
  );
};

const mSTP = (state) => {
  return {
    currentUser: state.user.currentUser,
    trips: state.trips.data,
    loading: state.trips.loading,
  };
};

export default connect(mSTP, { fetchTrips })(Trip);
