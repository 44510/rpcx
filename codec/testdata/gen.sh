# generate .go files from IDL
protoc -I.  --go_out=. --go_opt=module="testdata" ./protobuf.proto

thrift -r -out ../ --gen go ./thrift_colorgroup.thrift

# # run benchmarks
# go test -bench=. -run=none

# # clean files
# rm -rf ./testdata/*.go