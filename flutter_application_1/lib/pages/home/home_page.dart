import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/horarios.dart';
import 'package:flutter_application_1/pages/notas_faltas.dart';
import 'package:flutter_application_1/pages/opcoes.dart';
import 'package:google_fonts/google_fonts.dart';
import '../secretaria.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imageUrl =
      "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 241, 241, 1),
      appBar: AppBar(
        title: const Text('Home'),
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
                      padding: const EdgeInsets.only(top: 550),
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
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(52, 124, 153, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 100,
                horizontal: 400,
              ),
              child: Row(children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(imageUrl))),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            textAlign: TextAlign.left,
                            'Maria Antonia',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sistemas Para Iternet',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Segundo Semestre',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'RA: 123345567879',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 500, vertical: 80),
              child: Row(
                children: [
                  const Icon(Icons.access_time_outlined, size: 300),
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Aula Hoje:',
                          style: GoogleFonts.inter(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        'Desenvolvimento Mobile.',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '19:00H - 22:30H',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Laboratório 3',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
