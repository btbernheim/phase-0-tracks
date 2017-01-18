1) List of Common HTTP Status Codes:

200 OK
The request has succeeded. The information returned with the response is dependent on the method used in the request.

300 Multiple Choices
The requested resource has different choices and cannot be resolved into one. For example, there may be several index.html pages depending on which language is wanted (such as Dutch).

301 Moved Permanently
The requested resource has been assigned a new permanent URI and any future references to this resource should use one of the returned URIs.

302 Found
The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.

304 Not Modified
If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. 

307 Temporary Redirect
The requested resource resides temporarily under a different URI. Since the redirection MAY be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.

400 Bad Request
The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.

401 Unauthorized
The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.

403 Forbidden
The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.

404 Not Found
The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

410 Gone
The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval.

550 Permission denied
The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

2) Get methods request data form a specified source. While Post methods submit data to be processed to a specified resource. You would use a get method when you just want to view something, while the post method would be used when you want to chnage something. ex) A search page should use GET, while a form that changes your password should use POST.

3)Cookie are a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity. It remembers stateful information for the stateless HTTP protocol.They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers. When receiving an HTTP request, a server can send a Set-Cookie header with the response. The cookie is usually stored by the browser and, afterwards, the cookie value is sent along with every request made to the same server as the content of a Cookie HTTP header.

Cookies are mainly used for three purposes:

1) Session management (user logins, shopping carts)
2) Personalization (user preferences)
3) Tracking (analyzing user behavior)



















