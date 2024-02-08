# MyApp ProtoBuf

## Repo Links

|                                 Repo                                  | Desc                            |                 Domain                  | Port |
| :-------------------------------------------------------------------: | ------------------------------- | :-------------------------------------: | :--: |
|        [myapp_admin](https://github.com/BlaxBerry/myapp_admin)        | Admin Dashboard Pages           |     https://myapp-bff.onrender.com      | 3000 |
|     [myapp_protobuf](https://github.com/BlaxBerry/myapp_protobuf)     | Protocol Buffers Code Generator |                    -                    |  -   |
|          [myapp_bff](https://github.com/BlaxBerry/myapp_bff)          | Backend for Frontend            |     https://myapp-bff.onrender.com      | 8080 |
| [myapp_scenario_api](https://github.com/BlaxBerry/myapp_scenario_api) | Scenario App's API Server       | https://myapp-scenario-api.onrender.com | 8000 |
|    [myapp_notes_api](https://github.com/BlaxBerry/myapp_notes_api)    | Notes App's API Server          |  https://myapp_notes_api.onrender.com   | 8400 |

## Commands

```shell
make                # generate all
make gen-go         # only generate go code based on proto
make gen-ts         # only generate typescript code based on proto
```

## Setup

<details>
    <summary>
       0. setup environments
    </summary>

- Goalng
- Python
- Node.js

</details>

<details>
    <summary>
        1. install protobuf for using <code>protoc</code> command
    </summary>

```shell
# 1. install protobuf compiler
brew install protobuf

# 2. check version
protoc --version
```

</details>

<details>
    <summary>
        2. install pkg <code>protoc-gen-go</code> for generating Golang code, then add to <code>$PATH</code> 
    </summary>

```shell
# 1. install pkg
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

# 2. add path
export PATH="$PATH:$(go env GOPATH)/bin" >> ~/.zshrc
source ~/.zshrc

# 3. check pkg's position & version
which protoc-gen-go
protoc-gen-go --version
```

</details>

<details>
    <summary>
        3. install pkg <code>protoc-gen-ts</code> for generating Typescript code
    </summary>

```shell
npm install
```

</details>

## Using

### Golang

1. get pkg

```shell
go get github.com/BlaxBerry/myapp_protobuf/go/scenario@main
```

2. import pkg then use

```go
import (
    "fmt"

    scenario "github.com/BlaxBerry/myapp_protobuf/go/scenario"
)

var MockMessageNode = &scenario.MessageNode{
	Id:    11,
	Title: "xxx",
	Text:  "yyy",
}

var MockHTMLNode = &scenario.HTMLNode{
	Id:    22,
	Title: "xxx",
	Text:  "yyy",
}

func main() {
    fmt.Println(MockMessageNode.Id)
    fmt.Println(MockMessageNode.Title)
    fmt.Println(MockMessageNode.Text)
}
```

### TypeScript

1. install pkg

```shell
yarn add git+https://github.com/BlaxBerry/myapp_protobuf.git
```

2. import type then use

```ts
import { scenario } from "myapp_protobuf/ts/scenario";

const mockDataInstance = new scenario.MessageNode({
  id: 123,
  title: "xxx",
  text: "yyy",
});

console.log({
  id: mockDataInstance.id,
  title: mockDataInstance.title,
  text: mockDataInstance.text,
});
// { id: 123, title: 'xxx', text: 'yyy'}

const mockData = mockDataInstance.toObject();
console.log(mockData);
// { id: 123, title: 'xxx', text: 'yyy'}
```
