local util = require "util"

describe("strip trailing slash", function()
  it("removes the trailing slash", function()
    assert.are.equal("/foo/bar", util.strip_trailing_slash("/foo/bar/"))
    assert.are.equal("/foo/bar", util.strip_trailing_slash("/foo/bar//"))
    assert.are.equal("", util.strip_trailing_slash("/"))
  end)

  it("does nothing to a string without a trailing slash", function()
    assert.are.equal("foobar", util.strip_trailing_slash("foobar"))
    assert.are.equal("", util.strip_trailing_slash(""))
  end)
end)


describe("strip leading slash", function()
  it("removes the leading slash", function()
    assert.are.equal("foo/bar/", util.strip_leading_slash("/foo/bar/"))
    assert.are.equal("foo/bar/", util.strip_leading_slash("//foo/bar/"))
    assert.are.equal("", util.strip_leading_slash("/"))
  end)

  it("does nothing to a string without a leading slash", function()
    assert.are.equal("foobar", util.strip_leading_slash("foobar"))
    assert.are.equal("", util.strip_leading_slash(""))
  end)
end)