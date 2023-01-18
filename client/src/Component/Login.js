import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { useNavigate } from 'react-router-dom';

function Login({ onLogin }) {
	const [username, setUsername] = useState('');
	const [password, setPassword] = useState('');
	const [errors, setErrors] = useState([]);
	const [isLoading, setIsLoading] = useState(false);

	let navigate = useNavigate();
	console.log(onLogin);

	function handleSubmit(e) {
		e.preventDefault();
		setIsLoading(true);
		fetch('/login', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({ username, password }),
		}).then((r) => {
			setIsLoading(false);
			if (r.ok) {
				r.json().then((user) => {
					onLogin(user);
					navigate('/home');
				});
			} else {
				r.json().then((err) => {
					console.log(err);
					setErrors(err.errors);
				});
			}
		});
	}

	return (
		<div className="login-container">
			<h1>Login</h1>
			<form className="login-form" onSubmit={handleSubmit}>
				<label htmlFor="username">Username</label>
				<input
					className="username"
					type="text"
					id="username"
					autoComplete="off"
					value={username}
					onChange={(e) => setUsername(e.target.value)}
				/>

				<label htmlFor="password">Password</label>
				<input
					className="password"
					type="password"
					id="password"
					autoComplete="current-password"
					value={password}
					onChange={(e) => setPassword(e.target.value)}
				/>

				<button
					className="login-btn"
					variant="fill"
					color="primary"
					type="submit"
				>
					{isLoading ? 'Loading...' : 'Login'}
				</button>
				<Link to="/signup">
					<h5>Need an account? Sign up here!</h5>
				</Link>
				{/* {errors.map((err) => (
                    <error key={err}>{err}</error>
                ))} */}
			</form>
		</div>
	);
}

export default Login;
