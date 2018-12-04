import React, { Component } from 'react'

class Index extends Component {
  componentDidMount() {
    const obj = {
      name: 'lily',
      age: '26',
    }
    

    // function test(name, age) {
    //   console.log(`${name}, ${age}`)
    // }

    // test.call();
  }
  render () {
    return (
      <div>
        <p>展示call、apply、bind的例子</p>
      </div>
    )
  }
}

export default Index