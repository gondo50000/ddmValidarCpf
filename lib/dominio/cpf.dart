class CPF {
  late List<int> numerosCPF;

  CPF(String cpf) {
    if (cpf == '') throw Exception('CPF não pode ser vazio');
S
    cpf = cpf.replaceAll('.', '');
    cpf = cpf.replaceAll('-', '');
    List<String> temp = cpf.split('');
    numerosCPF = <int>[];
    for (var e in temp) {
      int numero = int.parse(e);
      numerosCPF.add(numero);
    }

    numerosCPF = cpf
        .split('')
        .map(int.parse)
        .toList(); //map percorre a lista e gera um array
  }

  bool eOnzeNumeros() {
    if (numerosCPF.length != 11) throw Exception("CPF deve possui 11 numeros");
    return true;
  }

  bool eNumerosDiferentes() {
    var eDiferente = false;
    for (var i = 0; i < 9; i++) {
      if (numerosCPF[0] != numerosCPF[i]) {
        eDiferente = true;
        break;
      }
      if (!eDiferente) throw Exception("CPF não pode ter números iguais");
      return eDiferente;
    }
  }

  bool eDigitosCorretos() {
    var eCorretos = false;
    var mult = 9;
    var resultado = 0;
    for (var cont = 9; cont >= 0; cont--) {
      resultado = resultado + (numerosCPF[cont] * mult);
      mult--;
    }
    var div = resultado % 11;
    if (numerosCPF[10] == div) {
      eCorretos = true;
    }
    if (!eCorretos) throw Exception("CPF Inválido! ");
    return eCorretos;
  }

  booleUnico() {}
}



/*CPF – não pode ser vazio ou nulo; CE
[e04] CPF – deve possuir 11 números; VL
[e05] CPF - verificar se números são diferentes; DE
[e06] CPF – verificar os dígitos verificadores; CE
[e07] CPF – deve ser único.*/
