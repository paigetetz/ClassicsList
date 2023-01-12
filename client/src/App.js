import React, {useEffect, useState} from'react';
import './App.css';
import Navigation from './Component/Navigation';
import Home from './Component/Home';
import LandingPage from './Component/LandingPage';
import Signup from './Component/Signup';
import Login from './Component/Login';
import BookShow from './Component/BookShow';
import Profile from './Component/Profile';
import ReviewShow from './Component/ReviewShow';
import Logout from './Component/Logout';
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
  console.log(user)
  // console.log(books)
  return (
    <div className="App">
      <Navigation user={user}/>
      <Routes>
        <Route path="/" element={<LandingPage/>}/>
        <Route path="/signup" element={<Signup onSignUp={setUser}/>}/>
        <Route path="/login" element={<Login onLogin={setUser}/>}/>
        <Route path='/logout' element={<Logout user={user} setUser={setUser}/>}/>
        <Route path="profile" element={<Profile user={user}/>}/>
        <Route path="/home" element={<Home books = {books}/>}/>
        <Route path="/book/:id" element={<BookShow user={user}/>}/>
        <Route path="/review/:id" element={<ReviewShow/>}/>
      </Routes>
    </div>
  );
}

export default App;
