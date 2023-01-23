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
				</div>
			</div>
		</div>
	);
}

export default ReviewShow;
