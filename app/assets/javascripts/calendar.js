$(document).ready(function() {
    $('#calendar').fullCalendar({
        events: '/supervisions.json',
        editable: true,
        header: {
            left: 'prev,next',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        dayClick: function() {
            open('supervisions/new')
        },

        eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc) {
            $('#calendar').fullCalendar('updateEvent', event);
        },

        eventResize: function(event, dayDelta, minuteDelta, revertFunc) {
            $('#calendar').fullCalendar('updateEvent', event);
        }
    });

});