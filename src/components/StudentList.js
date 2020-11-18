import React, { Component } from 'react'
import StudentCard from './src/components/StudentCard.js'

class StudentList extends Component {
    render () {
        let { students } = this.props
        function renderStudents() {
            students.map( student => {
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