import React from 'react';
import BookContainer from './BookContainer';
function Home({books}) {
    return (
        <div>
        <h1 className="text-3xl font-bold underline text-blue-200">
        Hello world!
        </h1>
        <BookContainer books = {books}/>

        </div>
    );
}

export default Home;