import React, { useState } from 'react';
import { useParams } from 'react-router-dom';

function CreateReviewForm({ book, setBook, user }) {
	let initial = {
		headline: '',
		commentary: '',
		rating: '',
	};

	const [form, setForm] = useState(initial);
	const { id } = useParams();

	// const [reviews, setReviews] = useState([]);

	const handleSubmit = (e) => {
		e.preventDefault();
		const newReview = {
			user_id: user.id,
			book_id: book.id,
			headline: form.headline,
			commentary: form.commentary,
			rating: form.rating,
		};

		fetch(`/books/${id}`, {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify(newReview),
		})
			.then((response) => response.json())
			.then((data) => {
				setForm(initial);
				setBook({ ...book, reviews: [...book.reviews, data] });
			});
	};
	let handleChange = (e) => {
		let name = e.target.name;
		let value = e.target.value;
		setForm({
			...form,
			[name]: value,
		});
	};

	return (
		<div className='review-form-container'>
			<h3>New Review</h3>
			<form className='review-form' onSubmit={handleSubmit}>
				<label>Title</label>
				<textarea
					className='input_field'
					value={form.headline}
					placeholder=''
					name='headline'
					type='text'
					onChange={handleChange}
				/>

				<label>Review</label>
				<textarea
					className='input_field'
					value={form.commentary}
					placeholder=''
					name='commentary'
					type='text'
					onChange={handleChange}
				/>

				<label>Rating</label>
				<textarea
					className='input_field'
					value={form.rating}
					placeholder=''
					name='rating'
					type='text'
					onChange={handleChange}
				/>

				<button className='review-button' id='create-review-button'>
					Submit
				</button>
			</form>
		</div>
	);
}

export default CreateReviewForm;
