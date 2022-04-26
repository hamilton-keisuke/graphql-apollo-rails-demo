# README

This is sample project for Rails, Graphql, ApolloClient.

# How to work

start container
```
$ make build
$ make up
```

work Rails
```
$ make bash
# bin/rails s -b 0.0.0.0
```

work Frontend(apollo client)
```
$ make bash
# cd frontend
# yarn start
```

# sample query

## query
```
query {
  users {
    name
    age
    books {
      title
    }
  }
}
```

## mutation

### createUser

```
mutation {
    createUser(input: { name: "Hoge", age: 32}) {
    user {
      id
      name
    }
  }
}
```

### updateUser

```
mutation {
  updateUser(input: {id:"10", name:"Suzuki Ichiro", age: 44 }) {
    user {
      id
      name
      age
    }
  }
}

```

### deleteUser

```
mutation {
  deleteUser(input: {id: "11"}) {
    id
  }
}
```
# cf

* https://qiita.com/soutaschool/items/2f65d9bec3753d48bbc0
* https://zenn.dev/lilac/books/37bdf5d90b5f9b/viewer/e22e29
