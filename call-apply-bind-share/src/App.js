import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Index from './pages/index/Index';

class App extends Component {
  render() {
    return (
     <Router>
       <Switch>
         <Route exact path="/" component={Index}></Route>
       </Switch>
     </Router>
    );
  }
}

export default App;
