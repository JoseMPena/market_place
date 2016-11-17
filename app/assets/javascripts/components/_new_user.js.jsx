var NewUser = React.createClass({
  submitUser() {
    var name = this.refs.name.value;
    var email = this.refs.email.value;
    var password = this.refs.password.value;
    $.ajax({
      url: '/users',
      type: 'POST',
      data: {
        user: {
          name: name,
          email: email,
          password: password
        }
      },
      success: (response) => {
        console.log('user sent' + name + email)
      },
    });
  },

  render() {
    return (
      <div>
        <input ref='name' placeholder='User name'/>
        <input ref='email' placeholder='User email'/>
        <input ref='password' placeholder='Password'/>
        <button onClick={this.submitUser}>Submit</button>
      </div>
    )
  },
});
