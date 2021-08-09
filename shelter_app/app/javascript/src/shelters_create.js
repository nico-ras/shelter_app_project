import Shelter from './shelters_shelter.js'

function shelters_create(e) {
      
            const shelter = {
                shelter: {
                    name: e.target[1].value
                }
            }
            console.log(shelter)    
            

      fetch(e.target.action, {
            method: e.target.method,
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
                "X-CSRF-Token": document.querySelector("[name='csrf-token']").content
            },
            body: JSON.stringify(shelter)
        })
        .then(data => data.json())
        .then(shelter => {
            const tr = Shelter(shelter)
            document.querySelector('#shelters tbody').appendChild(tr)
            document.querySelector('[type="submit"]').disabled = false
        })
 }



export default shelters_create