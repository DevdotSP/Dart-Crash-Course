void main() {
  var x = fun(3);
  print(x);
}

int fun(n) { //n=1
  if (n != 0) { //true
    return n + fun(n - 1); //3+2+1+fun(0)
  } else {
    return 0;
  }
}
