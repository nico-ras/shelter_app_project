function Shelter(shelter) {
    const tr = document.createElement('tr')
    tr.dataset.id = shelter.id

    const html = `<td>${shelter.name}</td>
    <td>${shelter.animals}</td>
    <td>${shelter.adopted}</td>
    <td>${shelter.not_adopted}</td>
    <td><a href="/shelters/${shelter.id}" class="shelters_show">Show</a></td>
    <td><a href="/shelters/${shelter.id}/edit" class="shelters_edit">Edit</a></td>
    <td><a href="/shelters/${shelter.id}" data-confirm="Are you sure?" class="shelters_destroy">Destroy</a></td>
    <td><a href="/shelters/${shelter.id}/animals" class="shelters_animals">Animals</a></td>`

    tr.innerHTML = html
    return tr
}

export default Shelter