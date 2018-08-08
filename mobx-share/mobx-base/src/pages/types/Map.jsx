import React, { Component } from 'react';
import { observable, autorun } from 'mobx';

class Map extends Component {
  componentDidMount() {
    const map = observable.map({ key: "value" });
    
    autorun(() => {
      console.log(`map:${map.get('key')}`);
    })

    // 改变key的值
    map.set("key", "new value");
    // map:new value
  }

  render() {
    return (
      <div>
        <h2>Map</h2>
      </div>
    )
  }
}

export default Map;