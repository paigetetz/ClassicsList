import React from 'react';
import { Link } from 'react-router-dom';

function BookCard({ book }) {
	return (
		<div className='card'>
			<div className='title'></div>

			<div className='wrapper'>
				<div className='book-img'>
					<img src={book.image_url} alt={book.title} />
				</div>
				<div className='book-info'>
					<div className='book-text'>
						<h2>{book.title}</h2>
						<h3>{book.author}</h3>
						<p>{book.short}</p>
					</div>
					<div className='more_btn'>
						<p>{book.average_review}/5</p>
						<Link to={`/book/${book.id}`}>
							<button type='button'>More Info</button>
						</Link>
					</div>
				</div>
			</div>
		</div>
	);
}

export default BookCard;
