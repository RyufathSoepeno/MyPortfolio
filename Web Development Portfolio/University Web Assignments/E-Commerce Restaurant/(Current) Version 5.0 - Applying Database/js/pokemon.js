document.addEventListener("DOMContentLoaded", () => {
    const openWeatherApiKey = "96fcffecdc6d91ab49ae97382d13ee5c";

    const products = document.querySelectorAll(".product-item");

    products.forEach(product => {
        const city = product.dataset.city;
        const pokemonName = product.dataset.pokemon;

        const weatherDiv = document.createElement("div");
        const pokemonDiv = document.createElement("div");
        weatherDiv.className = "weather-info";
        pokemonDiv.className = "pokemon-info";

        // Pokémon API
        fetch(`https://pokeapi.co/api/v2/pokemon/${pokemonName}`)
            .then(res => {
                if (!res.ok) throw new Error("PokéAPI failed");
                return res.json();
            })
            .then(data => {
                const img = document.createElement("img");
                img.src = data.sprites.front_default;
                img.alt = data.name;
                img.width = 80;
                pokemonDiv.innerHTML = `<p>Pokémon Buddy: ${data.name}</p>`;
                pokemonDiv.appendChild(img);
            })
            .catch(err => {
                console.warn("PokéAPI error:", err);
                pokemonDiv.innerHTML = `<p>Pokémon Buddy: Unknown</p>`;
            });

        // Weather API
        fetch(`https://api.openweathermap.org/data/2.5/weather?q=${encodeURIComponent(city)}&units=metric&appid=${openWeatherApiKey}`)
            .then(res => {
                if (!res.ok) throw new Error("Weather API failed");
                return res.json();
            })
            .then(data => {
                const tempC = data.main.temp;
                const tempF = (tempC * 9/5 + 32).toFixed(2);
                const weatherCondition = data.weather[0].description;
                let weatherNote = "";
                if (weatherCondition.includes("rain") || weatherCondition.includes("storm")) {
                    weatherNote = `<p><strong>Note:</strong> Shipping might be delayed due to weather.</p>`;
                }

                weatherDiv.innerHTML = `
                    <p><strong>Weather in ${city}:</strong> ${tempC}°C / ${tempF}°F - ${weatherCondition}</p>
                    ${weatherNote}
                `;
            })
            .catch(err => {
                console.warn("Weather API error:", err);
                weatherDiv.innerHTML = `<p>Weather data unavailable for ${city}.</p>`;
            });

        // Append weather and Pokémon to product
        product.appendChild(weatherDiv);
        product.appendChild(pokemonDiv);
    });
});
