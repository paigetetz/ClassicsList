import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import ReviewCard from './ReviewCard';
import CreateReviewForm from './CreateReviewForm';
function BookShow({ user }) {
	const [book, setBook] = useState([]);

	const { id } = useParams();

	useEffect(() => {
		fetch(`/books/${id}`)
			.then((response) => response.json())
			.then((data) => {
				setBook({ ...data });
			});
	}, [id]);
	// console.log(book);
	const reviews = book.reviews;
	console.log(reviews);

	function handleDelete(id) {
		const updateReviewArray = book.reviews.filter((review) => review.id !== id);
		setBook({ ...book, reviews: updateReviewArray });
	}
	// console.log(book.reviews);

	function renderReviews(reviews) {
		if (reviews) {
			return reviews.map((review) => (
				<ReviewCard
					key={review.id}
					review={review}
					book={book}
					handleDelete={handleDelete}
					user={user}
				/>
			));
		} else return <div></div>;
	}

	return (
		<div className='show-body'>
			<div className='show-div'>
				<div className='img-show-div'>
					<img src={book.image_url} alt={book.title} />
				</div>
				<div className='info-show-div'>
					<h1>{book.title}</h1>
					<h3>{book.author}</h3>
					<h4>{book.average_review}/5</h4>
					<h5>Genre: {book.genre}</h5>
					<h5>Original Publishing Date: {book.published}</h5>
					<h5>{book.page_count} pages</h5>
					<p>{book.summary}</p>
				</div>
			</div>
			<div className='review-container'>
				<CreateReviewForm book={book} setBook={setBook} user={user} />
				<div className='review-card-container'>{renderReviews(reviews)}</div>
			</div>
		</div>
	);
}
export default BookShow;
