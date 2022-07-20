class Endereco {
  String cep;
  String estado;
  String cidade;
  String bairro;
  String logradouro;
  String numero;
  String? complemento;

  Endereco(
    this.complemento, {
    required this.cep,
    required this.estado,
    required this.cidade,
    required this.bairro,
    required this.logradouro,
    required this.numero,
  });
}
