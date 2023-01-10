import React from 'react';

function BookCard({book}) {
    return (
        <div>
            <img src={book.image_url} alt = {book.title}/>
        </div>
    );
}

export default BookCard;