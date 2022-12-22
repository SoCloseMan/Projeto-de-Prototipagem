import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/horarios.dart';
import 'package:flutter_application_1/pages/secretaria.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home/home_page.dart';
import 'notas_faltas.dart';

class OpcoesPage extends StatelessWidget {
  const OpcoesPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    bool isChecked2 = false;
    bool isChecked3 = false;
    bool _onOff = true;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
      appBar: AppBar(
        title: const Text('Opções'),
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
                      'Opções',
                      style: GoogleFonts.inter(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Text(
                                  'Notificações',
                                  style: GoogleFonts.inter(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Checkbox(
                                    value: isChecked,
                                    onChanged: (bool? value) {}),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(children: [
                    Column(children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Text(
                                  'Alterar Senha',
                                  style: GoogleFonts.inter(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ]),
                  Row(children: [
                    Column(children: [
                      InkWell(
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
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Text(
                                  'Documentação',
                                  style: GoogleFonts.inter(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Icon(
                                  Icons.download_outlined,
                                  size: 40,
                                  color: Color.fromRGBO(19, 103, 138, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ]),
                  Row(children: [
                    Column(children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Text(
                                'Versão',
                                style: GoogleFonts.inter(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Text(
                                '5.5.0 Build 01.44.00',
                                style: GoogleFonts.inter(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
