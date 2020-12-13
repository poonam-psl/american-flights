%dw 2.0
output application/java
---
payload map ( payload01 , indexOfPayload01 ) -> {
	accountID: payload01.ID,
	country: payload01.toAirport default "",
	street: payload01.airlineName default "",
	name: payload01.code1,
	city: payload01.code2 default "",
	postal: payload01.totalSeats as String default ""
}