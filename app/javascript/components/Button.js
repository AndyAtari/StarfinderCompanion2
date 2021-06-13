import React from 'react';
import CreatorCard from './CreatorCard'

class Button extends React.Component {

    state = {
        showImage: false,
    }
    
    handleClick = (event) => {
        event.preventDefault();
        this.setState({ showImage: !this.state.showImage})
    };

    render() {
        return(
            <div className="center-screen">
                {!this.state.showImage && <button onClick={this.handleClick.bind(this)}>Enter</button>}
                {this.state.showImage && <CreatorCard />}
            </div>
        )
    }
}

export default Button; 