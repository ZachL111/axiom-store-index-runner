@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 91, capacity: 87, latency: 13, risk: 16, weight: 7)
        precondition(Policy.score(signalcase_1) == 158)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 64, capacity: 79, latency: 8, risk: 25, weight: 10)
        precondition(Policy.score(signalcase_2) == 80)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 74, capacity: 74, latency: 27, risk: 15, weight: 10)
        precondition(Policy.score(signalcase_3) == 69)
        precondition(Policy.classify(signalcase_3) == "review")
    }
}
