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
	window.alert(toint(document.chooser.weight.value));
	return true;


	//var tipo=document.getElementById('tipo').value;
	//var posti= document.getElementById('posti').value;
	//var carburante=document.getElementById('carburante').value;
	//var prezzo=document.getElementById('range_weight').value;
	//if (tipo=='Type') window.alert('Non è stato inserito il tipo di macchina!');
	//else if (posti=='Seat') window.alert('Non sono stati inseriti il numero di posti!');
	//else if (carburante=='Fuel') window.alert('Non è stato inserito il tipo di carburante!');
	//else{
		//	window.alert(toint(prezzo));
	//}



} function mostr(){
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