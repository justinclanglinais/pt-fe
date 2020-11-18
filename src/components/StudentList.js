import React, { Component } from 'react'
import StudentCard from './StudentCard.js'

let studentsAPI = [
    {
        name: "Justin"
    },
    {
        name: "Lucy"
    },
    {
        name: "Potato"
    },
    {
        name: "Otto"
    }
]

class StudentList extends Component {
    render () {
        let { students } = this.props
        function renderStudents() {
            studentsAPI.map( student => {
                return (
                    <div>
                        <StudentCard student={student} />
                    </div>
                )
            })
        };
        return (
            {renderStudents}
        )
    }
};

export default StudentList;