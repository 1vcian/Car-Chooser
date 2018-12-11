
var tipoMacchine,tipo,carburante,posti,spesa,nome;
var scelta='';

function ret(){
	if (document.chooser.type.value == 'Type'){
		window.alert('Insert type!');
		return false;
	}
	if (document.chooser.seat.value == 'Seat'){
		window.alert('Insert seats!');
		return false;
	}
	if (document.chooser.fuel.value == 'Fuel'){
		window.alert('Insert fuel!');
		return false;
	}
	tipo=document.getElementById('tipo').value;
	carburante=document.getElementById('carburante').value;
	posti= document.getElementById('posti').value;
	spesa=parseInt(document.getElementById('range_weight').value);
	//if (tipo=='Type') window.alert('Non è stato inserito il tipo di macchina!');
	//else if (posti=='Seat') window.alert('Non sono stati inseriti il numero di posti!');
	//else if (carburante=='Fuel') window.alert('Non è stato inserito il tipo di carburante!');
	//else{
		//	window.alert(toint(spesa));
	//}

	
	var costosa=0;
	var diff=9999999999;
	var lunghezza=(tipoMacchine.length -1);
	//scelta della macchina ideale

	for (var i=0;i<=lunghezza;i++){
		if(parseInt(posti)==toint(tipoMacchine[i].seat) && (carburante==correggiCarburante(tipoMacchine[i].fuel_type1) || carburante==correggiCarburante(tipoMacchine[i].fuel_type2) || carburante==correggiCarburante(tipoMacchine[i].fuel_type3))){
			//caso budget illimitato
			if (spesa==200000){
				if(toint(tipoMacchine[i].budget)>=costosa){
					costosa=toint(tipoMacchine[i].budget);
					scelta=i;
				}
			}
			//caso budget limitato
			else{
				if((spesa-toint(tipoMacchine[i].budget))<=diff && (spesa-toint(tipoMacchine[i].budget))>=0){
					diff=(spesa-toint(tipoMacchine[i].budget));
					scelta=i;
				}	
			}		
		}
	}

	var out;
	if (scelta!=''){
		document.getElementById('scrittaid').style.display='block';
		nome=tipoMacchine[scelta].name.toLowerCase();
		document.getElementById('mac').src='../Macchine/'+tipoMacchine[scelta].name.toLowerCase()+'.png';	
		var speed=6-(tofl(tipoMacchine[scelta].budget))/100000;
		document.getElementById('sfo').style.animation='animate '+speed+'s linear infinite';
		document.getElementById('macjpg').src='../Macchine/'+tipoMacchine[scelta].name.toLowerCase()+'.jpg';	
		document.getElementById('macjpg').style.border=' 3px solid #ffdd00';
		document.getElementById('text').innerHTML="Car choosed for you is:";
		document.getElementById("marca_l").innerHTML= "Brand: " + tipoMacchine[scelta].brands +"<br>";
		document.getElementById("nome_l").innerHTML= "Name: " + tipoMacchine[scelta].name + "<br>";
		document.getElementById("tipo_l").innerHTML= "Type: " + tipoMacchine[scelta].type + "<br>";
		document.getElementById("posti_l").innerHTML= "Seats: " + tipoMacchine[scelta].seat + "<br>";
		document.getElementById("carburante_l").innerHTML= "Fuel: " + carburante + "<br>";
		document.getElementById("prezzo_l").innerHTML= "Budget: " + tipoMacchine[scelta].budget + "€" + "<br>" + "<br>";
		



	}
	else{
		document.getElementById('scrittaid').style.display='block';
			document.getElementById('mac').src='../immagini/rz.gif';
		document.getElementById('sfo').style.animation='animate 0.5s linear infinite';
		document.getElementById('macjpg').src='';	
		document.getElementById('macjpg').style.border=' 0px solid #ffdd00';
		document.getElementById('text').innerHTML= 'We are sorry but we have not found any car like this for your budget, take a look at our gallery to see all cars in our Database!';
		document.getElementById("marca_l").innerHTML= "";
		document.getElementById("nome_l").innerHTML= "";
		document.getElementById("tipo_l").innerHTML= "";
		document.getElementById("posti_l").innerHTML= "";
		document.getElementById("carburante_l").innerHTML= "";
		document.getElementById("prezzo_l").innerHTML= "";

	}
	
	
	//window.alert(out);
	scelta='';
	costosa=0;
	diff=9999999999;
} 

document.addEventListener('keydown', function(event) {

	if(event.keyCode == 38) {
		//freccia sopra
		document.getElementById('mac').style.animation='sali 0.8s';
		document.getElementById('mac').style.bottom='5%';
	}
	else if(event.keyCode == 40) {
		//freccia sotto
		document.getElementById('mac').style.animation='scendi 0.8s';
		
		document.getElementById('mac').style.bottom='0%';
	}
});
function caricaT(){
	//muovendo il mouse aggiorno la variabile globale tipo se questo è stato giàwindow.alert('forsecarico'); modificato e carico il database di quel tipo
	if (document.chooser.type.value!='Type'){
		/*
		link temporanei database:
		cabrio  		https://api.myjson.com/bins/j38p2   ftt
		city car 		https://api.myjson.com/bins/hyina   ftt
		coupe			https://api.myjson.com/bins/6na5i   ftt
		sedan			https://api.myjson.com/bins/j5duu   ftt
		station wagon 	https://api.myjson.com/bins/17k5nq  ftt
		suv				https://api.myjson.com/bins/edx0m
		van				https://api.myjson.com/bins/1fasiu
		*/
		var link;
		switch (document.chooser.type.value){
			case 'cabrio':
				link='https://api.myjson.com/bins/j38p2';
				break;
			case 'city_car':
				link='https://api.myjson.com/bins/hyina';
				break;
			case 'coupe':
				link='https://api.myjson.com/bins/6na5i';
				break;
			case 'sedan':
				link='https://api.myjson.com/bins/j5duu';
				break;
			case 'station_wagon':
				link='https://api.myjson.com/bins/17k5nq';
				break;
			case 'suv':
				link='https://api.myjson.com/bins/edx0m';
				break;
			case 'van':
				link='https://api.myjson.com/bins/1fasiu';
				break;
		}
		selectPosti();
		var carica=new XMLHttpRequest();
		carica.open('GET',link,true);
		carica.send(null);
		carica.onreadystatechange= function(){
			if (carica.readyState === 4 && carica.status === 200){
				tipoMacchine=JSON.parse(carica.responseText);
			}
		}
	}	
}

function caricaGalleria(){
	posti=parseInt(document.getElementById('posti').value);
	document.getElementById('macchina').hidden=false;
		for (var i=0;i<tipoMacchine.length -1;i++){


		if (posti==toint(tipoMacchine[i].seat)){


			document.getElementById('macchina').innerHTML+='<option value='+i+'>'+tipoMacchine[i].name+'</option>';
		}
	}
		
	
}	
function resetLista(){
	document.getElementById('macchina').innerHTML='';

}


function mostr(){
	
	if (document.getElementById('range_weight').value=='200000'){
		document.getElementById('op').innerHTML='Budget: 200000\u20AC+';
	}
	else{
		document.getElementById('op').innerHTML='Budget: '+document.getElementById('range_weight').value+'\u20AC';
	}
}

function toint(a){
	return parseInt(a.replace('.',''));
}

function tofl(a){
	return parseFloat(a.replace('.',''));
}

function correggiCarburante(c){
	return c.replace('/','_');
}
function showbutton(){
	document.getElementById('play_button').style.visibility = "visible";
	document.getElementById('play_button').disabled=false;
}
function selectPosti(){

	//controllare per ogni tipo del database quanti posti sono possibili e andare di if else
	/*
	<option value="2">2</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="7">7</option>
            <option value="8">8</option>*/
//questo if modifica le select solo per la coupe
	document.getElementById('posti').disabled=false;
		if (document.getElementById('tipo').value=='coupe'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="2">2</option> <option value="4">4</option><option value="5">5</option>';	
		}
		else if (document.getElementById('tipo').value=='cabrio'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="2">2</option> <option value="4">4</option>';
		}
		else if (document.getElementById('tipo').value=='sedan'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="4">4</option> <option value="5">5</option>';
		}
		else if (document.getElementById('tipo').value=='station_wagon'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="5">5</option>';
		}
		else if (document.getElementById('tipo').value=='city_car'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="2">2</option> <option value="4">4</option><option value="5">5</option>';
		}
		else if (document.getElementById('tipo').value=='suv'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="4">4</option><option value="5">5</option> <option value="7">7</option>';
		}
		else if (document.getElementById('tipo').value=='van'){
			document.getElementById('posti').innerHTML='<option hidden>Seat</option><option value="5">5</option> <option value="7">7</option><option value="8">8</option>';
		}
		/*
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="petrol_methane">Petrol/methane</option> <option value="hybrid">Hybrid</option><option value="electric">Electric</option>';
		}
			*/
}
function selectCarburante(){
	document.getElementById('carburante').disabled=false;
	if (document.getElementById('tipo').value=='coupe'){
		if (document.getElementById('posti').value=='2'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option>';
		}
		if (document.getElementById('posti').value=='4'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> <option value="hybrid">Hybrid</option>';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="diesel">Diesel</option> <option value="hybrid">Hybrid</option>';
		}

	}
	else if (document.getElementById('tipo').value=='cabrio'){
		if (document.getElementById('posti').value=='2'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> ';
		}
		if (document.getElementById('posti').value=='4'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> <option value="hybrid">Hybrid</option>';
		}
	}
	else if (document.getElementById('tipo').value=='sedan'){
		if (document.getElementById('posti').value=='4'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="hybrid">Hybrid</option><option value="electric">Electric</option>';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="petrol_methane">Petrol/methane</option> <option value="hybrid">Hybrid</option><option value="electric">Electric</option>';
		}
	}
	else if (document.getElementById('tipo').value=='station_wagon'){
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> <option value="hybrid">Hybrid</option>';
		}
	}
	else if (document.getElementById('tipo').value=='city_car'){
		if (document.getElementById('posti').value=='2'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="hybrid">Hybrid</option>';
		}
		if (document.getElementById('posti').value=='4'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="petrol_methane">Petrol/methane</option> <option value="electric">Electric</option>';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option> <option value="petrol_gpl">Petrol/gpl</option> <option value="petrol_methane">Petrol/methane</option> ';
		}
	}	
	else if (document.getElementById('tipo').value=='suv'){
		if (document.getElementById('posti').value=='4'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  ';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="hybrid">Hybrid</option>';
		}
		if (document.getElementById('posti').value=='7'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> <option value="hybrid">Hybrid</option>';
		}
	}
	else if (document.getElementById('tipo').value=='van'){
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option>  <option value="petrol_gpl">Petrol/gpl</option> <option value="petrol_methane">Petrol/methane</option> <option value="hybrid">Hybrid</option>';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="petrol">Petrol</option><option value="diesel">Diesel</option> <option value="petrol_methane">Petrol/methane</option> <option value="electric">Electric</option>';
		}
		if (document.getElementById('posti').value=='5'){
			document.getElementById('carburante').innerHTML='<option hidden>Fuel</option><option value="diesel">Diesel</option>';
		}
	}








	
}
function visualizzaGalleria(){
	scelta=document.getElementById('macchina').value;
	document.getElementById('scrittaid').style.display='block';
	nome=tipoMacchine[scelta].name.toLowerCase();
	document.getElementById('mac').src='../Macchine/'+tipoMacchine[scelta].name.toLowerCase()+'.png';	
	var speed=6-(tofl(tipoMacchine[scelta].budget))/100000;
	document.getElementById('sfo').style.animation='animate '+speed+'s linear infinite';
	document.getElementById('macjpg').src='../Macchine/'+tipoMacchine[scelta].name.toLowerCase()+'.jpg';	
	document.getElementById('macjpg').style.border=' 3px solid #ffdd00';
	document.getElementById("marca_l").innerHTML= "Brand: " + tipoMacchine[scelta].brands +"<br>";
	document.getElementById("nome_l").innerHTML= "Name: " + tipoMacchine[scelta].name + "<br>";
	document.getElementById("tipo_l").innerHTML= "Type: " + tipoMacchine[scelta].type + "<br>";
	document.getElementById("posti_l").innerHTML= "Seats: " + tipoMacchine[scelta].seat + "<br>";
	document.getElementById("carburante_l").innerHTML= "Fuel: " + carburante + "<br>";
	document.getElementById("prezzo_l").innerHTML= "Budget: " + tipoMacchine[scelta].budget + "€" + "<br>" + "<br>";
	

}