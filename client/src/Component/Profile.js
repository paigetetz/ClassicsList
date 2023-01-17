import ReviewCard from './ReviewCard.js';
import React, {useEffect, useState} from'react';
function Profile() {

    const [user, setUser] = useState({reviews:[]});

useEffect(() => {
    fetch('/me')
        .then(res => res.json())
        .then(user => setUser(user))
        .catch(error => console.log(error))
}, []);

    const myReviews = user.reviews
    console.log(myReviews)

    function renderReviews() {
        if(myReviews.length > 0) {
            return myReviews.map(review => <ReviewCard key={review.id} review={review} />)
        }
        else 
            return <h3>No Reviews Yet!</h3>
    }
    return (
        <div className='profile'>
            <div className='userContainer'>
            <h1>Hello, {user.username}</h1>
            <img className='profile-image' src={user.profile_pic} alt={user.username}/>
            <h3>Favorite Book: {user.fav_book}</h3>
            <h3>Favorite Genre: {user.fav_genre}</h3>
            </div>
            <div className='myReviews'>
                {renderReviews()}
            </div>
            
        </div>
    );
}

export default Profile;