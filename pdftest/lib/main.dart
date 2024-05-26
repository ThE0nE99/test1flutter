import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:html' as html; 
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html' as html; 
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

Future<void> generatePdfLetter(BuildContext context) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Row(
                children: [
                  pw.Expanded(
                    child: pw.Center(
                      child: pw.Text(
                        'ACUERDO DE INTENCIONES VINCULANTE',
                        style: pw.TextStyle(
                          fontSize: 14,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'En la ciudad de Cochabamba, al día XX del mes de XXX del 2021, se reúnen:',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              //-----------------------------
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'De una parte LA UNIDAD EDUCATIVA  "ESCLAVAS DEL SAGRADO CORAZÓN DE JESUS", representada por la Hna. MAGDALENA CONDORI CALCINA, en su calidad de Directora General y representante legal quien es mayor de edad, vecina de esta, hábil por derecho, quien a efectos del presente acuerdo se denominara simplemente como la UNIDAD EDUCATIVA.',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10), 
              //---------------                                 
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'Y de la otra, la Señora XXXXXXXXX  XXXXXXX XXXXX, mayor de edad, hábil por ley, vecina de esta ciudad, en lo sucesivo LA CONTRATANTE.',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'En conjunto se denominaran LAS PARTES, reconociéndose mutuamente capacidad legal suficiente para contratar y obligarse, siendo responsables de honrar sus compromisos.',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                children: [
                  pw.Expanded(
                    child: pw.Center(
                      child: pw.Text(
                        'EXPONEN',
                        style: pw.TextStyle(
                          fontSize: 14,
                          fontWeight: pw.FontWeight.bold,
                          decoration: pw.TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      '1.	Que la UNIDAD EDUCATIVA, es una Institución caracterizada por su alto nivel académico y sólida formación en valores, siendo una de sus múltiples fortalezas el brindar una educación de calidad con una atención personalizada.',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      '2. Que LA CONTRATANTE, es madre del menor de nombre XXXXX XXXXX XXXXX XXXXXX , quien la próxima gestión académica 2022, habrá de cursar el 3 grado del Nivel Primario. Misma que se encuentra muy interesada en formar parte del estamento estudiantil de la Unidad Educativa, durante la gestión 2022 ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      '3. Que LAS PARTES, están interesadas y comprometidas en formalizar un contrato de prestación de servicios educativos por la gestión 2022, y en virtud a ello de manera libre y espontánea formalizan el presente acuerdo de intenciones, el cual se regirá por las siguientes clausulas: ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'PRIMERA -  OBJETO DEL ACUERDO. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'El presente acuerdo tiene por objeto garantizar la incorporación del menor a la Unidad Educativa, debido a que el proceso de entrevistas ha concluido y existe voluntad de ambas partes, de suscribir un contrato de prestación de servicio educativo por la Gestión 2022.  ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'SEGUNDA - DURACION DEL ACUERDO. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'LAS PARTES. En completa igualdad jurídica, determinan que el presente acuerdo estará vigente hasta el último día de Inscripción Educativa para la Gestión 2022, fecha que será determinada por el Ministerio del Área, mediante Resolución Ministerial o Instructivo específico, pasada la fecha señalada, se aplicara lo dispuesto en la cláusula sexta. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'TERCERA - CONFIDENCIALIDAD. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'Debido al carácter reservado de este acuerdo, LAS PARTES acuerdan no divulgarla y mantener la más estricta confidencialidad en cuanto a su contenido y sus alcances. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),                                                                                   
            ],
          ),
        );
      },
    ),
  );
    pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'CUARTA - DEPOSITO DE GARANTIA. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'Con la finalidad de garantizar el cumplimiento estricto del presente acuerdo, a la suscripción del mismo, LA CONTRATANTE entrega la suma de Bs. 500.00 ( QUINIENTOS 00/100 Bolivianos). Monto que se restará de la primera pensión a cancelarse la próxima gestión, cuya cuantía aún se desconoce. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'QUINTA - TERMINACION ANTICIPADA DEL ACUERDO. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 10),              
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'El presente acuerdo podrá ser resuelto por decisión mutua de LAS PARTES, con los efectos que ellos determinen, siempre y cuando así lo decidieran de manera consensuada, caso contrario la parte que lo diera por terminado a pesar de la oposición de la otra deberá abonar un monto sancionatorio igual al 30 %, del depósito entregado en garantía. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 20),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'SEXTA - INCUMPLIMIENTO DEL ACUERDO RESPECTO A LA INSCRIPCIÓN. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 10),   
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'En caso de concluir la etapa de inscripciones escolares gestión 2022 y el menor no se hubiera matriculado, la UNIDAD EDUCATIVA, solo reintegrara el 70 % del monto de la garantía, por el perjuicio sufrido al negar otras inscripciones precautelando la plaza comprometida. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 20),   
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'SEPTIMA - NOTIFICACIONES Y ACLARACIÓN. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 10),  
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'Para realizar cualquier notificación entre partes, la UNIDAD EDUCATIVA, señala como domicilio legal la Secretaria de sus Instalaciones y los números habilitados, LA CONTRATANTE señala el correo electrónico xxxxxxxxxxxgmail.com y N° de Whatsapp XXXXXXX. De modo similar dejan expresa constancia que el presente acuerdo no vulnera lo dispuesto en el Articulo 99 de la R.M. 001/2021 en actual vigencia, por no existir relación contractual vigente entre ellas. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 20),  
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'OCTAVA - ACEPTACION. ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 10),  
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'En prueba de conformidad y aceptación, de todo lo establecido en el clausulado anterior, ambas partes firman el presente acuerdo, en un solo ejemplar y a un solo efecto, en el lugar y fecha al comienzo indicados.',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 150),

              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'XXXXX XXXXX  XXXXX                                       Hna. Magdalena Condori Calcina ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),  
              pw.SizedBox(height: 5),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Text(
                      'C.I.: XXXXXXX XX                                                  C.I.:5264196 CB ',
                      style: pw.TextStyle(fontSize: 12),
                      textAlign: pw.TextAlign.justify,
                    ),
                  ),
                ],
              ),                                                             
            ],
          ),
        );
      },
    ),
  );

  // Guardar el PDF como blob en memoria
  final Uint8List pdfBytes = await pdf.save();
  final blob = html.Blob([pdfBytes]);

  // Crear un URL del blob y abrir una ventana para descargar el archivo
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "acuerdo_intenciones.pdf")
    ..click();

  // Limpiar la URL creada
  html.Url.revokeObjectUrl(url);

  // Mostrar un mensaje de éxito
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('PDF generado exitosamente'),
    ),
  );
}
//----------------------------------------------------------------------------------------------------------------
Future<void> generatePdfCredentials(BuildContext context) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Text(
                'ACTA DE ENTREGA DE USUARIO Y CLAVE PARA LA PAGINA WEB',
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text('Estimada: XXXXXXXXXX', style: pw.TextStyle(fontSize: 12)),
              pw.SizedBox(height: 20),
              pw.Text(
                'Se ha generado una nuevo usuario y contraseña de Acceso a la Página Web',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.SizedBox(height: 20),
              pw.Text('Usuario:        xxxxxx', style: pw.TextStyle(fontSize: 12)),
              pw.SizedBox(height: 10),
              pw.Text('Contraseña:        xxxxxxx', style: pw.TextStyle(fontSize: 12)),
              pw.SizedBox(height: 10),
              pw.Text('Dirección de acceso:  xxxxx', style: pw.TextStyle(fontSize: 12)),
              pw.SizedBox(height: 20),
              pw.Text(
                'El funcionario se compromete a guardar absoluta confidencialidad como también a asegurar el uso exclusivo e intransferible del usuario y la contraseña que le ha sido asignado. Le recordamos que las contraseñas son de uso personal y no deben ser compartidas con ninguna persona.',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                'CONSEJOS DE SEGURIDAD',
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                '- Se recomienda el cambio inmediato de la contraseña.\n'
                '- La clave debe tener como mínimo 6 caracteres, sin espacios, ni símbolos, debe contener números, letras mayúsculas, minúsculas.\n'
                '- La clave se debe cambiar de forma periódica. Se sugiere el cambio cada 60 días.\n'
                '- La clave es personal e intransferible.\n'
                '- Resguardar y proteger la información es responsabilidad de TODOS.\n'
                '- Acostumbrarse a cerrar la sesión al terminar las actividades.\n'
                '- No utilizar la opción de recordar clave del navegador para el ingreso.\n'
                '- Reiteramos que es responsabilidad de todos los funcionarios crear Contraseñas Seguras para los sistemas de información, salvaguardar las mismas y no compartirlas. De igual manera, ante cualquier consulta o duda favor tomar contacto con Encargado de Soporte del Colegio.',
                style: pw.TextStyle(fontSize: 12),
              ),
              pw.SizedBox(height: 40),
              pw.Text('______________________', style: pw.TextStyle(fontSize: 12)),
              pw.Text('Firma Funcionario', style: pw.TextStyle(fontSize: 12)),
            ],
          ),
        );
      },
    ),
  );

  // Save the PDF as a blob in memory
  final Uint8List pdfBytes = await pdf.save();
  final blob = html.Blob([pdfBytes]);
  // Create a URL for the blob and open a window to download the file
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..setAttribute("download", "postulation_details2_0.pdf")
    ..click();
  // Revoke the created URL
  html.Url.revokeObjectUrl(url);
  // Show a success message
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text('PDF generado exitosamente'),
  ));
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'Hola mundo',
              style: GoogleFonts.courierPrime(
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await generatePdfLetter(context);
              //await generatePdfCredentials(context);
            },
            child: Icon(Icons.download),
          ),
    );
  }
}

