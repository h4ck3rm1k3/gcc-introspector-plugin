#include <stdio.h>
#include <string.h>
#include "mongoose.h"

static void *callback(enum mg_event event,
                      struct mg_connection *conn,
                      const struct mg_request_info *request_info) {
  if (event == MG_NEW_REQUEST) {
    // Echo requested URI back to the client
    mg_printf(conn, "HTTP/1.1 200 OK\r\n"
              "Content-Type: text/plain\r\n\r\n"
              "%s", request_info->uri);
    return "";  // Mark as processed
  } else {
    return NULL;
  }
}

struct mg_context *ctx;

int mongoose_start(void) {

  const char *options[] = {"listening_ports", "8080", NULL};
  ctx = mg_start(&callback, NULL, options);
  return 0;
}

int mongoose_stop(void) {
  getchar();  // Wait until user hits "enter"
  mg_stop(ctx);
  
}
