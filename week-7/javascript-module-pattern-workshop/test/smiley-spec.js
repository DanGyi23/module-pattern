describe("smiley", function () {
  it("should add two spaces and a :) to passed string", function () {
    expect(smiley("hello")).toEqual("hello  :)");
  });
});