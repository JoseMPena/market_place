var Users = React.createClass({
  getInitialState() {
    return {users: []}
  },

  componentDidMount() {
    $.getJSON('users', (response) => {
      this.setState({users: response});
    });

    console.log('Component mounted');
  },

  render() {
    var users = this.state.users.map((user) => {
      return (
        <div key={user.id}>
          <h3>{user.name}</h3>
          <span>{user.email}</span>
        </div>
      );
    });

    return (
      <div>{users}</div>
    );
  },
});
