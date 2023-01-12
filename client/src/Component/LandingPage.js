import React from 'react';
import Logo from './Logo.png';
import { Link } from 'react-router-dom';

function LandingPage() {
    return (
        <div>
            <img className= 'logo' src={Logo} alt="Classics List" />
            <div className="container">
                <Link to="/login">
                <button className='landing-btn'>Login</button>
                </Link>
                <Link to="/signup">
                <button className='landing-btn'>Sign up</button>
                </Link>
            </div>
        </div>
    );
}

export default LandingPage;