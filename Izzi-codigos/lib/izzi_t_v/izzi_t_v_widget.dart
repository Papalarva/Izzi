import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../usuario/usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class IzziTVWidget extends StatefulWidget {
  const IzziTVWidget({Key? key}) : super(key: key);

  @override
  _IzziTVWidgetState createState() => _IzziTVWidgetState();
}

class _IzziTVWidgetState extends State<IzziTVWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.home_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 600),
                reverseDuration: Duration(milliseconds: 600),
                child: HomePageWidget(),
              ),
            );
          },
        ),
        title: Image.network(
          'https://www.izzi.mx/unity/femexfut/img/izzi.png',
          height: 50,
          fit: BoxFit.fitHeight,
        ),
        actions: [
          FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: FaIcon(
              FontAwesomeIcons.solidUserCircle,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  duration: Duration(milliseconds: 600),
                  reverseDuration: Duration(milliseconds: 600),
                  child: UsuarioWidget(),
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: Text(
                    'Contamos con estos \nservicios y muchos más',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
                Expanded(
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 1.8,
                    ),
                    primary: false,
                    scrollDirection: Axis.vertical,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/disney.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/star.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/hbo.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/universal.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/starplay.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/paramount.jpg?raw=true',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/blim.jpg?raw=true',
                          width: 200,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/netflix.jpg?raw=true',
                          width: 200,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Contrata estos servicios y más desde tu dispositivo IzziTV',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).subtitle2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
