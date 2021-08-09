function Shelter(shelter) {
    const tr = document.createElement('tr')
    tr.dataset.id = shelter.id

    const html = `<td>${shelter.name}</td>
    <td>${0}</td>
    <td>${0}</td>
    <td>${0}</td>
    <td><a href="/shelters/${shelter.id}" class="shelters_show">Show</a></td>
    <td><a href="/shelters/${shelter.id}/edit" class="shelters_edit">Edit</a></td>
    <td><a href="/shelters/${shelter.id}" data-confirm="Are you sure?" class="shelters_destroy">Destroy</a></td>`

    tr.innerHTML = html
    return tr
}

export default Shelter