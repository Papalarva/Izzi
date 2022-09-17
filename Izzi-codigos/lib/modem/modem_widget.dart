import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../usuario/usuario_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ModemWidget extends StatefulWidget {
  const ModemWidget({Key? key}) : super(key: key);

  @override
  _ModemWidgetState createState() => _ModemWidgetState();
}

class _ModemWidgetState extends State<ModemWidget> {
  TextEditingController? modemPassword4GController;

  late bool modemPassword4GVisibility;

  TextEditingController? nameModemController;

  TextEditingController? modemPassword5GController;

  late bool modemPassword5GVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    modemPassword4GController =
        TextEditingController(text: FFAppState().modemPassword4G);
    modemPassword4GVisibility = false;
    nameModemController = TextEditingController(text: FFAppState().nameModem);
    modemPassword5GController =
        TextEditingController(text: FFAppState().modemPassword4G);
    modemPassword5GVisibility = false;
  }

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: Colors.transparent,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://github.com/Papalarva/UIII-Proyecto-Final-IOS---Pablo-EL/blob/main/assets/images/izzi-modem.jpg?raw=true',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Text(
                            'Izzi',
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(70, 0, 70, 0),
                          child: TextFormField(
                            controller: nameModemController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF04BFAD),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            '2.4 GHz',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                icon: Icon(
                                  Icons.wifi_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mi red',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  Text(
                                    'WLNA',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.pen,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                icon: Icon(
                                  Icons.lock_open,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mi contraseña',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child: TextFormField(
                                        controller: modemPassword4GController,
                                        obscureText: !modemPassword4GVisibility,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => modemPassword4GVisibility =
                                                  !modemPassword4GVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              modemPassword4GVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.pen,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            '5 GHz',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                fillColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                icon: Icon(
                                  Icons.wifi_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mi red',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  Text(
                                    'WLNA',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.pen,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 60,
                                fillColor:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                icon: Icon(
                                  Icons.lock_open,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Mi contraseña',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText2,
                                  ),
                                  Container(
                                    width: 200,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child: TextFormField(
                                        controller: modemPassword5GController,
                                        obscureText: !modemPassword5GVisibility,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: InkWell(
                                            onTap: () => setState(
                                              () => modemPassword5GVisibility =
                                                  !modemPassword5GVisibility,
                                            ),
                                            focusNode:
                                                FocusNode(skipTraversal: true),
                                            child: Icon(
                                              modemPassword5GVisibility
                                                  ? Icons.visibility_outlined
                                                  : Icons
                                                      .visibility_off_outlined,
                                              color: Color(0xFF757575),
                                              size: 22,
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              FaIcon(
                                FontAwesomeIcons.pen,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setState(() =>
                        FFAppState().nameModem = nameModemController!.text);
                    setState(() => FFAppState().modemPassword4G =
                        modemPassword4GController!.text);
                    setState(() => FFAppState().modemPassword5G =
                        modemPassword5GController!.text);
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
                  text: 'Guardar cambios',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 40,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
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
