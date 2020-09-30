import React, { useState } from "react";
import { connect } from "react-redux";
import { loginRequest } from "./actions/userActions";

const Signup = (props) => {
  const [email, setEmail] = useState("");
  console.log("in signup");

  const handleSubmit = (e) => {
    e.preventDefault()
    props.loginRequest({ email: email });
    setEmail("")
  };

  return (
    <div>
      <h2>Signup Here!</h2>
      <form onSubmit={handleSubmit} >
        <label>Email:</label>
        <input
          type="text"
          value={email}
          name="email"
          onChange={(e) => setEmail(e.target.value)}
        />

        <input type="submit" value="Signup or Login" />
      </form>
    </div>
  );
};

export default connect(null, { loginRequest })(Signup);
