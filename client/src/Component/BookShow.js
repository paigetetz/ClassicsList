import React, {useEffect, useState} from 'react';
import { useParams } from 'react-router-dom';
import ReviewCard from './ReviewCard'
import CreateReviewForm from './CreateReviewForm'
function BookShow({user}) {
    const [book, setBook] = useState([]);
    const {id} = useParams();
    useEffect(() => {
        fetch(`/books/${id}`)
        .then((response) => response.json())
        .then((data) => {
            setBook({...data});
        })
    },[id]);
    // console.log(book.reviews);
        const reviews = book.reviews;
        console.log(reviews);
        function renderReviews(reviews) {
            if(reviews) {
                return reviews.map(review => <ReviewCard key={review.id} review={review} />)
            }
            else 
                return <div></div>
        }
            
        

    return (
        <div>
            <img src={book.image_url} alt={book.title} />
            <h1>{book.title}</h1>
            <h3>{book.author}</h3>
            <h4>{book.rating}</h4>
            <h5>{book.genre}</h5>
            <h5>{book.published}</h5>
            <h5>{book.page_count}</h5>
            <p>{book.summary}</p>
            <div className='review-card-container'>
                <CreateReviewForm book={book} setBook={setBook} user={user}/>
                {renderReviews(reviews)}
            </div>
            
        </div>
    );
}
export default BookShow;