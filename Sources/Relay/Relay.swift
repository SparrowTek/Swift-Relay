@main
public struct Relay {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(Relay().text)
    }
}
