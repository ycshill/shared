import React, { Component } from 'react';
import { observer } from 'mobx-react';

@observer
class TodoFilter extends Component {
  render () {
    const { todoStore } = this.props;

    return (
      <footer>{todoStore.unfinishedLen} is unfinished</footer>
    )
  }
}

export default TodoFilter;