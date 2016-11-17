var NewUser = React.createClass({
  submitUser() {
    var name = this.refs.name.value;
    var email = this.refs.email.value;
    $.ajax({
      url: '/api/v1/users',
      type: 'POST',
      data: {
        user: {
          name: name,
          email: email,
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
        <button onClick={this.submitUser}>Submit</button>
      </div>
    )
  },
});
