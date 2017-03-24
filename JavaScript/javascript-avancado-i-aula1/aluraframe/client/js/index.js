var campos = [
	document.querySelector('#data'),
	document.querySelector('#quantidade'),
	document.querySelector('#valor')
];

console.log(campos);

// select form
// when submit 
// iterate campos array 
// and create dynamically the td and tr
// add to it the input data
var tbody = document.querySelector('table tbody');

document.querySelector('.form').addEventListener('submit', function(event) {

	event.preventDefault();
	
	var tr = document.createElement('tr');

	campos.forEach(function(campo) {
		var td = document.createElement('td');

		td.textContent = campo.value;
		tr.appendChild(td);
	});

	var tdVolume = document.createElement('td');
	tdVolume.textContent = campos[1].value * campos[2].value;

	tr.appendChild(tdVolume);

	tbody.appendChild(tr);

	// adding today's date 
	var data = new Date(Date.now()).toLocaleString();
	data = data.split(" ");
	data = data[0].split("/");

	campos[0].value = data[2] + "-" + data[1] + "-" + data[0];
	campos[1].value = 1;
	campos[2].value = 0;

	campos[0].focus();
});