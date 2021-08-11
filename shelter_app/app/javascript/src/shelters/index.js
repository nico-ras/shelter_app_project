import Shelter from './shelter'

function index() {
    fetch('/shelters', {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
        }
    })
    .then(data => data.json())
    .then(shelters => {
        const target = document.querySelector('#shelters tbody')

        shelters.map(function(shelter) {
            const tr = Shelter(shelter)
            target.appendChild(tr)
        })
    })
}

export default index