import React, {useState} from 'react';
import { useParams } from 'react-router-dom';

function CreateReviewForm({book, setBook, user}) {

    let initial = {
        title: "",
        review: "",
        rating: ""
    }

    const [form, setForm] = useState(initial);
    const {id} = useParams();
    const handleSubmit = (e) => {
        e.preventDefault()
        const newReview = {
            user_id: user.id,
            book_id: id,
            title: form.headline,
            review: form.commentary,
            rating: form.rating
        }

        fetch(`/book/${id}`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(newReview)
        }).then(response => response.json())
            .then(data => {
                setForm(initial)
                setBook({...book, posts:[...book.reviews, data]})
        
            })
    }
    let handleChange = (e) => {
        let name = e.target.name
        let value = e.target.value
        setForm({
            ...form,
            [name]:value
        })
    }

    

    return (
        <div>
        
            <form id="form" onSubmit={handleSubmit}>

                <label>Title</label>
                <input className="input_field" value={form.headline} placeholder="" name="title" type="text" onChange={handleChange}/>

                <label>Review</label>
                <input className="input_field" value={form.commentary} placeholder="" name="review" type="text" onChange={handleChange}/>

                <label>Rating</label>
                <input className="input_field" value={form.rating} placeholder="" name="rating" type="text" onChange={handleChange}/>
                
                <button className="button" id="create-review-button">New Review</button>


            </form>

            
        </div>
    );
}


export default CreateReviewForm;