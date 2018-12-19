import React from 'react'
import h from 'react-hyperscript'

export default class App extends React.Component
  constructor: (props)->
    super arguments...
  render: ()=>
    h 'div', [
      h 'h1', 'Hello Coffee World'
      h 'p', 'FooBar'
    ]
