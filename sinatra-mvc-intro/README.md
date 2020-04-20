# Rack, The Internet, and Sinatra

OBJECTIVES

- Understand the basics of how the Internet works
- Describe the Request/Response cycle
- Describe the responsibilities within the MVC pattern
- Write Sinatra routes that return ERB templates

### The Internet
* Network Packets
* ARPANET
* `lo`

### Servers
* The web is all just text
* Domain names, IP addresses

### Clients
* What is a client?

### IP Addresses
* Everything has one
* What do routers do?

### What does a browser do?
Tools:
* ping
* nslookup
* traceroute
* curl

### Request/Response Cycle
* HTTP Methods and Resource
* CRUD
* Status codes

### Static vs. Dynamic Sites

### Rack

class App
  def call(environment_hash)
    status_code = 200
    header = {}
    body = ['hello'] # or {}

    return [status_code, header, body]
  end
end

### Sinatra

- Works with Rack
- to return a templated body (html)
- based on the environment hash at the time of call
- specifically the values for path and http method

### MVC

Model - Knows data and how to act on it

View - Displays data and how to connect to/change various pieces of data

Controller -
  * Parses what data the user wants to connect to
  * and determines from that which model actions to call on
  * and also what view template is appropriate to respond with once actions are complete

RESTAURANT ANALOGY
