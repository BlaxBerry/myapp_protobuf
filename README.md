# MyApp ProtoBuf

[More About proto 3](https://protobuf.dev/programming-guides/proto3/)

## Commands

```shell
make                # generate all
make gen-go         # generate go code based on proto
make gen-py         # generate python code based on proto
make gen-js         # generate javascript code based on proto
```

## Setup

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
        2. install pkg <code>protoc-gen-go</code> for Golang then add to <code>$PATH</code> 
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

## Using

### Golang

1. get pkg

```shell
go get github.com/BlaxBerry/myapp_protobuf/go/scenario
```

2. import pkg

```go
import "github.com/BlaxBerry/myapp_protobuf/go/scenario"
```

### Python

1. install pkg

```shell
pip install git+https://github.com/BlaxBerry/myapp_protobuf.git
```

2. import module

```py
from scenario.nodes_pb2 import MessageNode
```

### TypeScript

1. install pkg

```shell
yarn add git+https://github.com/BlaxBerry/myapp_protobuf.git
```

2. import type

```ts
import type { MessageNode } from "myapp_protobuf/ts/scenario/nodes";
```
