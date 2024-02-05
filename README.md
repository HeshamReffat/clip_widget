## Features

This packed is used to clip widget like container to have an arc in the top middle of it

## Usage

Wrap your widget with ClipWidget

## ScreenShots
<img src="https://github.com/HeshamReffat/clip_widget/tree/master/screenshots/1.png" height="480px">
<img src="https://github.com/HeshamReffat/clip_widget/tree/master/screenshots/2.png" height="480px">
<img src="https://github.com/HeshamReffat/clip_widget/tree/master/screenshots/3.png" height="480px">

```dart
ClipWidget(
space:90.0,
height:30.0,
child:Container(height:100,width:100,color:Colors.red,),
topChild:CircleAvatar(
radius: 32,
backgroundColor:Colors.green),
),
```

## Additional information

Find it on pub dev: search clip_widget
