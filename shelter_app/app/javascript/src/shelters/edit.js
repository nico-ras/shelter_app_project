function edit(e) {

    
    
    fetch(e.target.href, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
            "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
        }
    })
    .then(data => data.json())
    .then(shelter => {
        console.log(shelter)
        const shelter_edit = document.querySelector('#shelter_edit')

        const form = document.createElement('form')
        form.className = 'shelters_update'
        form.action = `/shelters/${shelter.id}`
        form.method = 'PATCH'
        form.innerHTML = ` <p>Editar refugio</p><div class="field">
        <label for="shelter_name">Name</label>
        <input type="text" name="shelter[name]" id="shelter_name" value="${shelter.name}">
    </div>

    <div class="actions">
        <input type="submit" name="commit" value="UpdateShelter" data-disable-with="Create Shelter">
    </div>`

        shelter_edit.innerHTML = ''
        shelter_edit.appendChild(form)
    })
}



export default edit