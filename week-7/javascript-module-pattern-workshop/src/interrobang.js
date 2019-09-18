"use strict";

(function(exports) {
  function interrobang(exclaim, question, smiley, string) {
    return exclaim(question(smiley((string))));
  };

  exports.interrobang = interrobang;
})(this);
