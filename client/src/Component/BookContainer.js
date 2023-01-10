import React from 'react';
import BookCard from './BookCard';
function BookContainer({books}) {
    return (
        <div>
            {
                books.map(book => <BookCard key={book.id} book={book} />)
            }
        </div>
    );
}

export default BookContainer;