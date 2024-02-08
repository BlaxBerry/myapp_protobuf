PROTO_SRC_DIR := ./protos

DST_DIR_GO := .
DST_DIR_TS := ./ts
# DST_DIR_PY := ./py

make:
	make gen-go 
	make gen-ts
	
gen-go:
	protoc -I=$(PROTO_SRC_DIR) \
	--go_out=$(DST_DIR_GO) $(PROTO_SRC_DIR)/*.proto
	
gen-ts:
	protoc -I=$(PROTO_SRC_DIR) \
	--plugin="protoc-gen-ts=node_modules/.bin/protoc-gen-ts" \
	--ts_out=$(DST_DIR_TS) $(PROTO_SRC_DIR)/*.proto

# gen-py:
# 	protoc -I=$(PROTO_SRC_DIR) \
# 	--python_out=$(DST_DIR_PY) $(PROTO_SRC_DIR)/**/*.proto
