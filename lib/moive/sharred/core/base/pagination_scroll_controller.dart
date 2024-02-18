import 'package:flutter/material.dart';

/* there is another way to do pagination
ScrollCOnt
ScrollController sc = new ScrollController();
sc.addListener((){});

*/
class PageIntation extends ScrollController {
  PageIntation(Function pageInt) {
    // this varable means to the user scroll or not
    //! at first the user not scroll
    bool isScrolling = false;
    addListener(() async {
      // if the user begin to scroll
      if (!isScrolling) {
        //! maxScrollExtent this the max posittion in your list in screeen
        if (position.maxScrollExtent <= position.pixels) {
          // load more data
          isScrolling = true;
          pageInt();
          isScrolling = false;
        }
      }
    });
  }
}
