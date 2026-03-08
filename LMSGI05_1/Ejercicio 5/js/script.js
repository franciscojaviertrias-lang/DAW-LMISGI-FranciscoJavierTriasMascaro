var app = {};

var loadOffices = function(dades) {

	app.offices = dades;

	var html = "";

	app.offices.map(office => {
		html += "<div class='office-header'>"+office.city+"</div>";
		html += "  <div class='office-body'>";
		html += "    <div class='office-image'>";
		html += "      <img src='"+office.picture+"' alt='"+office.city+"'>";
		html += "    </div>";
		html += "    <div class='office-info'>";
		html += "      <p><strong>Telèfon:</strong> "+office.phone+"</p>";
		html += "      <p><strong>Direcció:</strong> "+office.address+"</p>";
		html += "      <p><strong>Estat:</strong> "+office.state+"</p>";
		html += "      <p><strong>País:</strong> "+office.country+" - "+office.territory+"</p>";
		html += "    </div>";
		html += "  </div>";
	});
	
	document.getElementById("offices-container").innerHTML = html;
}

