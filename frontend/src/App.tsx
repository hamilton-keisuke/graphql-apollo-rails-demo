import { useQuery, gql } from "@apollo/client";

const FETCH_USERS = gql`
  query {
    users {
      id
      name
      age
    }
  }
`;

interface User {
  id: string;
  name: string;
  age: number;
}

function App() {
  const { data: { users = [] } = {} } = useQuery(FETCH_USERS);

  return (
    <div>
      {users.map((user: User) => (
        <div key={user.id}>{user.name}({user.age})</div>
      ))}
    </div>
  )
}

export default App;
