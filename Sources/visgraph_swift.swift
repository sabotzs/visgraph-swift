import JavaScriptKit

@main
struct visgraph_swift {
    static func main() {
        let document = JSObject.global.document
        let div = document.createElement("div")
        div.innerText = "Hello from Swift!"
        let _ = document.body.appendChild(div)
    }
}
