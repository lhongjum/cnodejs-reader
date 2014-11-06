
React = require 'react'

$ = React.DOM
$$ = require '../util/helper'

module.exports = React.createFactory React.createClass
  displayName: 'module-select'

  propTypes:
    item: React.PropTypes.string
    data: React.PropTypes.array
    onItemClick: React.PropTypes.func

  renderItems: (items) ->
    items.map (item, index) =>
      $.span
        key: index
        className: $$.concat 'item',
          if @props.chosen is item then 'is-chosen'
        onClick: => @props.onItemClick item
        item

  render: ->
    $.div className: 'module-select line',
      @renderItems @props.data