import { Link } from 'react-router-dom';
function MyReviewCard({ review }) {
	return (
		<>
			<Link to={`/review/${review.id}`}>
				<div className='my-review-card'>
					<h3>{review.headline}</h3>
					<h4>{review.book_info} </h4>
				</div>
			</Link>
		</>
	);
}

export default MyReviewCard;
