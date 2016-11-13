var Users = React.createClass({
  getInitialState() {
    return {users: []}
  },
  componentDidMount() {
    $.getJSON('/api/v1/users', (response) => {
      this.setState({users: response})
    });
    console.log('Component mounted');
  },
  render() {
    var users = this.state.users.map((user) => {
      return (
        <div>
          <h3>{user.name}</h3>
          <p>{user.email}</p>
        </div>
      )
    });
    return (
      <div>
        {users}
      </div>
    )
  }
});
