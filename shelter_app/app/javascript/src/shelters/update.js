import Shelter from './shelter'

function update(e) {
    const shelter = {
        shelter: {
            name: e.target[0].value
        }
    }

    fetch(e.target.action, {
        method: 'PATCH',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
        },
        body: JSON.stringify(shelter)
    })
    .then(data => data.json())
    .then(shelter => {
        const shelters = document.querySelector('#shelters tbody')
        const new_shelter = Shelter(shelter)
        const current_shelter = document.querySelector(`tr[data-id="${shelter.id}"]`)

        shelters.replaceChild(new_shelter, current_shelter)

        document.querySelector('#shelter_edit').innerHTML = ''
    })
}

export default update