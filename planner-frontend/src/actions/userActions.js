const BASEURL = "http://localhost:4000";
const completedLogin = (user) => ({ type: "LOGGED_IN", payload: user });

export const loginRequest = (user) => {
  return (dispatch) => {
    const configObj = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Accept: "application/json",
      },
      body: JSON.stringify(user),
    };
    fetch(`${BASEURL}/users`, configObj)
      .then((res) => res.json())
      .then((data) => dispatch(completedLogin(data)));
  };
};
