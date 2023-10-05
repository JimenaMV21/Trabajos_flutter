import 'package:flutter/material.dart'; // Necesario para construir la interfaz de usuario en Flutter.

class Counter extends StatefulWidget {
  // Clase llamada Counter, que extiende StatefulWidget. Esta clase es responsable de mantener y gestionar el estado mutable del contador.
  @override
  State<Counter> createState() =>
      _CounterState(); // Dentro de la clase Counter, se anula el método createState para devolver una instancia de _CounterState. Esto crea y devuelve el objeto de estado asociado con el widget Counter.
}

class _CounterState extends State<Counter> {
  int counter = 0; // Variable para almacenar el valor del contador.

  void incrementCounter() {
    // Función para incrementar el contador cuando se presiona el botón de incremento.
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    // Función para decrementar el contador cuando se presiona el botón de decremento.
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'), // Título de la barra de la aplicación.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter', // Muestra el valor actual del contador en un Text.
              style: TextStyle(fontSize: 20), // Estilo de texto.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed:
                      incrementCounter, // Función que se llama cuando se presiona el botón de incremento.
                  tooltip:
                      'Increment', // Mensaje de información flotante al mantener presionado el botón.
                  child: Icon(Icons.add), // Icono de suma en el botón.
                ),
                SizedBox(
                    width: 10), // Espacio horizontal entre los dos botones.
                FloatingActionButton(
                  onPressed:
                      decrementCounter, // Función que se llama cuando se presiona el botón de decremento.
                  tooltip:
                      'Decrement', // Mensaje de información flotante al mantener presionado el botón.
                  child: Icon(Icons.remove), // Icono de resta en el botón.
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home:
        Counter(), // Ejecuta la aplicación Flutter con la pantalla Counter como página principal.
  ));
}

//2b
//import 'package:flutter/material.dart'; // Importación de la librería Flutter

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'), // Título de la barra de la aplicación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter', // Texto que muestra el valor del contador
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: incrementCounter,
                  tooltip:
                      'Increment', // Texto que se muestra al mantener presionado el botón
                  child: Icon(Icons.add), // Icono del botón de incremento
                ),
                SizedBox(width: 10), // Espacio en blanco entre los botones
                FloatingActionButton(
                  onPressed: decrementCounter,
                  tooltip:
                      'Decrement', // Texto que se muestra al mantener presionado el botón
                  child: Icon(Icons.remove), // Icono del botón de decremento
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                // Acción al presionar el botón
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'El contador es $counter'), // Contenido del Snackbar que muestra el valor del contador
                  ),
                );
              },
              child: Text(
                  'Mostrar snackbar'), // Texto del botón que muestra el Snackbar
            ),
            TextField(
              decoration: InputDecoration(
                labelText:
                    'Introduce un número', // Texto que se muestra como etiqueta del TextField
              ),
              onChanged: (value) {
                // Acción al cambiar el valor del TextField
                setState(() {
                  counter = int.parse(
                      value); // Actualiza el valor del contador con el número ingresado en el TextField
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}
