import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import Index from './pages/Index/Index';
import NormalObj from './pages/types/NormalObj';
import UnusualObj from './pages/types/UnusualObj';
import Array from './pages/types/Array';
import Map from './pages/types/Map';
import OriginalData from './pages/types/OriginalData';
import Computed from './pages/response/Computed';
import Autorun from './pages/response/Autorun';
import When from './pages/response/When';
import Reaction from './pages/response/Reaction';
import ActionBound from './pages/action/ActionBound';
import AsyncActions from './pages/action/AsyncActions';
import RunInAction from './pages/action/RunInAction';
import FlowAction from './pages/action/FlowAction';
import MobxReact from './pages/mobx-react/MobxReact';
import ToJSTool from './pages/tools/toJS';

class App extends Component {
  render () {
    return (
      <Router>
        <Switch>
        <Route exact path="/" component={Index} />
        <Route path="/type-normalObj" component={NormalObj} />
        <Route path="/type-unusualObj" component={UnusualObj} />
        <Route path="/type-array" component={Array} />
        <Route path="/type-map" component={Map} />
        <Route path="/type-original" component={OriginalData} />
        <Route path="/res-computed" component={Computed} />
        <Route path="/res-autorun" component={Autorun} />
        <Route path="/res-when" component={When} />
        <Route path="/res-reaction" component={Reaction} />
        <Route path="/action-bound" component={ActionBound} />
        <Route path="/action-async" component={AsyncActions} />
        <Route path="/action-run" component={RunInAction} />
        <Route path="/action-flow" component={FlowAction} />
        <Route path="/mobx-react" component={MobxReact} />
        <Route path="/tool-tojs" component={ToJSTool} />
        </Switch>
      </Router>
    )
  }
}

export default App