// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/moive/sharred/core/base/pagination_scroll_controller.dart';
// import 'package:flutter_application_1/moive/sharred/core/enums/scroll_view_enums.dart';

// class PaginationScrollVIew extends StatelessWidget {
//   final PageIntation scrollContoller;
//   final ScrollViewEnums type;
//   final bool paingationLoader;
//   final EdgeInsetsGeometry padding;
//   final List<Widget> myList;

//   const PaginationScrollVIew(
//       {required this.myList,
//       required this.scrollContoller,
//       required this.type,
//       required this.paingationLoader,
//       required this.padding,
//       Key? key})
//       : super(key: key);



// Widget _buildType(context){
//   switch(type){
//     case ScrollViewEnums.wrap: return LayoutBuilder(builder: (context, BoxConstraints constraints){
//       if(constraints.maxWidth >1000){
//         return  GridView.builder(gridDelegate: Sliver, itemBuilder: itemBuilder)
//       }

//     }) ;
//   }

// }





//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/moive/sharred/core/base/pagination_scroll_controller.dart';
// // import 'package:flutter_application_1/moive/sharred/core/enums/scroll_view_enums.dart';

// // import '../../widgets/app_progress.dart';

// // class PaginationScrollView extends StatelessWidget {
// //   final PageIntation scrollController;
// //   final ScrollViewEnums type;
// //   final bool paginationLoader;
// //   final EdgeInsetsGeometry padding;
// //   final List<Widget> children;

// //   const PaginationScrollView({
// //     Key? key,
// //     required this.scrollController,
// //     required this.type,
// //     required this.paginationLoader,
// //     required this.padding,
// //     required this.children,
// //   }) : super(key: key);

// //   Widget _buildByType(BuildContext context) {
// //     switch (type) {
// //       case ScrollViewEnums.wrap:
// //         return LayoutBuilder(
// //           builder: (BuildContext context, BoxConstraints constraints) {
// //             if (constraints.maxWidth > 1000) {
// //               return _wrapView(
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 4,
// //                   childAspectRatio: 0.55,
// //                 ),
// //               );
// //             } else if (constraints.maxWidth > 600) {
// //               return _wrapView(
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 3,
// //                   childAspectRatio: 0.55,
// //                 ),
// //               );
// //             } else {
// //               return _wrapView(
// //                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //                   crossAxisCount: 2,
// //                   childAspectRatio: 0.55,
// //                 ),
// //               );
// //             }
// //           },
// //         );
// //       case ScrollViewEnums.column:
// //       default:
// //         return ListView.builder(
// //           padding: padding,
// //           controller: scrollController,
// //           physics: const AlwaysScrollableScrollPhysics(),
// //           itemCount: children.length,
// //           itemBuilder: (_, int i) {
// //             return children[i];
// //           },
// //         );
// //     }
// //   }

// //   Widget _wrapView({
// //     required SliverGridDelegate gridDelegate,
// //   }) {
// //     return GridView.builder(
// //       padding: padding,
// //       controller: scrollController,
// //       gridDelegate: gridDelegate,
// //       physics: const AlwaysScrollableScrollPhysics(),
// //       itemCount: children.length,
// //       itemBuilder: (_, int i) {
// //         return children[i];
// //       },
// //     );
// //   }

// //   Widget _loader() {
// //     return Offstage(
// //       offstage: !paginationLoader,
// //       child: const Padding(
// //         padding: EdgeInsets.only(top: 24, bottom: 28),
// //         child: AppProgress(),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       children: <Widget>[
// //         Expanded(
// //           child: _buildByType(context),
// //         ),
// //         _loader(),
// //       ],
// //     );
// //   }
// // }