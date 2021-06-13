import React from "react"
import PropTypes from "prop-types"

class Character extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="character-card">
          <h1>Create a Character:</h1>
          <img src="/StarfinderIconic3.png" alt="Starfinder Character" class="character-image"></img>
          <div className="character-middle">
            <button>Start</button>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default Character
