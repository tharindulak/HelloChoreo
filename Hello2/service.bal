import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Hello2",
	id: "Hello2-e940a7da-38dd-4445-bbde-4d0c9b04d3e8"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
