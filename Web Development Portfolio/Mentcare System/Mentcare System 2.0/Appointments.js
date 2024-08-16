document.addEventListener('DOMContentLoaded', function () {
    // Get the element where the calendar will be rendered
    var calendarEl = document.getElementById('calendar');

    // Create a new FullCalendar instance
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth', // Set the initial view to a month grid
        events: [
            // Example events, replace with dynamic data as needed
            {
                title: 'Budi Setiawan',
                start: '2024-08-15',
                description: 'I Need consultation with my doctor'
            },
            {
                title: 'Nirmala Putri',
                start: '2024-10-02',
                description: 'I am not feeling well'
            }
        ],
        eventClick: function (info) {
            // This function is triggered when an event is clicked
            // Here is where the navigation to form.html happens
            // `info.event.title` and `info.event.startStr` are passed as query parameters to the form page
            window.location.href = `form.html?name=${encodeURIComponent(info.event.title)}&dob=${encodeURIComponent(info.event.startStr)}`;
        }
    });

    // Render the calendar
    calendar.render();
});
