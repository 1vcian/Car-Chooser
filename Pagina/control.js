
var tipoMacchine,tipo,carburante,posti,spesa,nome;

function ret(){
	if (document.chooser.type.value == 'Type'){
		window.alert('Inserire tipo');
		return false;
	}
	if (document.chooser.seat.value == 'Seat'){
		window.alert('Inserire posti');
		return false;
	}
	if (document.chooser.fuel.value == 'Fuel'){
		window.alert('Inserire carburante');
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

	var scelta='';
	var costosa=0;
	var diff=9999999999;
	var lunghezza=(tipoMacchine.length -1);
	//scelta della macchina ideale

	for (var i=0;i<=lunghezza;i++){
	
		if(parseInt(posti)==toint(tipoMacchine[i].seat) && (carburante==correggiCarburante(tipoMacchine[i].fuel_type1) || carburante==correggiCarburante(tipoMacchine[i].fuel_type2) || carburante==correggiCarburante(tipoMacchine[i].fuel_type1))){
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
		nome=tipoMacchine[scelta].name.toLowerCase();
		out='La macchina che più si avvicina alle tue esigenze è la '+tipoMacchine[scelta].name+' che costa '+tipoMacchine[scelta].budget;
		document.getElementById('mac').src='../Macchine/'+tipoMacchine[scelta].name.toLowerCase()+'.png';	
		var speed=8-(tofl(tipoMacchine[scelta].budget))/100000;
		document.getElementById('sfo').style.animation='animate '+speed+'s linear infinite';
	}	
	else{
		out='Non è stata trovata alcuna macchina che rispetti i tuoi parametri, sfoglia la Gallery per avere un´idea del nostro Database';
		document.getElementById('mac').src='../immagini/rz.gif';
		document.getElementById('sfo').style.animation='animate 0.8s linear infinite';
	}

	window.alert(out);
	scelta='';
	costosa=0;
	diff=9999999999;
} 


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