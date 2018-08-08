
import React, { Component } from 'react';
import { observer, inject } from 'mobx-react';

@observer
class TodoFilterForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      inputValue: '',
    }
  }

  handleInputChange = (e) => {
    const inputValue = e.target.value;
    this.setState({
      inputValue,
    })
  }

  /**
   * @description  执行提交的时候添加数据
   * @memberof TodoFilterForm
   */
  handleSubmit = (e) => {
    e.preventDefault();

    const { todoStore } = this.props;
    const { inputValue } = this.state;

    todoStore.createTodo(inputValue);

    this.setState({
      inputValue: '',
    })
  }
  

  render() {
    return (
      <header>
        <form onSubmit={this.handleSubmit}>
          <input
            type="text"
            placeholder="what need todo"
            className="input"
            value={this.state.inputValue}
            onChange={this.handleInputChange}
          />
        </form>
      </header>
    )
  }
}

export default TodoFilterForm