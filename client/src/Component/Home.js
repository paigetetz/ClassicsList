import React from 'react';
import BookContainer from './BookContainer';
function Home({ books }) {
	console.log(books);
	return (
		<div>
			<BookContainer books={books} />
		</div>
	);
}

export default Home;
