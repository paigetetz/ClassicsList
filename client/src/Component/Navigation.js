import React from 'react';
import { NavLink } from 'react-router-dom';
function Navigation({user}) {
    return (
        
        <div>
            {user ? (
                <div className='nav-bar'>
                    <div>
                        <NavLink exact to='/home'>Home</NavLink>
                        <NavLink to='/create-review'>Create Review</NavLink>
                        <NavLink to='/profile'>My Profile</NavLink>
                        <NavLink to='/logout'>Logout</NavLink>
                    </div>
                    <div className = 'profile_container'>
                        <img className = 'profile_pic' src={user.profile_pic} alt={user.username} /> 
                        <h4 className='profile_greeting'>{user.username}</h4>
                    </div>
                </div>
    
            ): (
                <div></div>
            )}
            
        </div>
    );
}

export default Navigation;