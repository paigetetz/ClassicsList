import React from 'react';
import BookCard from './BookCard';
function BookContainer({ books }) {
	return (
		<div className="book-container">
			{books.map((book) => (
				<BookCard key={book.id} book={book} />
			))}
		</div>
	);
}

export default BookContainer;
