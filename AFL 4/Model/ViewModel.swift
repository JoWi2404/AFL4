
import Foundation

class ViewModel: ObservableObject{
    @Published var models : Heroes = Heroes(status: 0,data: [])
    func fetch() {
        guard let url = URL(string: "https://valorant-api.com/v1/agents") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data,_, error in
            guard let data = data, error == nil else{
                return
            }
            // Convert to JSON
            do{
                let models = try
                JSONDecoder().decode(Heroes.self, from: data)
                DispatchQueue.main.async {
                    self?.models = models
                    print(self?.models)
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}
