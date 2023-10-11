//calculadora

int calculo = 0;
//recipiente
List<String> list = <String>['100ml', '200ml', '300ml', '400ml'];
int mlSelected = 0;

//checkbox
num calcRec() {
  return (calculo / mlSelected).ceil();
}
