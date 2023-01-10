import React, {useEffect, useState} from'react';
import './App.css';
import Navigation from './Component/Navigation';
import Home from './Component/Home';
import LandingPage from './Component/LandingPage';
import BookContainer from './Component/BookContainer';
import Signup from './Component/Signup';
import Login from './Component/Login';
import BookShow from './Component/BookShow';
import CreateReviewForm from './Component/CreateReviewForm';
import ReviewShow from './Component/ReviewShow';
import {Route, Routes} from 'react-router-dom';
function App() {
  const [books, setBooks] = useState([])
  const [user, setUser] = useState(null)

  useEffect(() => {
    async function fetchData() {
      const response1 = await fetch('/me');
      const user = await response1.json();
      setUser(user);

      const response2 = await fetch('/books');
      const books = await response2.json();
      setBooks(books);
    }
    fetchData();
  }, []);

  return (
    <div className="App">
      <Navigation/>
      <Routes>
        <Route path="/" element={<LandingPage/>}/>
        <Route path="/signup" element={<Signup/>}/>
        <Route path="/login" element={<Login/>}/>

        <Route path="/home" element={<Home/>}/>
        <Route path="/books" element={<BookContainer/>}/>
        <Route path="/books/:id" element={<BookShow/>}/>
        <Route path="/create-review" element={<CreateReviewForm/>}/>
        <Route path="/review/:id" element={<ReviewShow/>}/>
      </Routes>
      <Home/>
    </div>
  );
}

export default App;
