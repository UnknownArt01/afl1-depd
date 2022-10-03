part of 'tampilan.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool touch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Background ZOOM"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Colors.white, Colors.blue])),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Flexible(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    child:
                        Image.asset('assets/images/ai.png', fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment(0.9, -0.8),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          touch = !touch;
                        });
                      },
                      icon: Icon(Icons.favorite,
                          color: (touch == false) ? Colors.red : Colors.grey),
                      label: Text(''),
                      style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.all(15),
                          minimumSize: const Size.fromRadius(12),
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/background.jpeg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/fit.jpeg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/fit.jpeg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(40),
                          child: Image.asset('assets/images/sift.png',
                              fit: BoxFit.cover),
                        )),
                  ),
                ],
              )),
          Flexible(
            flex: 1,
            child: Container(
              child: const Center(
                  child: Text(
                'Description Of Background',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          Flexible(
            flex: 4,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
                Container(
                  child: const Center(
                      child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
