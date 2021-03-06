set -e
mkdir -p build

SUFFIX=
DEFINES=
#SUFFIX=_big
#DEFINES=-DBIG_VALUE

ARGS="$DEFINES -g -O3 -m64 -std=c++11 -Wall -Ihashtable -I. helpers.cpp report.cpp memory.cpp hashtable/test_hashtable.cpp testmain.cpp"


echo stl map $SUFFIX
clang++ -o build/ht_stl_map$SUFFIX -DIMPL_STL_MAP -DIMPL_ALLOCATOR_STL $ARGS
echo stl unordered map $SUFFIX
clang++ -o build/ht_stl_unordered_map$SUFFIX -DIMPL_STL_UNORDERED_MAP -DIMPL_ALLOCATOR_STL $ARGS

#echo eastl hash_map $SUFFIX
#clang++ -o build/ht_eastl_hash_map$SUFFIX -DIMPL_EASTL_HASH_MAP -DIMPL_ALLOCATOR_EASTL -DIMPL_EASTL -I../../external/EASTL/include -I../../external/EASTL/test/packages/EABase/include/Common ../../external/EASTL/source/hashtable.cpp $ARGS

#echo boost unordered_map $SUFFIX
#clang++ -o build/ht_boost_unordered_map$SUFFIX -DIMPL_BOOST_UNORDERED_MAP -DIMPL_ALLOCATOR_BOOST -DBOOST_CONTAINER_STATIC_LINK=1 -I../../external/boost/ ../../external/boost/libs/container/src/alloc_lib.c ../../external/boost/libs/container/src/dlmalloc.cpp -Wno-deprecated-declarations $ARGS
#echo boost flat_map $SUFFIX
#clang++ -o build/ht_boost_flat_map$SUFFIX -DIMPL_BOOST_FLAT_MAP -DIMPL_ALLOCATOR_BOOST -DBOOST_CONTAINER_STATIC_LINK=1 -I../../external/boost ../../external/boost/libs/container/src/alloc_lib.c ../../external/boost/libs/container/src/dlmalloc.cpp -Wno-deprecated-declarations $ARGS

#echo google sparse_hash_map $SUFFIX
#clang++ -o build/ht_google_sparse_hash_map$SUFFIX -DIMPL_GOOGLE_SPARSEHASHMAP -DIMPL_ALLOCATOR_STL -I../../external/sparsehash/src $ARGS
#echo google dense_hash_map $SUFFIX
#clang++ -o build/ht_google_dense_hash_map$SUFFIX -DIMPL_GOOGLE_DENSEHASHMAP -DIMPL_ALLOCATOR_STL -I../../external/sparsehash/src $ARGS

#echo dmHashTable $SUFFIX
#clang++ -o build/ht_dm_hashtable$SUFFIX -DIMPL_DM_HASHTABLE -DIMPL_ALLOCATOR_NEW -I../../external/dmhashtable $ARGS

echo jc hashtable $SUFFIX
clang++ -o build/ht_jc_hashtable$SUFFIX -DIMPL_JC_HASHTABLE -DIMPL_ALLOCATOR_NEW $ARGS
