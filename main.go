package main

import (
  "fmt"
  "github.com/spf13/cobra"
  "./cmd/"
)

func main(){
  fmt.Println("hello wortld")
  cmd.Execute()
}
