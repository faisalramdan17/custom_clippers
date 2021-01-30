import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'container_to_clip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Clippers',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ClippersPage(title: 'Custom Clippers'),
    );
  }
}

class ClippersPage extends StatefulWidget {
  ClippersPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ClippersPageState createState() => _ClippersPageState();
}

class _ClippersPageState extends State<ClippersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView(
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        children: [
          ///Multiple Points Clipper bottom only with height of points as 50
          ClipPath(
            clipper: MultiplePointsClipper(Sides.BOTTOM, heightOfPoint: 50),
            child: ContainerToClip(
              Colors.red,
              'Multiple Points Clipper Bottom Only',
            ),
          ),

          SizedBox(height: 20),

          ///Multiple Points Clipper vertical with number of points as 50
          ClipPath(
            clipper: MultiplePointsClipper(Sides.VERTICAL, numberOfPoints: 50),
            child: ContainerToClip(
              Colors.green,
              'Multiple Points Clipper Vertical',
            ),
          ),

          SizedBox(height: 20),

          ///Multiple Rounded Points Clipper bottom only with number of points as 30
          ClipPath(
            clipper:
                MultipleRoundedPointsClipper(Sides.BOTTOM, numberOfPoints: 30),
            child: ContainerToClip(
              Colors.blue,
              'Multiple Points Rounded Clipper Bottom Only',
            ),
          ),

          SizedBox(height: 20),

          ///Multiple Rounded Points Clipper vertical with height of points as 50
          ClipPath(
            clipper:
                MultipleRoundedPointsClipper(Sides.VERTICAL, heightOfPoint: 50),
            child: ContainerToClip(
              Colors.yellow,
              'Multiple Rounded Points Clipper Vertical',
            ),
          ),

          SizedBox(height: 20),

          ///Ticket Pass Clipper
          ClipPath(
            clipper: TicketPassClipper(),
            child: ContainerToClip(
              Colors.red,
              'Ticket Pass Clipper',
            ),
          ),

          SizedBox(height: 20),

          ///Ticket Pass Clipper with position as 80 and hole radius as 40
          ClipPath(
            clipper: TicketPassClipper(position: 80, holeRadius: 40),
            child: ContainerToClip(
              Colors.green,
              'Ticket Pass Clipper',
            ),
          ),

          SizedBox(height: 20),

          ///Directional Wave Clipper
          ClipPath(
            clipper: DirectionalWaveClipper(),
            child: ContainerToClip(
              Colors.blue,
              'Directional Wave Clipper Bottom Left',
            ),
          ),

          SizedBox(height: 20),

          ///Directional Wave Clipper with vertical position as VerticalPosition.TOP
          ClipPath(
            clipper:
                DirectionalWaveClipper(verticalPosition: VerticalPosition.TOP),
            child: ContainerToClip(
              Colors.yellow,
              'Directional Wave Clipper Top Left',
            ),
          ),

          SizedBox(height: 20),

          ///Directional Wave Clipper with horizontal position as HorizontalPosition.RIGHT
          ClipPath(
            clipper: DirectionalWaveClipper(
                horizontalPosition: HorizontalPosition.RIGHT),
            child: ContainerToClip(
              Colors.red,
              'Directional Wave Clipper Bottom Right',
            ),
          ),

          SizedBox(height: 20),

          ///Directional Wave Clipper with vertical position as VerticalPosition.TOP  and  horizontal position as HorizontalPosition.RIGHT
          ClipPath(
            clipper: DirectionalWaveClipper(
                verticalPosition: VerticalPosition.TOP,
                horizontalPosition: HorizontalPosition.RIGHT),
            child: ContainerToClip(
              Colors.green,
              'Directional Wave Clipper Top Right',
            ),
          ),

          SizedBox(height: 20),

          ///Sin Cosine Wave Clipper
          ClipPath(
            clipper: SinCosineWaveClipper(),
            child: ContainerToClip(
              Colors.blue,
              'Sin Cosine Wave Clipper Bottom Left',
            ),
          ),

          SizedBox(height: 20),

          ///Sin Cosine Wave Clipper with vertical position as VerticalPosition.TOP
          ClipPath(
            clipper:
                SinCosineWaveClipper(verticalPosition: VerticalPosition.TOP),
            child: ContainerToClip(
              Colors.yellow,
              'Sin Cosine Wave Clipper Top Left',
            ),
          ),

          SizedBox(height: 20),

          ///Sin Cosine Wave with horizontal position as HorizontalPosition.RIGHT
          ClipPath(
            clipper: SinCosineWaveClipper(
                horizontalPosition: HorizontalPosition.RIGHT),
            child: ContainerToClip(
              Colors.red,
              'Sin Cosine Wave Clipper Bottom Right',
            ),
          ),

          SizedBox(height: 20),

          ///Sin Cosine Wave Clipper with vertical position as VerticalPosition.TOP  and  horizontal position as HorizontalPosition.RIGHT
          ClipPath(
            clipper: SinCosineWaveClipper(
                verticalPosition: VerticalPosition.TOP,
                horizontalPosition: HorizontalPosition.RIGHT),
            child: ContainerToClip(
              Colors.green,
              'Sin Cosine Wave Clipper Top Right',
            ),
          ),

          SizedBox(height: 20),

          ///Three Rounded Edges Message Clipper Sender Side
          ClipPath(
            clipper: ThreeRoundedEdgesMessageClipper(MessageType.SEND),
            child: ContainerToClip(
              Colors.blue,
              'Three Rounded Edges Message Clipper Sender',
            ),
          ),

          SizedBox(height: 20),

          ///Three Rounded Edges Message Clipper Receiver Side
          ClipPath(
            clipper: ThreeRoundedEdgesMessageClipper(MessageType.RECEIVE),
            child: ContainerToClip(
              Colors.yellow,
              'Three Rounded Edges Message Clipper Receiver',
            ),
          ),

          SizedBox(height: 20),

          ///Diagonal Rounded Edges Message Clipper Sender Side
          ClipPath(
            clipper: DiagonalRoundedEdgesMessageClipper(MessageType.SEND),
            child: ContainerToClip(
              Colors.red,
              'Diagonal Rounded Edges Message Clipper Sender',
            ),
          ),

          SizedBox(height: 20),

          ///Diagonal Rounded Edges Message Clipper Receiver Side
          ClipPath(
            clipper: DiagonalRoundedEdgesMessageClipper(MessageType.RECEIVE),
            child: ContainerToClip(
              Colors.green,
              'Diagonal Rounded Edges Message Clipper Receiver',
            ),
          ),

          SizedBox(height: 20),

          ///Lower Nip Message Clipper Sender Side
          ClipPath(
            clipper: LowerNipMessageClipper(MessageType.SEND),
            child: ContainerToClip(
              Colors.blue,
              'Lower Nip Message Clipper Sender',
            ),
          ),

          SizedBox(height: 20),

          ///Lower Nip Message Clipper Receiver Side
          ClipPath(
            clipper: LowerNipMessageClipper(MessageType.RECEIVE),
            child: ContainerToClip(
              Colors.yellow,
              'Lower Nip Message Clipper Receiver',
            ),
          ),

          SizedBox(height: 20),

          ///Upper Nip Message Clipper Sender Side
          ClipPath(
            clipper: UpperNipMessageClipper(MessageType.SEND),
            child: ContainerToClip(
              Colors.red,
              'Upper Nip Message Clipper Sender',
            ),
          ),

          SizedBox(height: 20),

          ///Upper Nip Message Clipper Receiver Side
          ClipPath(
            clipper: UpperNipMessageClipper(MessageType.RECEIVE),
            child: ContainerToClip(
              Colors.green,
              'Upper Nip Message Clipper Receiver',
            ),
          ),

          SizedBox(height: 20),

          ///Upper Nip Message Clipper Two Sender Side
          ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: ContainerToClip(
              Colors.blue,
              'Upper Nip Message Clipper Two Sender',
            ),
          ),

          SizedBox(height: 20),

          ///Upper Nip Message Clipper Two Receiver Side
          ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: ContainerToClip(
              Colors.yellow,
              'Upper Nip Message Clipper Two Receiver',
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
