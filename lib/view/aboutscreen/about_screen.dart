import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About us",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(32, 117, 243, 1),
                  ),
                ),
              ),
              SizedBox(height: 38),
              Text(
                """
Welcome to Qk wash where we are revolutionizing the 
laundry experience using our washing ecosystem. 
Our goal is to integrate the technology into laundry 
experience for making it seamless and efficient. 
We are committed to transform the way you manage
your laundry needs by providing our washing ecosystem
that Includes India's first UPI-enabled smart washing 
machines *, advanced dryers, water processing unit, and 
our revolutionary Qk wash mobile application.

Our washing ecosystem allows you to easily search for the 
availability of machines right from your mobile devices, 
where we provide you with the real-time running status of our
machines. You can simply schedule your wash with a few taps.
All our machines are UPI-enabled, making your
payments seamless.

Our washing ecosystem allows you to do what you love by
making laundry management a hassle-free experience. 
We invite you to join us on this exciting journey towards a
smarter laundry experience. 
Stay connected for more.
Thank you for choosing us.
""",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                """ Terms of service 
 and Privacy policy """,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(32, 117, 243, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                """QKWash Laundry App Terms and Conditions of Use
Your Right to Cancel
At QKWash Ltd, we want you to be fully satisfied every time
 you top up your account using the QKWash Laundry App. You 
have the right to cancel your purchase of app credit. However,
 we regret that we cannot accept cancellations of top-up 
purchases if any or all of the credit has been used.

To cancel a credit made through the QKWash Laundry App,
 please contact QKWash Services Ltd within seven working
 days of receiving the top-up confirmation via email. To
 facilitate a quick refund process, please provide the reason
 for your refund request, along with your top-up purchase
 receipt. Send these details to:

QKWash Services Ltd
North Paravur, Ernamkulam, Kerala

For app credit refunds, please email: refunds@qkwash.com.

Please note that any credit added to your account more than 
12 months ago will not be eligible for a refund. A 100-rupee 
administrative charge will be applied to all refunds.

For your protection, we recommend using a recorded-delivery 
service when returning any physical items related to your
 refund request. Please note that you are responsible for any 
return costs, and QKWash Services Ltd will not be liable for 
lost items during transit.

Policy for Unused Credit
If you wish to receive a refund for partially used credit,
 please contact us via email at refunds@qkwash.com and
 provide the following:

A screenshot of your QKWash app account
The reason for requesting a refund
A copy of your original receipt or transaction details, including
 your PayPal receipt with the Transaction or Receipt ID number
Refunds will not be issued for any free or promotional credit.

Lost Accounts or App Access
Your QKWash app account and its associated credit are your
 sole responsibility. QKWash Ltd will not accept liability for 
any lost credit if you lose access to your app account. Please 
ensure that you keep your login details safe, as your app
 account should be treated like cash. No credit will be restored
 on lost or deleted app accounts.

QKWash Ltd reserves the right to charge a nominal fee for
 account recovery or the restoration of lost app access.

Refund Policy for Faults
If you experience any loss of credit due to an error with the
 QKWash Laundry App or a machine, please
 email info@qkwash.com with the following details

Your name
App username or account number
Site reference and site name
Machines used
Description of the fault experienced
Amount of credit lost
Please note that all faults must be reported within
48 hours of the incident.

Changes to Terms and Conditions
QKWash Ltd reserves the right to amend these
 Terms and Conditions of Use without prior notice at any time.""",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.start,
              )
            ],
          ),
        ),
      ),
    );
  }
}
