struct Worker {
    var name: String
    var age: Int
}

class Factory {
    var workers: [Worker] = []

    func addWorker(_ worker: Worker) {
        workers.append(worker)
    }
}

extension Factory {
    func f1() {
        for worker in workers {
            print("Name: \(worker.name)")
        }
    }

    func f2() {
        for i in 0...workers.count - 1 {
            print("i = \(i)")
        }
    }

    func f3() {
        for (index, value) in workers.enumerated() {
            print("Index: \(index), Value: \(value.name)")
        }
    }

    func f4() {
        for i in workers.indices {
            print("i = \(i)")
        }
    }

    func changeNames() {
        for i in workers.indices {
            workers[i].name = "New name"
        }

        workers.forEach { print($0) }
    }

    func changeAge() {
        for (index, value) in workers.enumerated() {
            workers[index].age *= 2
        }

        workers.forEach { print($0) }
    }
}

let alex = Worker(name: "Alex", age: 38)
let ivan = Worker(name: "Ivan", age: 25)
let phun = Worker(name: "Phuntiya", age: 27)

let factory = Factory()

factory.addWorker(alex)
factory.addWorker(ivan)
factory.addWorker(phun)

print("--- 1 ---")
factory.f1()

print("--- 2 ---")
factory.f2()

print("--- 3 ---")
factory.f3()

print("--- 4 ---")
factory.f4()

print("--- 5 ---")
factory.changeAge()

print("--- 6 ---")
factory.changeNames()

