// Client ID and API key from the Developer Console
//var CLIENT_ID = '1028482518094-qdmhb35s5fru64p31pp8qt8ipl8k4phq.apps.googleusercontent.com';
//var API_KEY = 'AIzaSyBQesMiT8JqC3TTB3FbNd1Z2pAXq5bje5E';


var CLIENT_ID = '392685477120-b1836vgopic04h1udrr30qf9pilm94lv.apps.googleusercontent.com';
var API_KEY = 'AIzaSyC7Y8JxpSS815QX5l_Cv2Q2zdyZ5kDDZZ0';

// Array of API discovery doc URLs for APIs used by the quickstart
var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest"];

// Authorization scopes required by the API; multiple scopes can be
// included, separated by spaces.
var SCOPES = "https://www.googleapis.com/auth/calendar";

var authorizeButton = document.getElementById('authorize_button');
var signoutButton = document.getElementById('signout_button');

var createmeetingButton = document.getElementById('create_meeting_button');

/**
 *  On load, called to load the auth2 library and API client library.
 */
function handleClientLoad() {
    gapi.load('client:auth2', initClient);
}

/**
 *  Initializes the API client library and sets up sign-in state
 *  listeners.
 */
function initClient() {
    gapi.client.init({
        apiKey: API_KEY,
        clientId: CLIENT_ID,
        discoveryDocs: DISCOVERY_DOCS,
        scope: SCOPES
    }).then(function () {
        // Listen for sign-in state changes.
        gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

        // Handle the initial sign-in state.
        updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
        authorizeButton.onclick = handleAuthClick;
        signoutButton.onclick = handleSignoutClick;
        create_meeting_button.onclick = handleCreateMeetingClick;
        document.getElementById("create_meeting_button").style.display = "inline-block";
    }, function (error) {
        //appendPre(JSON.stringify(error, null, 2));
        console.log(JSON.stringify(error, null, 2));
        document.getElementById("create_meeting_button").style.display = "none";
    });
}

/**
 *  Called when the signed in status changes, to update the UI
 *  appropriately. After a sign-in, the API is called.
 */
function updateSigninStatus(isSignedIn) {
    if (isSignedIn) {
        authorizeButton.style.display = 'none';
        signoutButton.style.display = 'inline-block';
        listUpcomingEvents();
    } else {
        authorizeButton.style.display = 'inline-block';
        signoutButton.style.display = 'none';
    }
}
/**
    *  Sign in the user upon button click.
    */
function handleCreateMeetingClick(event) {
    let TenCuocHop = $('#TenCuocHop').val();
    let NgayHop_GoogleMeet = formatDateyyyyMMdd($('#NgayHop').val());
    let GioBatDauHop_GoogleMeet = $("#GioBatDau").val();
    let PhutBatDauHop_GoogleMeet = $("#PhutBatDau").val();
    let GioKetThucHop_GoogleMeet = $("#GioKetThuc").val();
    let PhutKetThucHop_GoogleMeet = $("#PhutKetThuc").val();
    if (NgayHop_GoogleMeet != "NaN-NaN-NaN" && TenCuocHop && NgayHop_GoogleMeet && GioBatDauHop_GoogleMeet && PhutBatDauHop_GoogleMeet && GioKetThucHop_GoogleMeet && PhutKetThucHop_GoogleMeet) {
        var event = {
            'summary': TenCuocHop,
            'location': 'Việt Nam', //'800 Howard St., San Francisco, CA 94103',
            'description': TenCuocHop,
            'start': {
                'dateTime': NgayHop_GoogleMeet + "T" + GioBatDauHop_GoogleMeet + ":" + PhutBatDauHop_GoogleMeet + ":00" + "+07:00", //'2021-11-05T21:30:00+07:00',
                'timeZone': 'Asia/Ho_Chi_Minh'
            },
            'end': {
                'dateTime': NgayHop_GoogleMeet + "T" + GioKetThucHop_GoogleMeet + ":" + PhutKetThucHop_GoogleMeet + ":00" + "+07:00", //'2021-11-06T20:00:00+07:00',
                'timeZone': 'Asia/Ho_Chi_Minh'
            },
            'recurrence': [
              'RRULE:FREQ=DAILY;COUNT=2'
            ],
            colorId: 1,
            conferenceData: {
                createRequest: {
                    requestId: TenCuocHop,
                    conferenceSolutionKey: {
                        type: "hangoutsMeet"
                    }
                }
            },
            'attendees': [
            ],
            'reminders': {
                'useDefault': false,
                'overrides': [
                  { 'method': 'email', 'minutes': 24 * 60 },
                  { 'method': 'popup', 'minutes': 10 }
                ]
            }
        };
        debugger
        console.log(event);
        var request = gapi.client.calendar.events.insert({
            'calendarId': 'primary',
            'resource': event,
            conferenceDataVersion: '1',
        });

        request.execute(function (event) {
            if (event.hangoutLink) {
                $('#GoogleMeet').val(event.hangoutLink);
            }
            else {
                alert_warning("Tạo link Google Meet thất bại !");
                console.log('Event created: ' + event.hangoutLink);
                //appendPre('Event created: ' + event.htmlLink);
                //appendPre('Event created: ' + event.hangoutLink);
            }

        });
    }
    else {
        alert_warning("Vui lòng nhập đầy đủ tên cuộc họp, ngày họp, thời gian bắt đầu, kết thúc cuộc họp !");
    }


}

/**
 *  Sign in the user upon button click.
 */
function handleAuthClick(event) {
    gapi.auth2.getAuthInstance().signIn();
}

/**
 *  Sign out the user upon button click.
 */
function handleSignoutClick(event) {
    gapi.auth2.getAuthInstance().signOut();
}

/**
 * Append a pre element to the body containing the given message
 * as its text node. Used to display the results of the API call.
 *
 * param {string} message Text to be placed in pre element.
 */
function appendPre(message) {
    var pre = document.getElementById('content');
    var textContent = document.createTextNode(message + '\n');
    pre.appendChild(textContent);
    //pre.innerHTML(textContent);
}

/**
 * Print the summary and start datetime/date of the next ten events in
 * the authorized user's calendar. If no events are found an
 * appropriate message is printed.
 */
function listUpcomingEvents() {
    gapi.client.calendar.events.list({
        'calendarId': 'primary',
        'timeMin': (new Date()).toISOString(),
        'showDeleted': false,
        'singleEvents': true,
        'maxResults': 10,
        'orderBy': 'startTime'
    }).then(function (response) {
        //console.log("response", response)
        var events = response.result.items;
        //appendPre('Upcoming events:');

        if (events.length > 0) {
            for (i = 0; i < events.length; i++) {
                var event = events[i];
                var when = event.start.dateTime;
                if (!when) {
                    when = event.start.date;
                }
                //appendPre(event.summary + ' (' + when + ')')
            }
        } else {
            //appendPre('No upcoming events found.');
        }
    });
};

function formatDateyyyyMMdd(_date) {
    if (parseDate(_date)) {
        const split = _date.split('/');
        return split[2] + '-' + split[1] + '-' + split[0];
    }
    else {
        return 'NaN-NaN-NaN';
    }


    //var d = new Date(date),
    //    month = '' + (d.getMonth() + 1),
    //    day = '' + d.getDate(),
    //    year = d.getFullYear();

    //if (month.length < 2)
    //    month = '0' + month;
    //if (day.length < 2)
    //    day = '0' + day;

    //return [year, day, month].join('-');
};
function parseDate(str) {
    var t = str.match(/^(\d{2})\/(\d{2})\/(\d{4})$/);
    if (t !== null) {
        var d = +t[1],
           m = +t[2],
           y = +t[3];
        var date = new Date(y, m - 1, d);
        if (date.getFullYear() === y && date.getMonth() === m - 1) {
            return true;
        }
    }
    return false;
}