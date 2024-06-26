// This event listener ensures the loadCourses function runs after the DOM content is fully loaded
document.addEventListener("DOMContentLoaded", () => {
    loadCourses();
});

let courses = []; // Initialize an empty array to store course data

// Function to load courses from the Excel file
function loadCourses() {
    // Fetch the Excel file
    fetch('courses.xlsx')
        .then(response => response.arrayBuffer()) // Read the response as an array buffer
        .then(data => {
            // Parse the Excel file
            const workbook = XLSX.read(data, { type: "array" });
            const sheetName = workbook.SheetNames[0]; // Get the name of the first sheet
            const sheet = workbook.Sheets[sheetName]; // Get the first sheet
            const json = XLSX.utils.sheet_to_json(sheet); // Convert the sheet data to JSON

            courses = json; // Store the parsed data in the courses array
            displayCourses(); // Display the courses on the webpage
        });
}

// Function to display courses in the HTML table
function displayCourses() {
    const tbody = document.getElementById("coursesBody"); // Get the table body element
    tbody.innerHTML = ''; // Clear the current table contents (Similar to ClearCollect in PowerApps to define new variables)

    // Iterate over each course and create table rows
    courses.forEach(course => {
        const row = document.createElement("tr"); // Create a table row element

        // Create and append the Course ID cell
        const cellId = document.createElement("td");
        cellId.textContent = course.CourseID;
        row.appendChild(cellId);

        // Create and append the Course Name cell
        const cellName = document.createElement("td");
        cellName.textContent = course.CourseName;
        row.appendChild(cellName);

        // Create and append the Description cell
        const cellDescription = document.createElement("td");
        cellDescription.textContent = course.Description;
        row.appendChild(cellDescription);

        // Create and append the Actions cell with a delete button
        const cellActions = document.createElement("td");
        const deleteButton = document.createElement("button");
        deleteButton.textContent = "Delete";
        deleteButton.onclick = () => deleteCourse(course.CourseID); // Set the delete function to the button
        cellActions.appendChild(deleteButton);
        row.appendChild(cellActions);

        tbody.appendChild(row); // Append the row to the table body
    });
}

// Function to add a new course
function addCourse() {
    // Get the input values
    const name = document.getElementById("courseName").value;
    const description = document.getElementById("courseDescription").value;

    if (name && description) { // Check if both inputs are filled
        // Create a new course object
        const newCourse = {
            CourseID: courses.length ? Math.max(...courses.map(c => c.CourseID)) + 1 : 1, // Generate a new ID
            CourseName: name,
            Description: description
        };

        courses.push(newCourse); // Add the new course to the array
        displayCourses(); // Update the displayed courses
    }
}

// Function to delete a course by its ID
function deleteCourse(courseId) {
    courses = courses.filter(course => course.CourseID !== courseId); // Remove the course with the specified ID
    displayCourses(); // Update the displayed courses
}
