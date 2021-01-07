import React, { Component } from 'react';

class StudentCard extends Component {
    render () {
        let { name } = this.props.student
        function renderCard() {
            return (
                <div>
                    <h3>{name}</h3>
                </div>
            )
        };
        return (
            {renderCard}
        )
    }
};

export default StudentCard;