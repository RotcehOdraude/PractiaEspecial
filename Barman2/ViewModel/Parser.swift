
import Foundation

struct Parser {
    func parse(comp: @escaping([Drink])->()) {
        let api = URL(string: "http://janzelaznog.com/DDAM/iOS/drinks.json")
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil {
                print(error?.localizedDescription)
                return
            }
            do {
                let result = try JSONDecoder().decode([DrinkElement].self, from: data!)
                //print(result)
                comp(result)
                for drink in result {
                    print(drink) // Imprime cada elemento de la variable result
                }
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
