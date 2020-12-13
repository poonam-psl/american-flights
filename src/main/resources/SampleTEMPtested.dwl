%dw 2.0
output application/xml
---
{
	americanFlights: {
		(payload.americanFlights.*temp map ( temp , indexOfTemp ) -> {
			americanFlight @(id: temp.americanFlight.ID as String): {
				ID: temp.americanFlight.ID,
				code: temp.americanFlight.code,
				origin: temp.americanFlight.origin,
				destination: temp.americanFlight.destination,
				emptySeats: temp.americanFlight.emptySeats,
				plane: temp.americanFlight.plane,
				deatils : {
					price: temp.americanFlight.price,
					departureDate: temp.americanFlight.departureDate
				
				}
				
			}
		})
	}
}