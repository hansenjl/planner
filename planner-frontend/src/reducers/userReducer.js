export default function userReducer(
  state = { currentUser: {}, loggedIn: false },
  action
) {
  switch (action.type) {
    case "LOGGED_IN":
      return { currentUser: action.payload, loggedIn: true };
    case "LOGGED_OUT":
      return { currentUser: {}, loggedIn: false };
    default:
      return state;
  }
}
