import '../lib/app/public/styles.css';
import React from 'react';
import ReactDOM from 'react-dom';

var App = React.createClass({

  render: function() {
    return(<h1>Hello {this.props.name}!</h1>)
  }

});

ReactDOM.render(<App name='World'/>, document.getElementById('root'))
