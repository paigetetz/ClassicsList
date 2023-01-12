import ReviewCard from './ReviewCard.js';

function Profile({user}) {
    // const myReviews = user.reviews
    // console.log(myReviews)

    const reviews = user.reviews;
    console.log(reviews);
    function renderReviews(reviews) {
        if(reviews) {
            return reviews.map(review => <ReviewCard key={review.id} review={review} />)
        }
        else 
            return <div></div>
    }
    return (
        <div className='profile'>
            <h1>Hello, {user.username}</h1>
            <img className='profile-image' src={user.profile_pic} alt={user.username}/>
            <h3>Favorite Book: {user.fav_book}</h3>
            <h3>Favorite Genre: {user.fav_genre}</h3>
            {/* {renderReviews(reviews)} */}
        </div>
    );
}

export default Profile;