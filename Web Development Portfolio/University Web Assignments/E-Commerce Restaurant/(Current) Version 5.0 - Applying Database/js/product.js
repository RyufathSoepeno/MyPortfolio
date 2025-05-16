document.addEventListener("DOMContentLoaded", () => {
    const container = document.getElementById("product-details");
    const pokemonName = container.dataset.pokemon;
    const city = container.dataset.city;

    // Fetch Pokémon Data
    fetch(`https://pokeapi.co/api/v2/pokemon/${pokemonName.toLowerCase()}`)
        .then(res => res.json())
        .then(data => {
            const pokemonHTML = `
                <img src="${data.sprites.front_default}" alt="${pokemonName}" style="width: 120px;">
                <p><strong>${data.name}</strong> (Type: ${data.types.map(t => t.type.name).join(", ")})</p>
            `;
            document.getElementById("pokemon-info").innerHTML = pokemonHTML;
        })
        .catch(() => {
            document.getElementById("pokemon-info").innerHTML = "<p>Pokémon data unavailable.</p>";
        });

    // Fetch Weather Data (Fahrenheit & Celsius)
    fetch(`https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=96fcffecdc6d91ab49ae97382d13ee5c&units=metric`)
        .then(res => res.json())
        .then(data => {
            const celsius = data.main.temp.toFixed(1);
            const fahrenheit = ((celsius * 9/5) + 32).toFixed(1);
            const weatherHTML = `
                <p>Location: ${data.name}</p>
                <p>Temperature: ${celsius}°C / ${fahrenheit}°F</p>
                <p>Weather: ${data.weather[0].main} - ${data.weather[0].description}</p>
            `;
            document.getElementById("weather-info").innerHTML = weatherHTML;
        })
        .catch(() => {
            document.getElementById("weather-info").innerHTML = "<p>Weather data unavailable.</p>";
        });
});