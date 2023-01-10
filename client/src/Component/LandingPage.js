import React from 'react';
import Login from './Login';
import Signup from './Signup';
function LandingPage({setUser}) {
    return (
        <div>
            <Login onLogin= {setUser}/>
            <Signup onSignUp = {setUser}/>
        </div>
    );
}

export default LandingPage;