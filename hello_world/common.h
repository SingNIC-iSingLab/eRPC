#include <stdio.h>
#include "rpc.h"

static const std::string kServerHostname = "10.0.2.101";
static const std::string kClientHostname = "10.0.2.102";
// static const std::string kServerHostname = "192.168.0.211";
// static const std::string kClientHostname = "192.168.0.212";

static constexpr uint16_t kUDPPort = 31850;
static constexpr uint8_t kReqType = 2;
static constexpr size_t kMsgSize = 16;
