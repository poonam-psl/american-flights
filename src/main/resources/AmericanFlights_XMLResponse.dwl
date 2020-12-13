%dw 2.0
output application/xml
---
{
	americanFlights: {
	(payload map ( payload01 , indexOfPayload01 ) -> {
		americanFlight @(id: payload01.ID,code: payload01.code1): {
			ID: payload01.ID,
	code: (payload01.code1 default "") ++ (payload01.code2 default ""),
	price: payload01.price default 0,
	departureDate: payload01.takeOffDate as String default "",
	origin: payload01.fromAirport default "",
	destination: payload01.toAirport default "",
	emptySeats: payload01.seatsAvailable default 0,
	plane: {
		"type": payload01.planeType default "",
		totalSeats: payload01.totalSeats default 0
	}
}
	
})
}
}
