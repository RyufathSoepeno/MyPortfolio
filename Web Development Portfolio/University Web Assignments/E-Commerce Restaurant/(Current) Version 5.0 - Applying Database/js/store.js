document.addEventListener("DOMContentLoaded", function () {
    loadProducts();
    document.getElementById("sort-name").addEventListener("click", () => sortProducts("name"));
    document.getElementById("sort-price").addEventListener("click", () => sortProducts("price"));
    document.getElementById("sort-rating").addEventListener("click", () => sortProducts("rating"));
});

function loadProducts() {
    Papa.parse("products.csv", {
        download: true,
        header: true,
        complete: function (results) {
            displayProducts(results.data);
        }
    });
}

document.getElementById("flexForm").addEventListener("submit", function(event) {
    event.preventDefault();

    // Get form values
    const title = document.getElementById("title").value;
    const description = document.getElementById("description").value;
    const price = document.getElementById("price").value;
    const rating = document.getElementById("rating").value;
    const keywords = document.getElementById("keywords").value;
    const imageFile = document.getElementById("imageUpload").files[0];

    if (!imageFile) {
    alert("Please select an image.");
    return;
    }

    // Create a new product item
    const productItem = document.createElement("div");
    productItem.classList.add("product-item", "generated-product"); 
    
    const reader = new FileReader();
    reader.onload = function(e) {
    productItem.innerHTML = `<br><br><br>
        <img src="${e.target.result}" alt="${title}" style="width: 100%; height: 150px; object-fit: cover;">
        <h3>${title}</h3>
        <p>${description}</p>
        <p>$${price}</p>
        <p>Rating: ${rating}/10</p>
        <p><strong>Keywords: ${keywords}</p>
        <br>
            <form>
               <textarea id="" placeholder="Add Your Comment" value=" "></textarea>
               <div class="btn">
                   <input id="submit" type="submit" value="Comment">
                   
               </div> 
            </form>
        </div>
        <div class="comments">
           <p>Comments</p>
            <div id="comment-box">
            </div>`
    ;

    // Append to output container
    document.getElementById("output").appendChild(productItem);
};
reader.readAsDataURL(imageFile);

    // Clear the form
    document.getElementById("flexForm").reset();
});

document.getElementById("flexForm").addEventListener("submit", function(event) {
    event.preventDefault();

    // Get form values
    const title = document.getElementById("title").value;
    const description = document.getElementById("description").value;
    const price = document.getElementById("price").value;
    const rating = document.getElementById("rating").value;
    const keywords = document.getElementById("keywords").value;
    const imageFile = document.getElementById("imageUpload").files[0];

    const comments = document.getElementById("textarea").value;

    if (!imageFile) {
    alert("Please select an image.");
    return;
    }

    // Create a new product item
    const productItem = document.createElement("div");
    productItem.classList.add("product-item", "generated-product"); 
    
    const reader = new FileReader();
    reader.onload = function(e) {
    productItem.innerHTML = `<br><br><br>
        <img src="${e.target.result}" alt="${title}" style="width: 100%; height: 150px; object-fit: cover;">
        <h3>${title}</h3>
        <p>${description}</p>
        <p>$${price}</p>
        <p>Rating: ${rating}/10</p>
        <p><strong>Keywords: ${keywords}</p>
        <br>
            <form>
               <textarea id="" placeholder="Add Your Comment" value=" "></textarea>
               <div class="btn">
                   <input id="submit" type="submit" value="Comment">
                   
               </div> 
            </form>
        </div>
        <div class="comments">
           <p>Comments</p>
            <div id="comment-box">
            </div>`
    ;

    // Append to output container
    document.getElementById("output").appendChild(productItem);
    };
    reader.readAsDataURL(imageFile);

        // Clear the form
        document.getElementById("flexForm").reset();
    });
    document.addEventListener("DOMContentLoaded", function () {
        const form = document.querySelector(".container form");
        const textarea = form.querySelector("textarea");
        const commentBox = document.getElementById("comment-box");

        form.addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent page reload

            const commentText = textarea.value.trim();
            if (commentText !== "") {
                const commentItem = document.createElement("p");
                commentItem.textContent = commentText;
                commentBox.appendChild(commentItem);
                textarea.value = ""; // Clear input after submitting
            }
        });
    });

function displayProducts(products) {
    let productContainer = document.querySelector(".products");
    productElement.setAttribute("data-pokemon", product.Pokemon);  
    productElement.setAttribute("data-city", product.Location); 
    productContainer.innerHTML = "";

    products.forEach((product, index) => {
        let productElement = document.createElement("div");
        productElement.classList.add("product-item");
        productElement.innerHTML = `
            <img src="${product.image}" height="90px" width="90px">
            <p>#${product.id}</p>
            <h3>${product.name}</h3>
            <p>${product.description}</p>
            <span class="price">$${parseFloat(product.price).toFixed(2)}</span>
            <p>Keywords: ${product.keywords}</p>
            <br><br>
            <span class="price">Rating: ${parseFloat(product.rating).toFixed(1)}/10</span>

            <!-- Comment Section -->
            <div class="comment-box">
                <h4>Leave a Comment</h4>
                <form>
                    <textarea class="comment-input" placeholder="Add Your Comment"></textarea>
                    <div class="btn">
                        <input type="submit" class="comment-submit" value="Comment">
                        <button class="comment-clear">Del</button>
                    </div>
                </form>
                <div class="comments">
                    <h4>Comments</h4>
                    <div class="comment-box-list" id="comments-${index}"></div>
                </div>
            </div>
        `;

        productContainer.appendChild(productElement);

        // Initialize comment system for this product
        initCommentSystem(index);
    });
}

function sortProducts(criteria) {
    let productElements = document.querySelectorAll(".product-item");
    let productsArray = Array.from(productElements);

    productsArray.sort((a, b) => {
        if (criteria === "name") {
            let nameA = a.querySelector("h3").textContent.trim();
            let nameB = b.querySelector("h3").textContent.trim();
            return nameA.localeCompare(nameB);
        } 
        else if (criteria === "price") {
            let priceA = parseFloat(a.querySelector(".price").textContent.replace("$", "").trim());
            let priceB = parseFloat(b.querySelector(".price").textContent.replace("$", "").trim());
            return priceA - priceB;
        } 
        else if (criteria === "rating") {
            let ratingTextA = a.querySelector(".price:last-of-type").textContent;
            let ratingA = parseFloat(ratingTextA.match(/[\d.]+/)[0]);
            let ratingTextB = b.querySelector(".price:last-of-type").textContent;
            let ratingB = parseFloat(ratingTextB.match(/[\d.]+/)[0]);
            return ratingB - ratingA;
        }
});



// Load products when page loads
document.addEventListener("DOMContentLoaded", loadProducts);

    let productContainer = document.querySelector(".products");
    productContainer.innerHTML = "";
    productsArray.forEach(product => {
        productContainer.appendChild(product);
    });
}

