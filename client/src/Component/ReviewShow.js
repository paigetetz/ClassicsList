import React, {useEffect, useState} from 'react';
import { useParams } from 'react-router-dom';
function ReviewShow(props) {
    const [review, setReview] = useState(null);
    const {id} = useParams();
        useEffect(() => {
            fetch(`/reviews/${id}`)
            .then(res => res.json())
            .then((data) => {
                setReview({...data});
            })
        },[id])
            console.log(review)

    return (
        <div>
            {/* <h3>{review.headline}</h3> */}
        </div>
    );
}
export default ReviewShow;