
React = require 'react'

$ = React.DOM

module.exports = React.createFactory React.createClass
  displayName: 'topic-card'

  render: ->
    $.div className: 'topic-card',
      'topic-card'