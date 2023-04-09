import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'children_name_model.dart';
export 'children_name_model.dart';

class ChildrenNameWidget extends StatefulWidget {
  const ChildrenNameWidget({Key? key}) : super(key: key);

  @override
  _ChildrenNameWidgetState createState() => _ChildrenNameWidgetState();
}

class _ChildrenNameWidgetState extends State<ChildrenNameWidget> {
  late ChildrenNameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChildrenNameModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).overlay0,
          automaticallyImplyLeading: false,
          title: Text(
            'Kid Information',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.add_circle_outline_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                  child:
                      PagedListView<DocumentSnapshot<Object?>?, ChildrenRecord>(
                    pagingController: () {
                      final Query<Object?> Function(Query<Object?>)
                          queryBuilder = (childrenRecord) => childrenRecord
                              .where('IsTeacher', isEqualTo: false)
                              .orderBy('disorder');
                      if (_model.pagingController != null) {
                        final query = queryBuilder(ChildrenRecord.collection);
                        if (query != _model.pagingQuery) {
                          // The query has changed
                          _model.pagingQuery = query;

                          _model.pagingController!.refresh();
                        }
                        return _model.pagingController!;
                      }

                      _model.pagingController =
                          PagingController(firstPageKey: null);
                      _model.pagingQuery =
                          queryBuilder(ChildrenRecord.collection);
                      _model.pagingController!
                          .addPageRequestListener((nextPageMarker) {
                        queryChildrenRecordPage(
                          queryBuilder: (childrenRecord) => childrenRecord
                              .where('IsTeacher', isEqualTo: false)
                              .orderBy('disorder'),
                          nextPageMarker: nextPageMarker,
                          pageSize: 25,
                          isStream: false,
                        ).then((page) {
                          _model.pagingController!.appendPage(
                            page.data,
                            page.nextPageMarker,
                          );
                        });
                      });
                      return _model.pagingController!;
                    }(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<ChildrenRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewChildrenRecord =
                            _model.pagingController!.itemList![listViewIndex];
                        return InkWell(
                          onTap: () async {
                            context.pushNamed(
                              'ChildInfoPage',
                              queryParams: {
                                'name': serializeParam(
                                  listViewChildrenRecord.name,
                                  ParamType.String,
                                ),
                                'childData': serializeParam(
                                  listViewChildrenRecord,
                                  ParamType.Document,
                                ),
                                'disorder': serializeParam(
                                  listViewChildrenRecord.disorder,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'childData': listViewChildrenRecord,
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          },
                          child: ListTile(
                            title: Text(
                              listViewChildrenRecord.name!,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                            ),
                            subtitle: Text(
                              listViewChildrenRecord.disorder!,
                              style: FlutterFlowTheme.of(context).titleSmall,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20.0,
                            ),
                            tileColor:
                                FlutterFlowTheme.of(context).primaryBtnText,
                            dense: false,
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                          ),
                        );
                      },
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
