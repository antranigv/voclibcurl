MODULE curl;

IMPORT
  SYSTEM;

TYPE
  CURLHandle* = SYSTEM.PTR;
  URL         = ARRAY 2048 OF CHAR;


PROCEDURE -Aincludecurl '#include <curl/curl.h>';

PROCEDURE -curlEasyInit(): CURLHandle
'curl_easy_init()';

PROCEDURE Init*(VAR handle: CURLHandle);
BEGIN
  handle := curlEasyInit()
END Init;

PROCEDURE -curlEasySetURL(handle: CURLHandle; url: URL)
'curl_easy_setopt(handle, CURLOPT_URL, url)';

PROCEDURE SetURL*(handle: CURLHandle; url: URL);
BEGIN
  curlEasySetURL(handle, url)
END SetURL;

PROCEDURE -curlEasyPerform(handle: CURLHandle): INTEGER
'(INTEGER) curl_easy_perform(handle)';

PROCEDURE Perform*(handle: CURLHandle): INTEGER;
BEGIN
  RETURN curlEasyPerform(handle)
END Perform;

PROCEDURE -curlEasyCleanup(handle: CURLHandle)
"curl_easy_cleanup(handle)";

PROCEDURE Cleanup*(handle: CURLHandle);
BEGIN
  curlEasyCleanup(handle);
END Cleanup;

END curl.
