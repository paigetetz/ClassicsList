import React from 'react';
import { Link } from 'react-router-dom';
function ReviewCard({review}) {
    const fullReview = review.commentary
    const summary = fullReview.substring(0, 50) + "...";
    // const averageRating = review.rating.all/ review.length
    // console.log(averageRating)
    
    return (
        <div className='review-card'>
            <h2>{review.headline}</h2>
            <br></br>
            <h4>{review.rating}/5</h4>
            <br></br>
            <h6>By: {review.user_id}</h6>
            <br></br>
            <p>{summary}</p>
            <Link to={`/review/${review.id}`}>
            <p>Continue?</p>
            </Link>
        </div>
    );
}
export default ReviewCard
