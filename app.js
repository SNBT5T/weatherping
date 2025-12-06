import http from "http";

const PORT = process.env.PORT || 5000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain; charset=utf-8" });

  if (req.url === "/status") {
    res.end("STATUS: OK\n");
  } else {
    res.end("WeatherPing API is running – Sunny 25°C\n");
  }
});

server.listen(PORT, () => {
  console.log(`WeatherPing listening on http://localhost:${PORT}`);
});
