import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/100779215?s=400&u=bf334b1407e8fbf51a5cb21bd582bd38b7dd7c44&v=4',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(
                        Icons.search,
                        size: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => defaultStoryItem(),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                    itemCount: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => defaultChatItem(),
                separatorBuilder: (context, index)  =>const SizedBox(height: 10,),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget defaultStoryItem() {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/100779215?s=400&u=bf334b1407e8fbf51a5cb21bd582bd38b7dd7c44&v=4',
                ),
              ),
              CircleAvatar(
                radius: 6,
                backgroundColor: Colors.green,
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Mohamed Ashmawi ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget defaultChatItem() => Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/100779215?s=400&u=bf334b1407e8fbf51a5cb21bd582bd38b7dd7c44&v=4',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mohamed Ashmawi',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'hello everyone',
                        ),
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.blue,
                      ),
                      Text('10:30pm'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
}