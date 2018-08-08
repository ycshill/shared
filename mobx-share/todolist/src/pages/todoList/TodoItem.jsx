import React, { Component, Fragment } from 'react';
import { observer } from 'mobx-react';

@observer
class TodoItem extends Component {

  handleCeckboxClick = () => {
    this.props.todo.toggle();
  }

  render () {
    const { todo } = this.props;
    return (
      <Fragment>
        <input
          type="checkbox"
          className="toggle"
          checked={todo.finished}
          onClick={this.handleCeckboxClick}
        />
        <span className={['title', todo.finished && 'finished'].join(' ')}>{todo.title}</span>
      </Fragment>
    )
  }
}

export default TodoItem;