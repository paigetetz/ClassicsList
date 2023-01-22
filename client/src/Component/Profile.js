import MyReviewCard from './MyReviewCard.js';
import MyBookCard from './MyBookCard.js';
import React, { useEffect, useState } from 'react';
function Profile() {
	const [user, setUser] = useState({ reviews: [], books: [] });
	const [showBooks, setShowBooks] = useState(false);
	useEffect(() => {
		fetch('/me')
			.then((res) => res.json())
			.then((user) => setUser(user))
			.catch((error) => console.log(error));
	}, []);
	const myBooks = user.books;
	console.log(myBooks);

	function renderBooks() {
		if (myBooks.length > 0) {
			return myBooks.map((book) => {
				return <MyBookCard key={book.id} book={book} />;
			});
		} else return <h3>No Books Yet!</h3>;
	}

	const myReviews = user.reviews;

	function renderReviews() {
		if (myReviews.length > 0) {
			return myReviews.map((review) => (
				<MyReviewCard key={review.id} review={review} />
			));
		} else return <h3>No Reviews Yet!</h3>;
	}
	function handleShowBooks() {
		setShowBooks(!showBooks);
	}

	return (
		<div className='profile'>
			<div className='userContainer'>
				<div className='userInfo'>
					<div className='profile-name'>
						<img
							className='profile-image'
							src={user.profile_pic}
							alt={user.username}
						/>
						<h1>{user.username}</h1>
					</div>
					<h3>Favorite Book: {user.fav_book}</h3>
					<h3>Favorite Genre: {user.fav_genre}</h3>
				</div>
				<div className='myReviews'>
					<h2>My Reviews</h2>
					<br />
					{renderReviews()}
				</div>
			</div>
			<button className='show-books' onClick={handleShowBooks}>
				My Books
			</button>
			{showBooks ? <div className='myBooks'>{renderBooks()}</div> : <div></div>}
		</div>
	);
}

export default Profile;
