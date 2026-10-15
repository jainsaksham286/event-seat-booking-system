# Seat Booking System

Event booking application built with Java 25 and Spring Boot. The browser UI lists seeded events, shows seat availability, and supports booking and cancelling a seat.

## Run locally

```powershell
.\mvnw.cmd spring-boot:run
```

Open `http://localhost:8080`. The application uses an in-memory H2 database and seeds three sample events and a development user; data is reset when the application restarts. The default `dev` profile permits unauthenticated access for local development only.

## API

| Method | Endpoint | Description |
| --- | --- | --- |
| `GET` | `/api/events` | List events and their seat availability |
| `POST` | `/api/bookings` | Book a seat with `{"eventId": 1, "seatId": 1}` |
| `DELETE` | `/api/bookings/{bookingId}` | Cancel a booking and release its seat |
