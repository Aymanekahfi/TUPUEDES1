import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tupuedes App',
      theme: ThemeData(
        primaryColor: Colors.blue, // Cambio en el color primario de la aplicación
        scaffoldBackgroundColor: Colors.lightBlueAccent, // Color de fondo global de la aplicación
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, 
          ),
        ),
      ),
      home: const HomePage(),
       debugShowCheckedModeBanner: false,
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tupuedes',
            style: TextStyle(
              fontFamily: 'Montserrat', // Ejemplo de fuente personalizada
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue[100], // Color de fondo para el AppBar
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications), // Icono de notificaciones
              onPressed: () {
                // Lógica para manejar las notificaciones
              },
            ),
            IconButton(
              icon: Icon(Icons.message), // Icono de mensajes
              onPressed: () {
                // Lógica para manejar los mensajes
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Inicio'),
              Tab(text: 'Blog'),
              Tab(text: 'Soporte'),
              Tab(text: 'Log In'),
            ],
          ),
        ),
        backgroundColor: Colors.brown[100], // Color de fondo para el Scaffold
        body: const TabBarView(
          children: [
            InicioPage(),
            BlogPage(),
            SoportePage(),
            LogInPage(),
          ],
        ),
      ),
    );
  }
}




class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'), // URL de la imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RutinasPage()),
                  );
                },
                child: const Text('Rutinas Gratis'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EjerciciosGimnasioPage()),
                  );
                },
                child: const Text('Ejercicios de Gimnasio'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactarEntrenadoresPage()),
                  );
                },
                child: const Text('Contactar con Entrenadores'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class RutinasPage extends StatelessWidget {
  const RutinasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas Gratis'),
      ),
      body: Container(
    decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('data:image/jpeg;base64,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'), // URL de la imagen
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RutinasPerderPesoPage()),
                  );
                },
                child: const Text('Rutinas para Perder Peso'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RutinasGanarPesoPage()),
                  );
                },
                child: const Text('Rutinas para Ganar Peso'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RutinasPerderPesoPage extends StatelessWidget {
  const RutinasPerderPesoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas para Perder Peso'),
      ),
      body: Container(
        color: Colors.blueGrey[100], // Color de fondo de la página Rutinas Perder Peso
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const <Widget>[
            Text('Lunes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Avena con frutas (1/2 taza de avena, 1 taza de leche descremada o de almendra, 1/2 plátano, 1/4 taza de fresas)\n1 huevo cocido'),
            Text('Media mañana: 1 manzana\n10 almendras'),
            Text('Almuerzo: Pechuga de pollo a la plancha\nEnsalada de espinacas con tomate, pepino, zanahoria y aderezo de limón y aceite de oliva\n1/2 taza de quinoa'),
            Text('Merienda: Yogur griego natural con 1 cucharada de miel'),
            Text('Cena: Salmón al horno con espárragos\n1 taza de brócoli al vapor'),
            SizedBox(height: 20),
            Text('Martes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Smoothie verde (1 taza de espinacas, 1/2 plátano, 1/2 taza de piña, 1 taza de leche de almendra, 1 cucharada de semillas de chía)'),
            Text('Media mañana: 1 pera\n1 puñado de nueces'),
            Text('Almuerzo: Ensalada de atún (atún en agua, lechuga, tomate, cebolla morada, pepino, aguacate)\n1 rebanada de pan integral'),
            Text('Merienda: 1 zanahoria grande cortada en tiras\nHummus (2 cucharadas)'),
            Text('Cena: Tacos de lechuga con carne molida de pavo, tomate, cebolla y aguacate\n1/2 taza de frijoles negros'),
            SizedBox(height: 20),
            Text('Miércoles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Tostadas de aguacate (1 rebanada de pan integral, 1/2 aguacate, 1 huevo poché)'),
            Text('Media mañana: 1 naranja\n1 puñado de almendras'),
            Text('Almuerzo: Filete de pescado a la plancha\nEnsalada de col rizada con zanahoria rallada, semillas de girasol y aderezo de limón y aceite de oliva\n1/2 taza de arroz integral'),
            Text('Merienda: Batido de proteína (1 taza de leche de almendra, 1 cucharada de proteína en polvo, 1/2 plátano)'),
            Text('Cena: Pollo al horno con limón y hierbas\nEnsalada de pepino y tomate\n1 taza de coliflor al vapor'),
            SizedBox(height: 20),
            Text('Jueves', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Parfait de yogur griego (1 taza de yogur griego, 1/4 taza de granola, 1/2 taza de frutas del bosque)'),
            Text('Media mañana: 1 kiwi\n10 nueces'),
            Text('Almuerzo: Ensalada de quinoa (1/2 taza de quinoa cocida, espinacas, pepino, pimientos, garbanzos, aderezo de limón y aceite de oliva)'),
            Text('Merienda: 1 manzana con 1 cucharada de mantequilla de almendra'),
            Text('Cena: Pechuga de pollo a la parrilla\nEnsalada de espinacas y fresas con nueces y queso feta\n1/2 taza de batata al horno'),
            SizedBox(height: 20),
            Text('Viernes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Omelette de claras de huevo con espinacas, champiñones y tomate\n1 rebanada de pan integral'),
                        Text('Media mañana: 1 pera\n1 puñado de almendras'),
            Text('Almuerzo: Ensalada de pollo (pollo a la plancha, lechuga, aguacate, tomate, pepino, aderezo de limón y aceite de oliva)\n1/2 taza de arroz integral'),
            Text('Merienda: Yogur griego con 1 cucharada de miel'),
            Text('Cena: Filete de salmón a la parrilla\nEnsalada de rúcula con tomate y cebolla\n1 taza de brócoli al vapor'),
            SizedBox(height: 20),
            Text('Sábado', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Smoothie de frutas (1 taza de leche de almendra, 1/2 taza de fresas, 1/2 taza de arándanos, 1 plátano, 1 cucharada de semillas de chía)'),
            Text('Media mañana: 1 manzana\n1 puñado de nueces'),
            Text('Almuerzo: Ensalada de garbanzos (garbanzos, espinacas, tomate, pepino, pimientos, aderezo de limón y aceite de oliva)\n1 rebanada de pan integral'),
            Text('Merienda: 1 zanahoria grande cortada en tiras\nHummus (2 cucharadas)'),
            Text('Cena: Pollo al horno con limón y hierbas\nEnsalada de pepino y tomate\n1/2 taza de arroz integral'),
            SizedBox(height: 20),
            Text('Domingo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Tostadas de aguacate (1 rebanada de pan integral, 1/2 aguacate, 1 huevo poché)'),
            Text('Media mañana: 1 naranja\n1 puñado de almendras'),
            Text('Almuerzo: Filete de pescado a la plancha\nEnsalada de col rizada con zanahoria rallada, semillas de girasol y aderezo de limón y aceite de oliva\n1/2 taza de arroz integral'),
          ],
        ),
      ),
    );
  }
}

class RutinasGanarPesoPage extends StatelessWidget {
  const RutinasGanarPesoPage({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutinas para Ganar Peso'),
      ),
      body: Container(
        color: Colors.blueGrey[100], // Color de fondo de la página Rutinas Perder Peso
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const <Widget>[
            Text('Lunes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Avena con frutas (1 taza de avena, 1 taza de leche descremada o de almendra, 1 plátano, 1/4 taza de fresas)\n1 huevo cocido'),
            Text('Media mañana: 2 manzana\n10 almendras'),
            Text('Almuerzo: 200g Pechuga de pollo a la plancha\nEnsalada de espinacas con tomate, pepino, zanahoria y aderezo de limón y aceite de oliva\n1/2 taza de quinoa'),
            Text('Merienda: Yogur griego natural con 2 cucharada de miel'),
            Text('Cena: Salmón al horno con espárragos\n1 taza de brócoli al vapor'),
            SizedBox(height: 20),
            Text('Martes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Smoothie verde (2 taza de espinacas, 1 plátano, 1 taza de piña, 1 taza de leche de almendra, 1 cucharada de semillas de chía)'),
            Text('Media mañana: 1 pera\n1 puñado de nueces'),
            Text('Almuerzo: Ensalada de atún (atún en agua, lechuga, tomate, cebolla morada, pepino, aguacate)\n1 rebanada de pan integral'),
            Text('Merienda: 1 zanahoria grande cortada en tiras\nHummus (2 cucharadas)'),
            Text('Cena: Tacos de lechuga con carne molida de pavo, tomate, cebolla y aguacate\n1/2 taza de frijoles negros'),
            SizedBox(height: 20),
            Text('Miércoles', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Tostadas de aguacate (1 rebanada de pan integral, 1 aguacate, 1 huevo poché)'),
            Text('Media mañana: 1 naranja\n1 puñado de almendras'),
            Text('Almuerzo: Filete de pescado a la plancha\nEnsalada de col rizada con zanahoria rallada, semillas de girasol y aderezo de limón y aceite de oliva\n1/2 taza de arroz integral'),
            Text('Merienda: Batido de proteína (1 taza de leche de almendra, 1 cucharada de proteína en polvo, 1/2 plátano)'),
            Text('Cena: Pollo al horno con limón y hierbas\nEnsalada de pepino y tomate\n1 taza de coliflor al vapor'),
            SizedBox(height: 20),
            Text('Jueves', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Parfait de yogur griego (1 taza de yogur griego, 1 taza de granola, 1/2 taza de frutas del bosque)'),
            Text('Media mañana: 1 kiwi\n10 nueces'),
            Text('Almuerzo: Ensalada de quinoa (1 taza de quinoa cocida, espinacas, pepino, pimientos, garbanzos, aderezo de limón y aceite de oliva)'),
            Text('Merienda: 1 manzana con 1 cucharada de mantequilla de almendra'),
            Text('Cena: Pechuga de pollo a la parrilla\nEnsalada de espinacas y fresas con nueces y queso feta\n1/2 taza de batata al horno'),
            SizedBox(height: 20),
            Text('Viernes', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Omelette de claras de huevo con espinacas, champiñones y tomate\n1 rebanada de pan integral'),
                        Text('Media mañana: 1 pera\n1 puñado de almendras'),
            Text('Almuerzo: Ensalada de pollo (pollo a la plancha, lechuga, aguacate, tomate, pepino, aderezo de limón y aceite de oliva)\n1/2 taza de arroz integral'),
            Text('Merienda: Yogur griego con 1 cucharada de miel'),
            Text('Cena: Filete de salmón a la parrilla\nEnsalada de rúcula con tomate y cebolla\n1 taza de brócoli al vapor'),
            SizedBox(height: 20),
            Text('Sábado', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Smoothie de frutas (1 taza de leche de almendra, 1 taza de fresas, 1 taza de arándanos, 1 plátano, 1 cucharada de semillas de chía)'),
            Text('Media mañana: 1 manzana\n1 puñado de nueces'),
            Text('Almuerzo: Ensalada de garbanzos (garbanzos, espinacas, tomate, pepino, pimientos, aderezo de limón y aceite de oliva)\n1 rebanada de pan integral'),
            Text('Merienda: 1 zanahoria grande cortada en tiras\nHummus (2 cucharadas)'),
            Text('Cena: Pollo al horno con limón y hierbas\nEnsalada de pepino y tomate\n1/2 taza de arroz integral'),
            SizedBox(height: 20),
            Text('Domingo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('Desayuno: Tostadas de aguacate (1 rebanada de pan integral, 1/2 aguacate, 1 huevo poché)'),
            Text('Media mañana: 1 naranja\n1 puñado de almendras'),
            Text('Almuerzo: Filete de pescado a la plancha\nEnsalada de col rizada con zanahoria rallada, semillas de girasol y aderezo de limón y aceite de oliva\n1/2 taza de arroz integral'),
          ],
        ),
      ),
    );
  }
}
class EjerciciosGimnasioPage extends StatelessWidget {
  const EjerciciosGimnasioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicios de Gimnasio'),
      ),
      body: Container(
        color: Colors.blueGrey[100], // Color de fondo de la página Ejercicios de Gimnasio
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            Text(
              'Lunes: Pecho y Tríceps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Press de banca con barra: 4 series de 8-12 repeticiones'),
            Text('Press inclinado con mancuernas: 4 series de 8-12 repeticiones'),
            Text('Aperturas con mancuernas: 3 series de 12-15 repeticiones'),
            Text('Fondos (Dips): 3 series de 10-12 repeticiones'),
            Text('Press de banca con agarre cerrado: 3 series de 8-12 repeticiones'),
            Text('Extensiones de tríceps en polea: 4 series de 12-15 repeticiones'),
            SizedBox(height: 10),
            Text(
              'Martes: Espalda y Bíceps',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Dominadas (Pull-Ups): 4 series al fallo (hasta no poder más)'),
            Text('Remo con barra: 4 series de 8-12 repeticiones'),
            Text('Remo con mancuerna: 4 series de 8-12 repeticiones'),
            Text('Jalones al pecho en polea: 4 series de 12-15 repeticiones'),
            Text('Curl de bíceps con barra: 4 series de 8-12 repeticiones'),
            Text('Curl martillo con mancuernas: 4 series de 12-15 repeticiones'),
            SizedBox(height: 10),
            Text(
              'Miércoles: Piernas',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Sentadillas (Squats): 4 series de 8-12 repeticiones'),
            Text('Prensa de piernas: 4 series de 12-15 repeticiones'),
            Text('Peso muerto rumano: 4 series de 8-12 repeticiones'),
            Text('Extensiones de piernas: 4 series de 12-15 repeticiones'),
            Text('Curl de piernas: 4 series de 12-15 repeticiones'),
            Text('Elevaciones de pantorrillas: 4 series de 15-20 repeticiones'),
            SizedBox(height: 10),
            Text(
              'Jueves: Hombros y Abdominales',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Press militar con barra: 4 series de 8-12 repeticiones'),
            Text('Elevaciones laterales con mancuernas: 4 series de 12-15 repeticiones'),
            Text('Elevaciones frontales con mancuernas: 4 series de 12-15 repeticiones'),
            Text('Remo al mentón con barra: 4 series de 8-12 repeticiones'),
            Text('Encogimientos de hombros con mancuernas: 4 series de 12-15 repeticiones'),
            Text('Plancha abdominal: 3 series de 1 minuto'),
            Text('Crunches en pelota suiza: 3 series de 15-20 repeticiones'),
            SizedBox(height: 10),
            Text(
              'Viernes: Cuerpo Completo (Full Body)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Peso muerto (Deadlift): 4 series de 8-12 repeticiones'),
            Text('Press de banca inclinado con barra: 4 series de 8-12 repeticiones'),
            Text('Remo con barra T: 4 series de 8-12 repeticiones'),
            Text('Sentadilla frontal: 4 series de 8-12 repeticiones'),
            Text('Press militar con mancuernas: 4 series de 8-12 repeticiones'),
            Text('Curl de bíceps en banco inclinado: 4 series de 12-15 repeticiones'),
            SizedBox(height: 10),
            Text(
              'Sábado: Cardio Ligero y Estiramientos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('30-45 minutos de cardio ligero (caminata rápida, bicicleta estática o elíptica)'),
            Text('Estiramientos estáticos para todos los grupos musculares principales, manteniendo cada estiramiento durante 30-60 segundos'),
            SizedBox(height: 10),
            Text(
              'Domingo: Descanso',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Consejos adicionales:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Calentamiento: Realiza un calentamiento de 5-10 minutos antes de cada sesión con ejercicios cardiovasculares ligeros (caminata, trote suave) y estiramientos dinámicos.'),
            Text('Técnica: Asegúrate de utilizar la técnica correcta en todos los ejercicios para evitar lesiones.'),
            Text('Progresión: Incrementa gradualmente el peso y la intensidad de tus entrenamientos a medida que te vuelves más fuerte.'),
            Text('Descanso: Asegúrate de dormir lo suficiente (al menos 7-8 horas por noche) para permitir la recuperación y crecimiento muscular.'),
            Text('Hidratación y nutrición: Mantén una buena hidratación y sigue una dieta adecuada para apoyar tus objetivos de ganar peso y músculo.'),
          ],
        ),
      ),
    );
  }
}



class ContactarEntrenadoresPage extends StatefulWidget {
  const ContactarEntrenadoresPage({Key? key}) : super(key: key);

  @override
  _ContactarEntrenadoresPageState createState() => _ContactarEntrenadoresPageState();
}

class _ContactarEntrenadoresPageState extends State<ContactarEntrenadoresPage> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _mensajeController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    _mensajeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contactar con Entrenadores'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('data:image/jpeg;base64,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'), // URL de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el contenedor
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu nombre';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty || !value.contains('@')) {
                      return 'Por favor, introduce un email válido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _mensajeController,
                  decoration: const InputDecoration(labelText: 'Mensaje'),
                  maxLines: 4,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, introduce tu mensaje';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Envía la información o realiza alguna acción
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Enviando mensaje')),
                      );
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  // Función para abrir enlaces en el navegador
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'data:image/jpeg;base64,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' ),
            fit: BoxFit.cover, // Ajusta la imagen para cubrir toda el área del Container
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '¡Bienvenido al blog de nuestro gimnasio!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Aquí encontrarás artículos sobre entrenamiento, nutrición, salud y mucho más. Mantente informado y motivado con nuestros consejos y recomendaciones para alcanzar tus metas fitness.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                '¡Descubre todo lo que tenemos para ofrecerte!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _launchURL('https://www.instagram.com/tupuedes');
                    },
                    child: Text(
                      'Instagram',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      _launchURL('https://www.twitter.com/tupuedes');
                    },
                    child: Text(
                      'Twitter',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      _launchURL('https://www.facebook.com/tupuedes');
                    },
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Funciones stub para evitar errores de compilación
  Future<void> launch(String url) async {}
  Future<bool> canLaunch(String url) async {
    return true;
  }
}



class SoportePage extends StatelessWidget {
  const SoportePage({Key? key}) : super(key: key);

  // Funciones para abrir enlaces en el navegador
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  // Función para enviar el formulario de soporte (simulado)
  void _sendSupportForm(String name, String email, String issue) {
    // Aquí puedes manejar la lógica de enviar el formulario (puedes imprimir los datos por ahora)
    print('Nombre: $name');
    print('Email: $email');
    print('Problema: $issue');
    // Puedes agregar aquí el envío real del formulario, como enviar un correo electrónico o registrar en una base de datos
  }

  // Función para abrir la página de comentarios y evaluaciones
  void _openReviewPage() {
    // Aquí puedes manejar la navegación a la página de comentarios y evaluaciones de tu aplicación
    // Por ahora, simplemente imprimimos un mensaje
    print('Abriendo la página de comentarios y evaluaciones...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soporte'),
      ),
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbrC-DEUEBsQD8eVjTDRDbpjM6oU0wTBOUsw&s',
            ),
            fit: BoxFit.cover, // Ajusta la imagen para cubrir toda el área del Container
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Aquí puedes llamar a la función para abrir el formulario de soporte
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Formulario de Soporte'),
                    content: RegisterSupportForm(onSubmit: _sendSupportForm),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cancelar'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Enviar'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Contactar Soporte'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openReviewPage,
              child: const Text('Dejar Comentario'),
            ),
          ],
        ),
      ),
    );
  }
  
  canLaunch(String url) {}
  
  launch(String url) {}
}

class RegisterSupportForm extends StatefulWidget {
  final Function onSubmit;

  const RegisterSupportForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _RegisterSupportFormState createState() => _RegisterSupportFormState();
}

class _RegisterSupportFormState extends State<RegisterSupportForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _issueController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _issueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, introduce tu nombre';
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Correo Electrónico',
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Por favor, introduce un correo electrónico válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _issueController,
            decoration: const InputDecoration(
              labelText: 'Descripción del Problema',
            ),
            maxLines: 3,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, describe tu problema';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}




class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
       // Color verde para el AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjPkkrbsZYdMdm3HZMbOklOLm_VPHvg0t97Q&s',
            ),
            fit: BoxFit.cover, // Ajusta la imagen para cubrir toda el área del Container
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 40), // Espacio adicional para separar el AppBar de la imagen
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Para inscribirse en nuestro aplicacion premium, por favor complete el siguiente formulario:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: RegisterForm(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email, color: Colors.grey[700]),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !value.contains('@')) {
                return 'Por favor, introduce un email válido';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              prefixIcon: Icon(Icons.lock, color: Colors.grey[700]),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return 'La contraseña debe tener al menos 6 caracteres';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final email = _emailController.text;
                final password = _passwordController.text;

                print('Email: $email');
                print('Contraseña: $password');
              }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 16),  
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ), // Color verde para el botón
            ),
            child: const Text(
              'Registrarse',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
