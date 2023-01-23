import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import ReviewCard from './ReviewCard';
import CreateReviewForm from './CreateReviewForm';
function BookShow({ user }) {
	const [book, setBook] = useState([]);
	const [showForm, setShowForm] = useState(false);

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
	function handleShowForm() {
		setShowForm(!showForm);
	}

	return (
		<div className='show-body'>
			<div className='show'>
				<div className='show-div'>
					<div className='img-show-div'>
						<img src={book.image_url} alt={book.title} />
					</div>
					<div className='info-show-div'>
						<h1>{book.title}</h1>
						<h3>{book.author}</h3>
						<h4>{book.average_review}/5</h4>
						<h5>Genre: {book.genre}</h5>
						<h5>Originally Published: {book.published}</h5>
						<h5>Pages: {book.page_count}</h5>
						<p>Summary: {book.summary}</p>
					</div>
				</div>
				<div className='review-card-container'>{renderReviews(reviews)}</div>
			</div>
			<button className='show-btn' onClick={handleShowForm}>
				New Review
			</button>
			{showForm ? (
				<CreateReviewForm book={book} setBook={setBook} user={user} />
			) : null}
		</div>
	);
}
export default BookShow;
