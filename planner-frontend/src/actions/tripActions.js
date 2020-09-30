const BASEURL = "http://localhost:4000";
const gotTrips = (trips) => ({ type: "GOT_TRIPS", payload: trips });

export const fetchTrips = (userId) => {
  return (dispatch) => {

    fetch(`${BASEURL}/users/${userId}/trips`)
      .then((res) => res.json())
      .then((data) => dispatch(gotTrips(data)));
  };
};
