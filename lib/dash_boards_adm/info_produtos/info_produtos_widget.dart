import '/backend/supabase/supabase.dart';
import '/dash_boards_adm/editar_produtos/editar_produtos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'info_produtos_model.dart';
export 'info_produtos_model.dart';

class InfoProdutosWidget extends StatefulWidget {
  const InfoProdutosWidget({
    super.key,
    required this.referencia,
  });

  final ProdutosRow? referencia;

  @override
  State<InfoProdutosWidget> createState() => _InfoProdutosWidgetState();
}

class _InfoProdutosWidgetState extends State<InfoProdutosWidget> {
  late InfoProdutosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoProdutosModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.referencia?.img,
                      'data:image/png;base64,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',
                    ),
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.referencia?.nomeProduto,
                        'produto',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Text(
                      valueOrDefault<String>(
                        widget.referencia?.descricao,
                        'descrição',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            widget.referencia?.valor,
                            formatType: FormatType.custom,
                            currency: 'R\$',
                            format: '0.00',
                            locale: 'pt_BR',
                          ),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          dateTimeFormat(
                            'dd/MM/yyy',
                            widget.referencia?.createdAt,
                            locale: FFLocalizations.of(context).languageCode,
                          ),
                          '---',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: EditarProdutosWidget(
                                referencia: widget.referencia!,
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
                      },
                      text: 'Editar',
                      options: FFButtonOptions(
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        var confirmDialogResponse = await showDialog<bool>(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Deseja deletar esse produto?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, false),
                                      child: const Text('Cancelar'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(
                                          alertDialogContext, true),
                                      child: const Text('Deletar'),
                                    ),
                                  ],
                                );
                              },
                            ) ??
                            false;
                        if (confirmDialogResponse) {
                          await ProdutosTable().delete(
                            matchingRows: (rows) => rows.eq(
                              'id',
                              widget.referencia?.id,
                            ),
                          );

                          context.pushNamed(
                            'dashProdutos',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        } else {
                          return;
                        }
                      },
                      child: Icon(
                        Icons.delete_sweep,
                        color: FlutterFlowTheme.of(context).error,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
