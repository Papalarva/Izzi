import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../usuario/usuario_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WifiWidget extends StatefulWidget {
  const WifiWidget({Key? key}) : super(key: key);

  @override
  _WifiWidgetState createState() => _WifiWidgetState();
}

class _WifiWidgetState extends State<WifiWidget> {
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
            padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFF25C05),
                          width: 3,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF25C05),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Navega con',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                ),
                                Text(
                                  '30',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'de velocidad',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                                Text(
                                  '50 canales',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: 170,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFFF25C05),
                                  width: 3,
                                ),
                              ),
                              alignment:
                                  AlignmentDirectional(0, -0.09999999999999998),
                              child: Text(
                                'Doble descuento con  el doble de megas',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                          Text(
                            '\$660 a \$550 \nX  promoción',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (FFAppState().megas == 'X megas') {
                                  setState(
                                      () => FFAppState().megas = '30 megas');
                                  setState(() =>
                                      FFAppState().canales = '50 canales');
                                  setState(() =>
                                      FFAppState().precioInicial = '\$660');
                                  setState(() =>
                                      FFAppState().precioPromocion = '\$550');
                                  setState(() => FFAppState().duracionContrato =
                                      '3 meses');

                                  final paqueteInternetCreateData =
                                      createPaqueteInternetRecordData(
                                    megas: '30',
                                    precioInicial: '\$660',
                                    precioPromocion: '&550',
                                    duracionContrato: '3 meses',
                                    canales: '50 canales',
                                  );
                                  await PaqueteInternetRecord.createDoc(
                                          currentUserReference!)
                                      .set(paqueteInternetCreateData);
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: UsuarioWidget(),
                                    ),
                                  );
                                } else {
                                  if (FFAppState().megas == '30 megas') {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Cambiar de plan'),
                                          content: Text(
                                              'Según tu contrato, el plan elegido tiene una espera de 3 meses para elegir otro distinto'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    if (FFAppState().megas == '50 megas') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Cambiar de plan'),
                                            content: Text(
                                                'Según tu contrato, el plan elegido tiene una espera de 6 meses para elegir otro distinto'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      if (FFAppState().megas == '100 megas') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Cambiar de plan'),
                                              content: Text(
                                                  'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        if (FFAppState().megas == '500 megas') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Cambiar de plan'),
                                                content: Text(
                                                    'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              text: 'Contrata ahora',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFFD90479),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          width: 3,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF04BFAD),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Navega con',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                ),
                                Text(
                                  '50',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'de velocidad',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                                Text(
                                  '60 canales',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: 170,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFF04BFAD),
                                  width: 3,
                                ),
                              ),
                              alignment:
                                  AlignmentDirectional(0, -0.09999999999999998),
                              child: Text(
                                'Doble descuento con  el doble de megas',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                          Text(
                            '\$720 a \$600\nX  promoción',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (FFAppState().megas == 'X megas') {
                                  setState(
                                      () => FFAppState().megas = '50 megas');
                                  setState(() =>
                                      FFAppState().canales = '60 canales');
                                  setState(() =>
                                      FFAppState().precioInicial = '\$720');
                                  setState(() =>
                                      FFAppState().precioPromocion = '\$600');
                                  setState(() => FFAppState().duracionContrato =
                                      '6 meses');

                                  final paqueteInternetCreateData =
                                      createPaqueteInternetRecordData(
                                    megas: '50',
                                    precioInicial: '\$720',
                                    precioPromocion: '&600',
                                    duracionContrato: '6 meses',
                                    canales: '60 canales',
                                  );
                                  await PaqueteInternetRecord.createDoc(
                                          currentUserReference!)
                                      .set(paqueteInternetCreateData);
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: UsuarioWidget(),
                                    ),
                                  );
                                } else {
                                  if (FFAppState().megas == '30 megas') {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Cambiar de plan'),
                                          content: Text(
                                              'Según tu contrato, el plan elegido tiene una espera de 3 meses para elegir otro distinto'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    if (FFAppState().megas == '50 megas') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Cambiar de plan'),
                                            content: Text(
                                                'Según tu contrato, el plan elegido tiene una espera de 6 meses para elegir otro distinto'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      if (FFAppState().megas == '100 megas') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Cambiar de plan'),
                                              content: Text(
                                                  'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        if (FFAppState().megas == '500 megas') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Cambiar de plan'),
                                                content: Text(
                                                    'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              text: 'Contrata ahora',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFFD90479),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          width: 3,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFD90479),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Navega con',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                ),
                                Text(
                                  '100',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'de velocidad',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                                Text(
                                  '200 canales',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: 170,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFFD90479),
                                  width: 3,
                                ),
                              ),
                              alignment:
                                  AlignmentDirectional(0, -0.09999999999999998),
                              child: Text(
                                'Doble descuento con  el doble de megas',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                          Text(
                            '\$910 a \$700\nX  promoción',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (FFAppState().megas == 'X megas') {
                                  setState(
                                      () => FFAppState().megas = '100 megas');
                                  setState(() =>
                                      FFAppState().canales = '200 canales');
                                  setState(() =>
                                      FFAppState().precioInicial = '\$910');
                                  setState(() =>
                                      FFAppState().precioPromocion = '\$700');
                                  setState(() => FFAppState().duracionContrato =
                                      '12 meses');

                                  final paqueteInternetCreateData =
                                      createPaqueteInternetRecordData(
                                    megas: '100',
                                    precioInicial: '\$910',
                                    precioPromocion: '&700',
                                    duracionContrato: '12 meses',
                                    canales: '200 canales',
                                  );
                                  await PaqueteInternetRecord.createDoc(
                                          currentUserReference!)
                                      .set(paqueteInternetCreateData);
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: UsuarioWidget(),
                                    ),
                                  );
                                } else {
                                  if (FFAppState().megas == '30 megas') {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Cambiar de plan'),
                                          content: Text(
                                              'Según tu contrato, el plan elegido tiene una espera de 3 meses para elegir otro distinto'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    if (FFAppState().megas == '50 megas') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Cambiar de plan'),
                                            content: Text(
                                                'Según tu contrato, el plan elegido tiene una espera de 6 meses para elegir otro distinto'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      if (FFAppState().megas == '100 megas') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Cambiar de plan'),
                                              content: Text(
                                                  'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        if (FFAppState().megas == '500 megas') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Cambiar de plan'),
                                                content: Text(
                                                    'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              text: 'Contrata ahora',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFFD90479),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.47,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFF2B705),
                          width: 3,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2B705),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Navega con',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                ),
                                Text(
                                  '500',
                                  style: FlutterFlowTheme.of(context)
                                      .title1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  'de velocidad',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                                Text(
                                  '200 canales',
                                  style: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                            child: Container(
                              width: 170,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFFF2B705),
                                  width: 3,
                                ),
                              ),
                              alignment:
                                  AlignmentDirectional(0, -0.09999999999999998),
                              child: Text(
                                'Doble descuento con  el doble de megas',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                          Text(
                            '\$1,740 a \$1550\nX  promoción',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (FFAppState().megas == 'X megas') {
                                  setState(
                                      () => FFAppState().megas = '500 megas');
                                  setState(() =>
                                      FFAppState().canales = '200 canales');
                                  setState(() =>
                                      FFAppState().precioInicial = '\$1,740');
                                  setState(() =>
                                      FFAppState().precioPromocion = '\$1,550');
                                  setState(() => FFAppState().duracionContrato =
                                      '12 meses');

                                  final paqueteInternetCreateData =
                                      createPaqueteInternetRecordData(
                                    megas: '500',
                                    precioInicial: '\$1740',
                                    precioPromocion: '&1,550',
                                    duracionContrato: '12 meses',
                                    canales: '200 canales',
                                  );
                                  await PaqueteInternetRecord.createDoc(
                                          currentUserReference!)
                                      .set(paqueteInternetCreateData);
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      child: UsuarioWidget(),
                                    ),
                                  );
                                } else {
                                  if (FFAppState().megas == '30 megas') {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Cambiar de plan'),
                                          content: Text(
                                              'Según tu contrato, el plan elegido tiene una espera de 3 meses para elegir otro distinto'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    if (FFAppState().megas == '50 megas') {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Cambiar de plan'),
                                            content: Text(
                                                'Según tu contrato, el plan elegido tiene una espera de 6 meses para elegir otro distinto'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      if (FFAppState().megas == '100 megas') {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Cambiar de plan'),
                                              content: Text(
                                                  'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      } else {
                                        if (FFAppState().megas == '500 megas') {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Cambiar de plan'),
                                                content: Text(
                                                    'Según tu contrato, el plan elegido tiene una espera de 12 meses para elegir otro distinto'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        }
                                      }
                                    }
                                  }
                                }
                              },
                              text: 'Contrata ahora',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0xFFD90479),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
