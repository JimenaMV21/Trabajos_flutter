import 'package:flutter/material.dart'; //Importa la libreria que usa elemnentos de material design

class Counter extends StatefulWidget {
  //Counter es de tipo Stateful
  @override
  State<Counter> createState() =>
      _CounterState(); //Se define una funcion creatState que retorna un estado de tipo Counter
} //Usa una funcion flecha gorda que retorna la clase CounterState. La clase CounterState es privada

class _CounterState extends State<Counter> {
  //Extiende la la clase de tipo counter
  int counter = 0; //Contador inicializado en 0

  void incrementCounter() {
    setState(() {
      //Actualiza las variables
      counter++; //Suma al contador
    });
  }

  @override
  Widget build(BuildContext context) {
    //Se va a ejecutar cuando se referesque la pantalla
    return Scaffold(
      appBar: AppBar(
        //Barra
        title: Text('Counter'), //Que tiene de nombre contador
      ),
      body: Center(
        child: Text(
          'Counter: $counter', //Concatena una variable con el valor counter o valor 0 cuando incie
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Recibe un FloatingActionButton
        onPressed:
            incrementCounter, //El metodo OnPress cuando se presiona llama a la funcion incrementCounter
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}
