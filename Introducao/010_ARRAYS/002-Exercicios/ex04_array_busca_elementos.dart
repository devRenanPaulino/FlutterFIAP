
void main() {
  var names = ['Alice', 'Bob', 'Charlie', 'Davi', 'Emma'];
  var searchName = 'Charlie';
  var found = false;

  for (var name in names) {
    if (name == searchName) {
      found = true;
      break;
    }
  }

  if(found) {
    print(searchName + 'foi encontrado no array!');
  } else {
    print(searchName + "não foi encontrado no array!");
  }
}