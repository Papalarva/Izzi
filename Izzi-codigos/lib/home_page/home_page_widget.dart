import '../antivirus/antivirus_widget.dart';
import '../factura/factura_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../izzi_t_v/izzi_t_v_widget.dart';
import '../modem/modem_widget.dart';
import '../usuario/usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 260,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Text(
                                      '1er lugar de velocidad',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFD90479),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/campcombop-residencial-thumb_(1)-800x369-830184161.png',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'IzziTv Smart',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFD90479),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Image.asset(
                                    'assets/images/izzi-1.png',
                                    width: double.infinity,
                                    height: 170,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '1er lugar de velocidad \nen ranking de Netflix',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFD90479),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Image.asset(
                                    'assets/images/campenero-home-thumb.png',
                                    width: double.infinity,
                                    height: 150,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Aprovecha nuestras promociones',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFD90479),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Image.asset(
                                    'assets/images/cverano-residencial-gdl-thumb-640x483-187059181.png',
                                    height: 180,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 4,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController!.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: Color(0xFFD90479),
                                paintStyle: PaintingStyle.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 50),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: AntivirusWidget(),
                                    ),
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.scaleDown,
                                        image: Image.network(
                                          '',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/antivirus.png?raw=true',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            'Antivirus',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFF29C50),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: IzziTVWidget(),
                                    ),
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          '',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/entretenimiento.png?raw=true',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            'Izzi TV',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFBF0B0B),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: ModemWidget(),
                                    ),
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          '',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/modem.png?raw=true',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            'Modem',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF03A62C),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: FacturaWidget(),
                                    ),
                                  );
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          '',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    alignment: AlignmentDirectional(0, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.15, 0),
                                            child: Image.network(
                                              'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/recibo.png?raw=true',
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            'Factura',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF7229D9),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
