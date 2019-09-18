describe("interrobang", function() {
  it("should add two question marks and an exclamation mark, AND a smiley to passed string", function () {
    expect(interrobang(smiley, exclaim, question, "hello")).toEqual("hello??!  :)");
  });
});