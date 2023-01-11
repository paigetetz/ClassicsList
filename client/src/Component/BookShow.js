import React, {useEffect, useState} from 'react';
import { useParams } from 'react-router-dom';


function BookShow(props) {
    const [book, setBook] = useState([]);
    const {id} = useParams();

    useEffect(() => {
        fetch(`/books/${id}`)
        .then((response) => response.json())
        .then((data) => {
            setBook({...data});
        })
    },[id]);

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

            
        </div>
    );
}

export default BookShow;