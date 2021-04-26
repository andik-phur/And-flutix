part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  final RegristasionData regristasionData;
  SignUpPage(this.regristasionData);
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    nameController.text = widget.regristasionData.name;
    emailController.text = widget.regristasionData.email;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          context.bloc<PageBloc>().add(GoToSplashPage());
          return;
        },
        child: Scaffold(
          body: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 22),
                      height: 56,
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                context.bloc<PageBloc>().add(GoToSplashPage());
                              },
                              child:
                                  Icon(Icons.arrow_back, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
