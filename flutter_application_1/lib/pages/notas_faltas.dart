import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/horarios.dart';
import 'package:flutter_application_1/pages/secretaria.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home/home_page.dart';

class NotasFaltas extends StatelessWidget {
  const NotasFaltas({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
      appBar: AppBar(
        title: const Text('Notas e Faltas'),
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
                        title: Text(
                          'Horários',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const SecretariaPage())),
                        title: Text(
                          'Secretaria',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        onTap: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const HorariosPage())),
                        title: Text(
                          'Opções',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
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
                        title: Text(
                          'Home',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 25,
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
                          title: Text(
                            'Voce repovou em PO!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
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
            child: Container(
              height: 500,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Segundo Semestre',
                      style: GoogleFonts.inter(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 120),
                        child: Column(
                          children: [
                            Text(
                              'Matéria',
                              style: GoogleFonts.inter(
                                fontSize: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Desenvolvimento Mobile',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Linguas Estrangeiras',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Programação Orientada',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Internet das Coisas',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Arquitetura Orientada a Serviços',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Programação para Sítios para Internet',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'Banco de Dados',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 130,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Nota',
                              style: GoogleFonts.inter(
                                fontSize: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '9',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '6',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '1',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '10',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '4',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '8',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '7',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 190),
                        child: Column(
                          children: [
                            Text(
                              'Faltas',
                              style: GoogleFonts.inter(
                                fontSize: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '10',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '6',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '1',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '15',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '4',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '9',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                '7',
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
