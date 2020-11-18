import React, { Component } from 'react';

class StudentCard extends Component {
    render () {
        let { name } = this.props.student
        function renderCard(name) {
            return (
                <div>
                    <h3>{name}</h3>
                </div>
            )
        }
    }
};

export default StudentCard;