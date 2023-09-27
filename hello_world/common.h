#include <stdio.h>
#include "rpc.h"

static const std::string kServerHostname = "desktop01_rdma0";
static const std::string kClientHostname = "desktop02_rdma0";

static constexpr uint16_t kUDPPort = 31850;
static constexpr uint8_t kReqType = 2;
static constexpr size_t kMsgSize = 16;
