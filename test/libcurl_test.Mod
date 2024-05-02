MODULE curlTest;

IMPORT
  curl,
  Out;

PROCEDURE TestGET;
VAR
  handle  : curl.CURLHandle;
  ret     : INTEGER;
BEGIN
  Out.String("initing"); Out.Ln;
  curl.Init(handle);
  Out.String("Setting URL"); Out.Ln;
  curl.SetURL(handle, "https://example.com/");
  Out.String("Starting curl"); Out.Ln;
  ret := curl.Perform(handle);
  Out.Int(ret, 0);
  Out.Ln;
  curl.Cleanup(handle);
END TestGET;

BEGIN
  TestGET;
END curlTest.
