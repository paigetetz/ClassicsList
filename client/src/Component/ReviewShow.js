import React, {useEffect, useState} from 'react';
import { useParams } from 'react-router-dom';
function ReviewShow(props) {
    const [review, setReview] = useState(null);
    const {id} = useParams();
        useEffect(() => {
            fetch(`/reviews/${id}`)
            .then(res => res.json())
            .then((review) => {
                setReview({...review});
            })
        },[id])
            console.log()

    return (
        <div>
        {/* <button onClick={likeButton}>Like</button> */}
        </div>
    );
}
export default ReviewShow;