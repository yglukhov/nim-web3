# https://github.com/ethereum/execution-apis/blob/v1.0.0-beta.3/src/engine/paris.md#methods
# https://github.com/ethereum/execution-apis/blob/v1.0.0-beta.3/src/engine/shanghai.md#methods
# https://github.com/ethereum/execution-apis/blob/ee3df5bc38f28ef35385cefc9d9ca18d5e502778/src/engine/cancun.md#methods

import ethtypes, engine_api_types

proc engine_newPayloadV1(payload: ExecutionPayloadV1): PayloadStatusV1
proc engine_newPayloadV2(payload: ExecutionPayloadV2): PayloadStatusV1
proc engine_newPayloadV3(payload: ExecutionPayloadV3, expectedBlobVersionedHashes: seq[VersionedHash], parentBeaconBlockRoot: FixedBytes[32]): PayloadStatusV1
proc engine_forkchoiceUpdatedV1(forkchoiceState: ForkchoiceStateV1, payloadAttributes: Option[PayloadAttributesV1]): ForkchoiceUpdatedResponse
proc engine_forkchoiceUpdatedV2(forkchoiceState: ForkchoiceStateV1, payloadAttributes: Option[PayloadAttributesV2]): ForkchoiceUpdatedResponse
proc engine_forkchoiceUpdatedV3(forkchoiceState: ForkchoiceStateV1, payloadAttributes: Option[PayloadAttributesV3]): ForkchoiceUpdatedResponse
proc engine_getPayloadV1(payloadId: PayloadID): ExecutionPayloadV1
proc engine_getPayloadV2(payloadId: PayloadID): GetPayloadV2Response
proc engine_getPayloadV2_exact(payloadId: PayloadID): GetPayloadV2ResponseExact
proc engine_getPayloadV3(payloadId: PayloadID): GetPayloadV3Response
proc engine_exchangeTransitionConfigurationV1(transitionConfiguration: TransitionConfigurationV1): TransitionConfigurationV1
proc engine_getPayloadBodiesByHashV1(hashes: seq[BlockHash]): seq[Option[ExecutionPayloadBodyV1]]
proc engine_getPayloadBodiesByRangeV1(start: Quantity, count: Quantity): seq[Option[ExecutionPayloadBodyV1]]

# https://github.com/ethereum/execution-apis/blob/9301c0697e4c7566f0929147112f6d91f65180f6/src/engine/common.md
proc engine_exchangeCapabilities(methods: seq[string]): seq[string]
