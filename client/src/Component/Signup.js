
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
    function Signup({onSignUp}) {
    
            const [username, setUsername] = useState("");
            const [password, setPassword] = useState("");
            const [passwordConfirmation, setPasswordConfirmation] = useState("");
            const [profile_pic, setProfilePic] = useState("");
            const [fav_book, setFavBook] = useState("");
            const [fav_genre, setFavGenre] = useState("");
            const [errors, setErrors] = useState([]);
            const [isLoading, setIsLoading] = useState(false);
            // console.log(errors)
        
            let navigate = useNavigate();
        
            function handleSubmit(e) {
                e.preventDefault();
                setErrors([]);
                setIsLoading(true);
                fetch("/signup", {
                method: "POST",
                headers: {
                "Content-Type": "application/json",
                },
                body: JSON.stringify({
                username,
                password,
                passwordConfirmation,
                profile_pic: profile_pic,
                fav_book: fav_book,
                fav_genre: fav_genre
                }),
            }).then((r) => {
                setIsLoading(false);
                if (r.ok) {
                r.json().then((user) => onSignUp(user),
                navigate('/home'));
                } else {
                r.json().then((err) => {
                    console.log(err)
                    setErrors(err.errors) 
                    
                });
                
                
                }
            });
            }
        
            return (
            <form class="signup-form" onSubmit={handleSubmit}>
                <label htmlFor="username">Username</label>
                <input
                    type="text"
                    id="username"
                    autoComplete="off"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                />
            
                
                <label htmlFor="password">Password</label>
                <input
                    class="password"
                    type="password"
                    id="password"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    autoComplete="current-password"
                />
            
        
                <label htmlFor="password_confirmation">Password Confirmation</label>
                <input
                    class="password-confirmation"
                    type="password"
                    id="password_confirmation"
                    value={passwordConfirmation}
                    onChange={(e) => setPasswordConfirmation(e.target.value)}
                    autoComplete="current-password"
                />
            
                <label htmlFor="profile_pic">Profile Picture URL</label>
                <input
                    class="profile-pic"
                    type="text"
                    id="profile_pic"
                    value={profile_pic}
                    onChange={(e) => setProfilePic(e.target.value)}
                />

                <label htmlFor="fav_book">Favorite Book</label>
                <input
                    
                    type="text"
                    id="fav_book"
                    value={fav_book}
                    onChange={(e) => setFavBook(e.target.value)}
                />

                <label htmlFor="fav_genre">Favorite Genre</label>
                <input
                    type="text"
                    id="fav_genre"
                    value={fav_genre}
                    onChange={(e) => setFavBook(e.target.value)}
                />
            
        
                <button type="submit">{isLoading ? "Loading..." : "Sign Up"}</button>
        
                {/* {errors.map((err) => (
                    <error key={err}>{err}</error>
                  ))} */}
        
            </form>
            );
        }
    export default Signup;