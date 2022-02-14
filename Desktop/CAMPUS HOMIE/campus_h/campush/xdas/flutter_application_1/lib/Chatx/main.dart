// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:stream_chat_flutter/stream_chat_flutter.dart';

// void main() async {
//   final client = StreamChatClient(
//     'ws37nuwk249r',
//     logLevel: Level.INFO,
//   );

//   await client.connectUser(
//     User(id: 'jecxi256'),
//     'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiamVjeGkyNTYifQ.XDxtfrT1oPmaIipKGb0O4d0KbHZ_zs0iWT9VUzL-fC0',
//   );

//   runApp(
//     Chaty(
//       client: client,
//     ),
//   );
// }


// class Chaty extends StatefulWidget {
//   const Chaty({Key? key, required StreamChatClient client}) : super(key: key);

//    @override
//    _ChatyState createState() => _ChatyState();
//     }

//  class _ChatyState extends State<Chaty> {

//   late final StreamChatClient client;

//   @override
//   Widget build(BuildContext context) {
//     final theme = ThemeData(
//       primarySwatch: Colors.green,
//     );
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: theme,
//       builder: (context, child) => StreamChat(
//         client: client,
//         child: child,
//       ),
//       home: const ChannelListPage(),
//     );
//   }
// }

// class ChannelListPage extends StatelessWidget {
//   const ChannelListPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Campus Homie'),
//       ),
//       body: ChannelsBloc(
//         child: ChannelListView(
//           filter: Filter.in_(
//             'members',
//             [StreamChat.of(context).currentUser!.id],
//           ),
//           sort: const [SortOption('last_message_at')],
//           limit: 20,
//           channelWidget: const ChannelPage(),
//         ),
//       ),
//     );
//   }
// }

// class ChannelPage extends StatelessWidget {
//   const ChannelPage({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const ChannelHeader(),
//       body: Column(
//         children: const <Widget>[
//           Expanded(
//             child: MessageListView(),
//           ),
//           MessageInput(),
//         ],
//       ),
//     );
//   }
// }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }

