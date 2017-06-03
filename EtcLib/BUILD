
cc_library(
	name = "EtcLib",
	includes = [
		"Etc",
		"EtcCodec",
	],
	hdrs = glob([
		"Etc/*.h",
		"EtcCodec/*.h",
	]),
	srcs = glob([
		"Etc/*.cpp",
		"EtcCodec/*.cpp",
	]),
	linkopts = [
		"-lpthread",
	],
	visibility = ["//visibility:public"],
)
