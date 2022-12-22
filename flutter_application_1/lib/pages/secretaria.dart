import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/horarios.dart';
import 'package:flutter_application_1/pages/opcoes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home/home_page.dart';
import 'notas_faltas.dart';

class SecretariaPage extends StatelessWidget {
  const SecretariaPage({super.key});

  final imageUrl =
      "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
      appBar: AppBar(
        title: const Text('Secretaria FATEC'),
      ),
      drawer: SizedBox(
        width: 420,
        child: SafeArea(
          child: Drawer(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 1),
                  colors: <Color>[
                    Color.fromRGBO(19, 103, 138, 1),
                    Color.fromRGBO(161, 200, 217, 1),
                  ],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const NotasFaltas())),
                        title: Text('Notas e Faltas',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HorariosPage())),
                        title: Text('Horários',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const SecretariaPage())),
                        title: Text('Secretaria',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const OpcoesPage())),
                        title: Text('Opções',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 550.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HomePage())),
                        leading: const Icon(
                          Icons.arrow_back_outlined,
                          color: Colors.white,
                        ),
                        title: Text('Home',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      endDrawer: SizedBox(
        width: 420,
        child: SafeArea(
          child: Drawer(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: ListTile(
                      title: Text('Notificações',
                          style: GoogleFonts.inter(
                            color: Colors.black,
                            fontSize: 25,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 6.0,
                              style: BorderStyle.solid),
                          color: const Color.fromRGBO(218, 253, 186, 0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: ListTile(
                          title: Text('Voce Passou Em BD!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 25,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              width: 6.0,
                              style: BorderStyle.solid),
                          color: const Color.fromRGBO(138, 19, 19, 0.7),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: ListTile(
                          title: Text('Voce repovou em PO!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 25,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(200),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.document_scanner_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Baixar Documentos',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.assignment_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Solicitar Rematricula',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.access_time_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Horarios de Recepção',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.phone_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Contatos Acadêmicos',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.question_mark_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Sobre a Fatec',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.place_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Endereços da Fatec',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              content: Text(
                                'Seu Arquivo Foi Baixado!',
                                style: GoogleFonts.inter(
                                  fontSize: 22,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(14),
                                    child: Text(
                                      'OK',
                                      style: GoogleFonts.inter(
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.book_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Manual do Aluno',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 350.0),
                                    child: Icon(
                                      Icons.download_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              content: Text(
                                'Seu Arquivo Foi Baixado!',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(14),
                                    child: Text(
                                      'OK',
                                      style: GoogleFonts.inter(
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        child: Container(
                          width: 740,
                          height: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(241, 241, 241, 1),
                                  width: 6.0,
                                  style: BorderStyle.solid),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Icon(
                                      Icons.menu_book_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                  Text('Regimentos Fatec',
                                      style: GoogleFonts.inter(
                                        fontSize: 25,
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 350.0),
                                    child: Icon(
                                      Icons.download_outlined,
                                      size: 50,
                                      color: Color.fromRGBO(19, 103, 138, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
