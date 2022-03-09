import 'package:flutter/material.dart';

class CastigCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, int index) => _CastCard(),
      ),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/300x400'),
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(height: 5),
          Text(
            'actor.name 11asdasdad adadfsdfsd',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
