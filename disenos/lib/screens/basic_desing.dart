import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Image
        Image(
          image: AssetImage('assets/landscape.jpg'),
        ),

        //Titulo
        Title(),

        //Buttom Section
        ButtonSection(),

        //Description
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Enim anim sint elit amet officia magna. Irure aute nostrud qui ullamco elit id non. Cupidatat tempor dolore labore enim ad elit in aliqua eu tempor. Enim eiusmod quis veniam do exercitation. Voluptate minim ex incididunt eiusmod velit adipisicing ea laborum sunt velit Lorem et ea consectetur. Velit irure id sit tempor quis elit ad.'))
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Childen Of Bodom on lake Bodom',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Finlad - Helsinki',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.navigation_rounded, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () => null,
          icon: Icon(this.icon),
          color: Colors.blue,
          iconSize: 30,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue, fontSize: 17),
        ),
      ],
    );
  }
}
