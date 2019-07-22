cmd_Release/obj.target/equihashverify/equihashverify.o := g++ '-DNODE_GYP_MODULE_NAME=equihashverify' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DHAVE_DECL_STRNLEN=1' '-DHAVE_BYTESWAP_H=1' '-DBUILDING_NODE_EXTENSION' -I/home/mmitech/.node-gyp/10.16.0/include/node -I/home/mmitech/.node-gyp/10.16.0/src -I/home/mmitech/.node-gyp/10.16.0/deps/openssl/config -I/home/mmitech/.node-gyp/10.16.0/deps/openssl/openssl/include -I/home/mmitech/.node-gyp/10.16.0/deps/uv/include -I/home/mmitech/.node-gyp/10.16.0/deps/zlib -I/home/mmitech/.node-gyp/10.16.0/deps/v8/include -I../node_modules/nan -I../. -I/usr/include -I/usr/include/boost  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++1y -std=c++11 -Wl,--whole-archive -fPIC -fexceptions -MMD -MF ./Release/.deps/Release/obj.target/equihashverify/equihashverify.o.d.raw   -c -o Release/obj.target/equihashverify/equihashverify.o ../equihashverify.cc
Release/obj.target/equihashverify/equihashverify.o: ../equihashverify.cc \
 ../node_modules/nan/nan.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node_version.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv/errno.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv/version.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv/unix.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv/threadpool.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/uv/linux.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/v8.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/v8-version.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/v8config.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/v8-platform.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node_version.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node_buffer.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/node_object_wrap.h \
 ../node_modules/nan/nan_callbacks.h \
 ../node_modules/nan/nan_callbacks_12_inl.h \
 ../node_modules/nan/nan_maybe_43_inl.h \
 ../node_modules/nan/nan_converters.h \
 ../node_modules/nan/nan_converters_43_inl.h \
 ../node_modules/nan/nan_new.h \
 ../node_modules/nan/nan_implementation_12_inl.h \
 ../node_modules/nan/nan_persistent_12_inl.h \
 ../node_modules/nan/nan_weak.h ../node_modules/nan/nan_object_wrap.h \
 ../node_modules/nan/nan_private.h \
 ../node_modules/nan/nan_typedarray_contents.h \
 ../node_modules/nan/nan_json.h \
 /home/mmitech/.node-gyp/10.16.0/include/node/v8.h ../crypto/equihash.h \
 .././crypto/sha256.h .././utilstrencodings.h \
 ../crypto/blake/sse/blake2.h ../crypto/equihash.tcc \
 ../beam/core/difficulty.h ../beam/core/uintBig.h ../beam/core/common.h \
 ../beam/core/../utility/common.h
../equihashverify.cc:
../node_modules/nan/nan.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node_version.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv/errno.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv/version.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv/unix.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv/threadpool.h:
/home/mmitech/.node-gyp/10.16.0/include/node/uv/linux.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node.h:
/home/mmitech/.node-gyp/10.16.0/include/node/v8.h:
/home/mmitech/.node-gyp/10.16.0/include/node/v8-version.h:
/home/mmitech/.node-gyp/10.16.0/include/node/v8config.h:
/home/mmitech/.node-gyp/10.16.0/include/node/v8-platform.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node_version.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node_buffer.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node.h:
/home/mmitech/.node-gyp/10.16.0/include/node/node_object_wrap.h:
../node_modules/nan/nan_callbacks.h:
../node_modules/nan/nan_callbacks_12_inl.h:
../node_modules/nan/nan_maybe_43_inl.h:
../node_modules/nan/nan_converters.h:
../node_modules/nan/nan_converters_43_inl.h:
../node_modules/nan/nan_new.h:
../node_modules/nan/nan_implementation_12_inl.h:
../node_modules/nan/nan_persistent_12_inl.h:
../node_modules/nan/nan_weak.h:
../node_modules/nan/nan_object_wrap.h:
../node_modules/nan/nan_private.h:
../node_modules/nan/nan_typedarray_contents.h:
../node_modules/nan/nan_json.h:
/home/mmitech/.node-gyp/10.16.0/include/node/v8.h:
../crypto/equihash.h:
.././crypto/sha256.h:
.././utilstrencodings.h:
../crypto/blake/sse/blake2.h:
../crypto/equihash.tcc:
../beam/core/difficulty.h:
../beam/core/uintBig.h:
../beam/core/common.h:
../beam/core/../utility/common.h:
