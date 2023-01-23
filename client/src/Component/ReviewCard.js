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
			<div className='Rtop'>
				<h3>{review.headline}</h3>
				<h3>{review.rating}/5</h3>
			</div>
			<div className='Rbottom'>
				<h4>By: {review.username}</h4>
				<h6>{review.likes} Likes</h6>
			</div>
			<div className='btn-section'>
				<button className='btn' onClick={likeButton}>
					Like
				</button>
				<button className='btn' onClick={() => deleteButton(review.id)}>
					Delete
				</button>
				<Link to={`/review/${review.id}`}>
					<h5>Read More...</h5>
				</Link>
			</div>
		</div>
	);
}
export default ReviewCard;
