import React from 'react'
import h from 'react-hyperscript'

export default class App extends React.Component
  render: ()=>
    h 'div', [
      h 'h1', 'Hello Coffee World'
      h 'p', 'FooBarBar'
    ]
