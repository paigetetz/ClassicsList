import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
// import { useNavigate } from 'react-router-dom';
function ReviewShow() {
	const [review, setReview] = useState([]);

	const { id } = useParams();

	useEffect(() => {
		fetch(`/reviews/${id}`)
			.then((response) => response.json())
			.then((data) => {
				setReview({ ...data });
			});
	}, [id]);

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
				setReview({ ...data });
			});
	}

	return (
		<div className='review-show'>
			<div className='review-div'>
				<div className='review-div-left'>
					<h2>{review.headline}</h2>
					<h3>By: {review.username}</h3>
					<img
						className='review-pic'
						src={review.profile_pic}
						alt={review.username}
					/>
					<h3>A Review of {review.book_info}</h3>
					<h4>{review.likes} Likes</h4>
				</div>
				<div className='review-div-right'>
					<h2>{review.rating}/5</h2>
					<p>Review: {review.commentary}</p>
					<button className='btn' onClick={likeButton}>
						Like
					</button>
				</div>
			</div>
		</div>
	);
}

export default ReviewShow;
