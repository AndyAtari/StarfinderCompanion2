import React from "react"
import Character from "./Character"
import Starship from "./Starship"


class CreatorCard extends React.Component {

     
    render() {
        return (
            <div className="background">
                <div>
                    <Character />
                </div>
                <div>
                    <Starship />
                </div>
            </div>
        )
    }
}

export default CreatorCard;