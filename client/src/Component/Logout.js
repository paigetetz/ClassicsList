import React from 'react';
import { useNavigate } from 'react-router-dom';
import { Link } from 'react-router-dom';
import Logo from './Logo.png';
function Logout({ user, setUser }) {
	let navigate = useNavigate();

	function handleLogoutClick() {
		fetch('/logout', { method: 'DELETE' }).then((r) => {
			if (r.ok) {
				setUser(null);
				navigate('/');
			}
		});
	}

	console.log(user);
	return (
		<div className='logout'>
			<img src={Logo} alt='logo' />
			<div className='logout-check'>
				<h1>Are you sure you want to log out?</h1>
				<button className='logout-btn' onClick={handleLogoutClick}>
					Log Out
				</button>
				<Link to='/home'>
					<h3 className='not-yet'>Not yet</h3>
				</Link>
			</div>
		</div>
	);
}

export default Logout;
