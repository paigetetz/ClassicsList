import React from 'react';
import{Link} from "react-router-dom";

function BookCard({book}) {
    return (
        
            <div className='card'>
                <div className='title'>
                </div>

                <div className='wrapper'>
                    <div className="book-img">
                    <img src= {book.image_url} alt= {book.title}/>
                    </div>
                    <div className='book-info'>
                    <div className='book-text'>
                        <h1>{book.title}</h1>
                        <h2>{book.author}</h2>
                        <p>{book.short}</p>
                        
                    </div>
                    <div class="product-price-btn">
                        {/* <p>Review</p> */}
                        <Link to = {`/book/${book.id}`}>
                        <button type="button">More Info</button>
                        </Link>
                    </div>
                    </div>
                </div>
            </div>
    );
}

export default BookCard;