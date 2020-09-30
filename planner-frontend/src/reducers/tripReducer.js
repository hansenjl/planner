export default function tripReducer(
  state = { data: [], loading: false },
  action
) {
  switch (action.type) {
    case "GOT_TRIPS":
      return { data: action.payload, loading: false };
    case "FETCHING_TRIPS":
      return { ...state, loading: true };
    default:
      return state
  }
}
