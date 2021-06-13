import React from 'react';
import Image from './Image'

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
                {this.state.showImage && <Image />}
            </div>
        )
    }
}

export default Button; 