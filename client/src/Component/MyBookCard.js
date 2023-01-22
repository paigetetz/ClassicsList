import { Link } from 'react-router-dom';
function MyBookCard({ book }) {
	return (
		<Link to={`/book/${book.id}`}>
			<div className='my-book-card'>
				<h3>{book.title}</h3>
				<h3>{book.author}</h3>
				<h4>{book.average_review}/5</h4>
			</div>
		</Link>
	);
}

export default MyBookCard;
