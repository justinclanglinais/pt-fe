import React, { Component } from 'react'

class StudentList extends Component {
    render () {
        let { students } = this.props
        function renderStudents(students) {
            students.map( student => {
                return (
                    <div>
                        
                    </div>
                )
            })
        }
        return (
            <div>

            </div>
        )
    }
}