import 'package:flutter/material.dart';
import 'package:tamilfarmers_ios/cart/cartappbar.dart';

class trackorder extends StatefulWidget {
  trackorder() : super();

  final String title = "Stepper Demo";

  @override
  trackorderState createState() => trackorderState();
}

class trackorderState extends State<trackorder> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Order Placed'),
      subtitle: Text('We have Received Your Order!'),
      content: Text("We have Received Your Order!"),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Payment Confirmed'),
      content: Text('Your Order has been Confirmed'),
      subtitle: Text('Your Order has been Confirmed'),
    ),
    Step(
      title: Text('Order Processed'),
      content: Text('We are preparing your order'),
      subtitle: Text('We are preparing your order'),
    ),
    Step(
      title: Text('Ready To Pickup'),
      content: Text('Your Order ready to pickup'),
      subtitle: Text('Your Order ready to pickup'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // Appbar
      appBar: cartappbar("Track Order"),
      // Body
      body: new ListView(
        children: <Widget>[

      Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.vertical,
          // onStepTapped: (step) {
          //   setState(() {
          //     current_step = step;
          //   });
          // },
          // onStepContinue: () {
          //   setState(() {
          //     if (current_step < steps.length - 1) {
          //       current_step = current_step + 1;
          //     } else {
          //       current_step = 0;
          //     }
          //   });
          // },
          // onStepCancel: () {
          //   setState(() {
          //     if (current_step > 0) {
          //       current_step = current_step - 1;
          //     } else {
          //       current_step = 0;
          //     }
          //   });
          // },
        ),
      ),

      ],),
    );
  }
}