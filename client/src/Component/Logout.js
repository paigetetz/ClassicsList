import React from 'react';
import { useNavigate } from 'react-router-dom';
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
		<div className="logout">
			<div>
				<img src={Logo} alt="logo" />
			</div>
			<div className="logout-check">
				<h1>Are you sure you want to log out?</h1>
				<button className="logout-btn" onClick={handleLogoutClick}>
					Log Out
				</button>
			</div>
		</div>
	);
}

export default Logout;
