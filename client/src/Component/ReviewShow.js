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
				<div className='review-pic'>
					<img src={review.profile_pic} alt={review.username} />
				</div>
				<div className='review-show-div'>
					<h1>{review.headline}</h1>
					<h3>{review.username}</h3>
					<h4>{review.rating}/5</h4>
					<h4>{review.likes}</h4>
					<h6>A Review of {review.book_info}</h6>
					<p>Review: {review.commentary}</p>
				</div>
			</div>
		</div>
	);
}

export default ReviewShow;
