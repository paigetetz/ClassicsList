import React, { useState } from 'react';
import { Link } from 'react-router-dom';
// import { Link } from 'react-router-dom';
function ReviewCard({ review, handleDelete, user }) {
	const [reviewData, setReviewData] = useState({ review });

	// console.log(review.user.username)
	function likeButton() {
		fetch(`/reviews/${review.id}`, {
			method: 'PATCH',
			headers: {
				'Content-Type': 'application/json',
				Accept: 'application/json',
			},
			body: JSON.stringify({ likes: ++review.likes }),
		})
			.then((r) => r.json())
			.then((data) => {
				setReviewData({ ...data });
			});
	}
	function deleteButton(id) {
		handleDelete(id);
		fetch(`/reviews/${review.id}`, {
			method: 'DELETE',
			headers: {
				'Content-Type': 'application/json',
				Accept: 'application/json',
			},
		});

		// const currentUserID = user.id;
		// if (currentUserID === review.user_id) {
		//     return (
		//         <button className="delete" onClick={() => deleteButton(review.id)}>Delete</button>
		//     );
		// } else {
		//     return <div></div>;
		// }
	}

	return (
		<div className='review-card'>
			<h2>{review.headline}</h2>
			<h6>By: {review.username}</h6>

			<h4>{review.rating}/5</h4>

			<h6>{review.likes} Likes</h6>
			<button onClick={likeButton}>Like</button>
			<button className='delete' onClick={() => deleteButton(review.id)}>
				Delete
			</button>
			<Link to={`/review/${review.id}`}>
				<h5>Read More</h5>
			</Link>
		</div>
	);
}
export default ReviewCard;
