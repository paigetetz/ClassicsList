import React, {useState} from 'react';
import { Link } from 'react-router-dom';
function ReviewCard({review, handleDelete}) {
    // const fullReview = review.commentary
    // const summary = fullReview.substring(0, 50) + "...";
    // const averageRating = review.rating.all/ review.length
    // console.log(averageRating)

    const [reviewData, setReviewData] = useState({review});

    function likeButton() {  
        fetch(`/reviews/${review.id}`, {
            method: "PATCH",
            headers: {
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({ likes: ++review.likes }),
        }).then((r) =>r.json())
        .then(((data)=>{
            setReviewData({...data})
        }))
    }

    function deleteButton(id, userId) {
        const handleDelete = async (id) => {
            try {
                const response = await fetch(`/reviews/${id}`, {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json'
                        // 'Authorization': `Bearer ${localStorage.getItem('token')}`
                    }
                });
                const data = await response.json();
                if (data.user_id === userId) {
                    // update state to remove the deleted review
                } else {
                    // display an error message to the user
                }
            } catch (error) {
                console.log(error);
            }
        }
        handleDelete(id);
    }

    

    return (
        <div className='review-card'>
            <h2>{review.headline}</h2>
            <br></br>
            <p>{review.commentary}</p>
            <br></br>
            <h4>{review.rating}/5</h4>
            <br></br>
            <h6>By: {review.user_id}</h6>
            <br></br>
            <h6>{review.likes} Likes</h6>
            <button onClick={likeButton}>Like</button>
            <button onClick={() => deleteButton(review.id, review.user_id)}>Delete</button>
            
        </div>
    );
}
export default ReviewCard
