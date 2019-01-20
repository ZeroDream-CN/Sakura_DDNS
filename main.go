package main
import (
    "fmt"
    "os"
	"net/http"
	"io/ioutil"
)
func main() {
	fmt.Println(" ____        _                    ____  ____  _   _ ____  ")
	fmt.Println("/ ___|  __ _| | ___   _ _ __ __ _|  _ \\|  _ \\| \\ | / ___| ")
	fmt.Println("\\___ \\ / _` | |/ / | | | '__/ _` | | | | | | |  \\| \\___ \\ ")
	fmt.Println(" ___) | (_| |   <| |_| | | | (_| | |_| | |_| | |\\  |___) |")
	fmt.Println("|____/ \\__,_|_|\\_\\\\__,_|_|  \\__,_|____/|____/|_| \\_|____/ ")
	fmt.Println("")
	if len(os.Args) < 3 {
		fmt.Println("Invalid arguments")
		fmt.Println("")
		fmt.Println("Usage: command <username> <access_token>")
		os.Exit(0)
	} else {
		username := os.Args[1]
		token := os.Args[2]
		fmt.Println("Login with username: " + username)
		resp, err := http.Get("https://api.akkariin.com:24443/getip/")
		if err != nil {
			// handle error
		}
		defer resp.Body.Close()
		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			// handle error
		}
		ip := string(body)
		fmt.Println("IP: " + ip)
		fmt.Println("Try to connect the server...")
		data, err := http.Get("https://dmc-12.cn/?action=update&user=" + username + "&token=" + token + "&ip=" + ip)
		if err != nil {
			// handle error
		}
		defer data.Body.Close()
		stream, err := ioutil.ReadAll(data.Body)
		if err != nil {
			// handle error
		}
		result := string(stream)
		fmt.Println(result)
	}
}
