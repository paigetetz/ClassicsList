// import { Link } from 'react-router-dom';

function MyReviewCard({ review }) {
	return (
		<div className='my-review-card'>
			<h3>{review.headline}</h3>
			<h4>{review.book_info} </h4>
		</div>
	);
}

export default MyReviewCard;
