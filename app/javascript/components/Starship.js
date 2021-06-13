import React from "react"
import PropTypes from "prop-types"

class Starship extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div className="starship-card">
          <h1>Build a Starship:</h1>
          <img src="/StarfinderStarship2.jpg" alt="Starfinder Starship" class="starship-image"></img>
          <div className="middle">
            <button>Start</button>
          </div>
        </div>
      </React.Fragment>
    );
  }
}

export default Starship
