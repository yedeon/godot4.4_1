extends Node2D

#Appscripts works , but not can this code activate the appscript ????

var app_url = "https://script.google.com/macros/s/AKfycbwIRJfDV***************************************c1JzhHig/exec"  # is hiden with **** this exanmple  
	
func make_http_post_request() -> void:
	var url = app_url
        var request = HTTPRequest.new()
	add_child(request)
	print(url)#, json_data)
	request.connect("request_completed", _on_request_completed)
	request.request(url,  ["Content-Type: application/json"], HTTPClient.METHOD_POST)  #try but not work -> request.request(url,  ["Content-Type: application/json"], HTTPClient.METHOD_POST,json_data )

func _on_request_completed(_result, _response_code, _headers,_body) -> void:
	print("complete")
