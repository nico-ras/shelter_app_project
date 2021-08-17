document.addEventListener('turbolinks:load', function(){
    
    cat_fact('https://catfact.ninja/fact')
    
    const button = document.querySelector('.more_facts')

    button.addEventListener('click', function() {
        
        cat_fact('https://catfact.ninja/fact')
    
    })

    
})



 
     

function cat_fact(url) {

    fetch(url)
    .then((response) => response.json())
    .then(function(data){
        const fact = data.fact
        const node = document.createElement('div')

        node.innerHTML = `<div>
        <h5>Did you know:</h5>
        <p>${fact}</p>
    </div>`

    const main = document.querySelector('.fact_api')
    main.innerHTML = ''
         main.appendChild(node)
        console.log(data) 
         
    })

    .catch((error) => console.log(error))
    
}
