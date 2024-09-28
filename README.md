# fastText2

## Replicate tutorial: 
### Download fastText: 
$ wget https://github.com/facebookresearch/fastText/archive/v0.9.2.zip
Output: 
"--2024-09-27 13:03:21--  https://github.com/facebookresearch/fastText/archive/v0.9.2.zip
Resolving github.com (github.com)... 4.237.22.38
Connecting to github.com (github.com)|4.237.22.38|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://codeload.github.com/facebookresearch/fastText/zip/refs/tags/v0.9.2 [following]
--2024-09-27 13:03:22--  https://codeload.github.com/facebookresearch/fastText/zip/refs/tags/v0.9.2
Resolving codeload.github.com (codeload.github.com)... 4.237.22.35
Connecting to codeload.github.com (codeload.github.com)|4.237.22.35|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/zip]
Saving to: ‘v0.9.2.zip’

v0.9.2.zip                [  <=>                    ]   4.17M  14.5MB/s    in 0.3s    

2024-09-27 13:03:22 (14.5 MB/s) - ‘v0.9.2.zip’ saved [4369852]" 


$ unzip v0.9.2.zip
Output: 
"Archive:  v0.9.2.zip
5b5943c118b0ec5fb9cd8d20587de2b2d3966dfe
   creating: fastText-0.9.2/
   creating: fastText-0.9.2/.circleci/
  inflating: fastText-0.9.2/.circleci/cmake_test.sh  
  inflating: fastText-0.9.2/.circleci/config.yml  
  inflating: fastText-0.9.2/.circleci/gcc_test.sh  
  inflating: fastText-0.9.2/.circleci/pip_test.sh  
  inflating: fastText-0.9.2/.circleci/pull_data.sh  
  inflating: fastText-0.9.2/.circleci/python_test.sh  
  inflating: fastText-0.9.2/.circleci/run_locally.sh  
  inflating: fastText-0.9.2/.circleci/setup_circleimg.sh  
  inflating: fastText-0.9.2/.circleci/setup_debian.sh  
  inflating: fastText-0.9.2/.gitignore  
  inflating: fastText-0.9.2/CMakeLists.txt  
  inflating: fastText-0.9.2/CODE_OF_CONDUCT.md  
  inflating: fastText-0.9.2/CONTRIBUTING.md  
  inflating: fastText-0.9.2/LICENSE  
  inflating: fastText-0.9.2/MANIFEST.in  
  inflating: fastText-0.9.2/Makefile  
  inflating: fastText-0.9.2/README.md  
   creating: fastText-0.9.2/alignment/
  inflating: fastText-0.9.2/alignment/README.md  
  inflating: fastText-0.9.2/alignment/align.py  
  inflating: fastText-0.9.2/alignment/eval.py  
  inflating: fastText-0.9.2/alignment/example.sh  
  inflating: fastText-0.9.2/alignment/unsup_align.py  
  inflating: fastText-0.9.2/alignment/unsup_multialign.py  
  inflating: fastText-0.9.2/alignment/utils.py  
  inflating: fastText-0.9.2/classification-example.sh  
  inflating: fastText-0.9.2/classification-results.sh  
   creating: fastText-0.9.2/crawl/
  inflating: fastText-0.9.2/crawl/README.md  
  inflating: fastText-0.9.2/crawl/dedup.cc  
  inflating: fastText-0.9.2/crawl/download_crawl.sh  
  inflating: fastText-0.9.2/crawl/filter_dedup.sh  
  inflating: fastText-0.9.2/crawl/filter_utf8.cc  
  inflating: fastText-0.9.2/crawl/process_wet_file.sh  
   creating: fastText-0.9.2/docs/
  inflating: fastText-0.9.2/docs/aligned-vectors.md  
  inflating: fastText-0.9.2/docs/api.md  
  inflating: fastText-0.9.2/docs/autotune.md  
  inflating: fastText-0.9.2/docs/cheatsheet.md  
  inflating: fastText-0.9.2/docs/crawl-vectors.md  
  inflating: fastText-0.9.2/docs/dataset.md  
  inflating: fastText-0.9.2/docs/english-vectors.md  
  inflating: fastText-0.9.2/docs/faqs.md  
  inflating: fastText-0.9.2/docs/language-identification.md  
  inflating: fastText-0.9.2/docs/options.md  
  inflating: fastText-0.9.2/docs/pretrained-vectors.md  
  inflating: fastText-0.9.2/docs/python-module.md  
  inflating: fastText-0.9.2/docs/references.md  
  inflating: fastText-0.9.2/docs/supervised-models.md  
  inflating: fastText-0.9.2/docs/supervised-tutorial.md  
  inflating: fastText-0.9.2/docs/support.md  
  inflating: fastText-0.9.2/docs/unsupervised-tutorials.md  
  inflating: fastText-0.9.2/docs/webassembly-module.md  
  inflating: fastText-0.9.2/download_model.py  
  inflating: fastText-0.9.2/eval.py  
  inflating: fastText-0.9.2/fasttext.pc.in  
  inflating: fastText-0.9.2/get-wikimedia.sh  
   creating: fastText-0.9.2/python/
  inflating: fastText-0.9.2/python/README.md  
  inflating: fastText-0.9.2/python/README.rst  
   creating: fastText-0.9.2/python/benchmarks/
  inflating: fastText-0.9.2/python/benchmarks/README.rst  
  inflating: fastText-0.9.2/python/benchmarks/get_word_vector.py  
   creating: fastText-0.9.2/python/doc/
   creating: fastText-0.9.2/python/doc/examples/
  inflating: fastText-0.9.2/python/doc/examples/FastTextEmbeddingBag.py  
  inflating: fastText-0.9.2/python/doc/examples/bin_to_vec.py  
  inflating: fastText-0.9.2/python/doc/examples/compute_accuracy.py  
  inflating: fastText-0.9.2/python/doc/examples/get_vocab.py  
  inflating: fastText-0.9.2/python/doc/examples/train_supervised.py  
  inflating: fastText-0.9.2/python/doc/examples/train_unsupervised.py  
   creating: fastText-0.9.2/python/fasttext_module/
   creating: fastText-0.9.2/python/fasttext_module/fasttext/
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/FastText.py  
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/__init__.py  
   creating: fastText-0.9.2/python/fasttext_module/fasttext/pybind/
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/pybind/fasttext_pybind.cc  
   creating: fastText-0.9.2/python/fasttext_module/fasttext/tests/
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/tests/__init__.py  
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/tests/test_configurations.py  
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/tests/test_script.py  
   creating: fastText-0.9.2/python/fasttext_module/fasttext/util/
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/util/__init__.py  
  inflating: fastText-0.9.2/python/fasttext_module/fasttext/util/util.py  
  inflating: fastText-0.9.2/quantization-example.sh  
  inflating: fastText-0.9.2/reduce_model.py  
  inflating: fastText-0.9.2/runtests.py  
   creating: fastText-0.9.2/scripts/
   creating: fastText-0.9.2/scripts/kbcompletion/
  inflating: fastText-0.9.2/scripts/kbcompletion/README.md  
  inflating: fastText-0.9.2/scripts/kbcompletion/data.sh  
  inflating: fastText-0.9.2/scripts/kbcompletion/eval.cpp  
  inflating: fastText-0.9.2/scripts/kbcompletion/fb15k.sh  
  inflating: fastText-0.9.2/scripts/kbcompletion/fb15k237.sh  
  inflating: fastText-0.9.2/scripts/kbcompletion/svo.sh  
  inflating: fastText-0.9.2/scripts/kbcompletion/wn18.sh  
   creating: fastText-0.9.2/scripts/quantization/
  inflating: fastText-0.9.2/scripts/quantization/quantization-results.sh  
 extracting: fastText-0.9.2/setup.cfg  
  inflating: fastText-0.9.2/setup.py  
   creating: fastText-0.9.2/src/
  inflating: fastText-0.9.2/src/args.cc  
  inflating: fastText-0.9.2/src/args.h  
  inflating: fastText-0.9.2/src/autotune.cc  
  inflating: fastText-0.9.2/src/autotune.h  
  inflating: fastText-0.9.2/src/densematrix.cc  
  inflating: fastText-0.9.2/src/densematrix.h  
  inflating: fastText-0.9.2/src/dictionary.cc  
  inflating: fastText-0.9.2/src/dictionary.h  
  inflating: fastText-0.9.2/src/fasttext.cc  
  inflating: fastText-0.9.2/src/fasttext.h  
  inflating: fastText-0.9.2/src/loss.cc  
  inflating: fastText-0.9.2/src/loss.h  
  inflating: fastText-0.9.2/src/main.cc  
  inflating: fastText-0.9.2/src/matrix.cc  
  inflating: fastText-0.9.2/src/matrix.h  
  inflating: fastText-0.9.2/src/meter.cc  
  inflating: fastText-0.9.2/src/meter.h  
  inflating: fastText-0.9.2/src/model.cc  
  inflating: fastText-0.9.2/src/model.h  
  inflating: fastText-0.9.2/src/productquantizer.cc  
  inflating: fastText-0.9.2/src/productquantizer.h  
  inflating: fastText-0.9.2/src/quantmatrix.cc  
  inflating: fastText-0.9.2/src/quantmatrix.h  
  inflating: fastText-0.9.2/src/real.h  
  inflating: fastText-0.9.2/src/utils.cc  
  inflating: fastText-0.9.2/src/utils.h  
  inflating: fastText-0.9.2/src/vector.cc  
  inflating: fastText-0.9.2/src/vector.h  
   creating: fastText-0.9.2/tests/
  inflating: fastText-0.9.2/tests/fetch_test_data.sh  
   creating: fastText-0.9.2/webassembly/
  inflating: fastText-0.9.2/webassembly/README.md  
   creating: fastText-0.9.2/webassembly/doc/
   creating: fastText-0.9.2/webassembly/doc/examples/
  inflating: fastText-0.9.2/webassembly/doc/examples/misc.html  
  inflating: fastText-0.9.2/webassembly/doc/examples/predict.html  
  inflating: fastText-0.9.2/webassembly/doc/examples/train_supervised.html  
  inflating: fastText-0.9.2/webassembly/doc/examples/train_unsupervised.html  
  inflating: fastText-0.9.2/webassembly/fasttext.js  
  inflating: fastText-0.9.2/webassembly/fasttext_wasm.cc  
   creating: fastText-0.9.2/website/
  inflating: fastText-0.9.2/website/README.md  
   creating: fastText-0.9.2/website/blog/
  inflating: fastText-0.9.2/website/blog/2016-08-18-blog-post.md  
  inflating: fastText-0.9.2/website/blog/2017-05-02-blog-post.md  
  inflating: fastText-0.9.2/website/blog/2017-10-02-blog-post.md  
  inflating: fastText-0.9.2/website/blog/2019-06-25-blog-post.md  
   creating: fastText-0.9.2/website/core/
  inflating: fastText-0.9.2/website/core/Footer.js  
  inflating: fastText-0.9.2/website/package.json  
   creating: fastText-0.9.2/website/pages/
   creating: fastText-0.9.2/website/pages/en/
  inflating: fastText-0.9.2/website/pages/en/index.js  
  inflating: fastText-0.9.2/website/sidebars.json  
  inflating: fastText-0.9.2/website/siteConfig.js  
   creating: fastText-0.9.2/website/static/
   creating: fastText-0.9.2/website/static/docs/
   creating: fastText-0.9.2/website/static/docs/en/
   creating: fastText-0.9.2/website/static/docs/en/html/
 extracting: fastText-0.9.2/website/static/docs/en/html/.classfasttext_1_1QMatrix-members.html.i4eKqy  
  inflating: fastText-0.9.2/website/static/docs/en/html/annotated.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/annotated_dup.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/args_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/args_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/args_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/args_8h_source.html  
 extracting: fastText-0.9.2/website/static/docs/en/html/bc_s.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/bdwn.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/classes.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Args-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Args.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Args.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Dictionary-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Dictionary.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Dictionary.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1FastText-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1FastText.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1FastText.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Matrix-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Matrix.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Matrix.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Model-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Model.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Model.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1ProductQuantizer-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1ProductQuantizer.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1ProductQuantizer.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1QMatrix-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1QMatrix.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1QMatrix.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Vector-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Vector.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/classfasttext_1_1Vector.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/closed.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/dictionary_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/dictionary_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/dictionary_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/dictionary_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/dir_68267d1309a1af8e8297ef4c3efbcdba.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/dir_68267d1309a1af8e8297ef4c3efbcdba.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/doc.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/doxygen.css  
 extracting: fastText-0.9.2/website/static/docs/en/html/doxygen.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/dynsections.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/fasttext_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/fasttext_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/fasttext_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/fasttext_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/favicon.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/files.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/files.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/folderclosed.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/folderopen.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_0x7e.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_b.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_c.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_d.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_dup.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_e.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_f.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_func.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_g.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_i.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_k.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_l.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_m.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_n.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_o.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_p.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_q.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_r.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_s.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_t.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_u.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_v.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_vars.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_w.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/functions_z.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/globals.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/globals_defs.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/globals_func.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/index.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/jquery.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/main_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/main_8cc.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/matrix_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/matrix_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/matrix_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/menu.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/menudata.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/model_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/model_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/model_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/model_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacefasttext.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacefasttext.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacefasttext_1_1utils.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacemembers.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacemembers_enum.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacemembers_func.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespacemembers_type.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespaces.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/namespaces.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/nav_f.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/nav_g.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/nav_h.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/navtree.css  
  inflating: fastText-0.9.2/website/static/docs/en/html/navtree.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/navtreedata.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/navtreeindex0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/navtreeindex1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/open.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/productquantizer_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/productquantizer_8cc.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/productquantizer_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/productquantizer_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/qmatrix_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/qmatrix_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/qmatrix_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/real_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/real_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/real_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/resize.js  
   creating: fastText-0.9.2/website/static/docs/en/html/search/
 extracting: fastText-0.9.2/website/static/docs/en/html/search/.files_7.html.StRRNc  
 extracting: fastText-0.9.2/website/static/docs/en/html/search/.variables_a.html.1MGQ27  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_10.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_10.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_11.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_11.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_12.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_12.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_13.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_13.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_14.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_14.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_15.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_15.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_16.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_16.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_17.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_17.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_6.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_6.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_7.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_7.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_8.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_8.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_9.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_9.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_a.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_a.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_b.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_b.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_c.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_c.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_d.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_d.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_e.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_e.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_f.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/all_f.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_6.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_6.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_7.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_7.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_8.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/classes_8.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/search/close.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/defines_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enums_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/enumvalues_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_6.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_6.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_7.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_7.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_8.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/files_8.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_10.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_10.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_11.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_11.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_12.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_12.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_13.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_13.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_14.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_14.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_15.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_15.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_16.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_16.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_17.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_17.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_6.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_6.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_7.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_7.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_8.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_8.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_9.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_9.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_a.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_a.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_b.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_b.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_c.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_c.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_d.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_d.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_e.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_e.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_f.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/functions_f.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/search/mag_sel.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/namespaces_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/namespaces_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/nomatches.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/search.css  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/search.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/search/search_l.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/search_m.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/search/search_r.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/searchdata.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/typedefs_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/typedefs_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/typedefs_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/typedefs_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_0.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_0.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_1.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_1.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_10.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_10.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_11.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_11.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_12.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_12.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_13.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_13.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_2.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_2.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_3.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_3.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_4.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_4.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_5.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_5.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_6.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_6.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_7.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_7.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_8.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_8.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_9.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_9.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_a.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_a.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_b.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_b.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_c.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_c.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_d.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_d.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_e.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_e.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_f.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/search/variables_f.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/splitbar.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1Node-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1Node.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1Node.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1entry-members.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1entry.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/structfasttext_1_1entry.js  
 extracting: fastText-0.9.2/website/static/docs/en/html/sync_off.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/sync_on.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/tab_a.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/tab_b.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/tab_h.png  
 extracting: fastText-0.9.2/website/static/docs/en/html/tab_s.png  
  inflating: fastText-0.9.2/website/static/docs/en/html/tabs.css  
  inflating: fastText-0.9.2/website/static/docs/en/html/utils_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/utils_8cc.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/utils_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/utils_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/utils_8h_source.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/vector_8cc.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/vector_8cc.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/vector_8h.html  
  inflating: fastText-0.9.2/website/static/docs/en/html/vector_8h.js  
  inflating: fastText-0.9.2/website/static/docs/en/html/vector_8h_source.html  
  inflating: fastText-0.9.2/website/static/fasttext.css  
   creating: fastText-0.9.2/website/static/img/
   creating: fastText-0.9.2/website/static/img/authors/
  inflating: fastText-0.9.2/website/static/img/authors/armand_joulin.jpg  
  inflating: fastText-0.9.2/website/static/img/authors/christian_puhrsch.png  
  inflating: fastText-0.9.2/website/static/img/authors/edouard_grave.jpeg  
  inflating: fastText-0.9.2/website/static/img/authors/piotr_bojanowski.jpg  
  inflating: fastText-0.9.2/website/static/img/authors/tomas_mikolov.jpg  
   creating: fastText-0.9.2/website/static/img/blog/
  inflating: fastText-0.9.2/website/static/img/blog/2016-08-18-blog-post-img1.png  
  inflating: fastText-0.9.2/website/static/img/blog/2016-08-18-blog-post-img2.png  
  inflating: fastText-0.9.2/website/static/img/blog/2017-05-02-blog-post-img1.jpg  
  inflating: fastText-0.9.2/website/static/img/blog/2017-05-02-blog-post-img2.jpg  
  inflating: fastText-0.9.2/website/static/img/blog/2017-10-02-blog-post-img1.png  
  inflating: fastText-0.9.2/website/static/img/cbo_vs_skipgram.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-api.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-bg-web.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-color-square.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-color-web.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-faq.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-tutorial.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-icon-white-web.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-logo-color-web.png  
  inflating: fastText-0.9.2/website/static/img/fasttext-logo-white-web.png  
  inflating: fastText-0.9.2/website/static/img/logo-color.png  
  inflating: fastText-0.9.2/website/static/img/model-black.png  
  inflating: fastText-0.9.2/website/static/img/model-blue.png  
  inflating: fastText-0.9.2/website/static/img/model-red.png  
  inflating: fastText-0.9.2/website/static/img/ogimage.png  
  inflating: fastText-0.9.2/website/static/img/oss_logo.png  
  inflating: fastText-0.9.2/website/static/tabber.js  
  inflating: fastText-0.9.2/wikifil.pl  
  inflating: fastText-0.9.2/word-vector-example.sh  "

Move to the fastText directory and build it:

$ cd fastText-0.9.2
# for command line tool :
$ make
# for python bindings :
$ pip install .


### Getting and preparing the data
- We download examples of questions from the cooking section of Stackexchange, and their associated tags:
$ wget https://dl.fbaipublicfiles.com/fasttext/data/cooking.stackexchange.tar.gz && tar xvzf cooking.stackexchange.tar.gz

Output: 
"--2024-09-27 13:18:00--  https://dl.fbaipublicfiles.com/fasttext/data/cooking.stackexchange.tar.gz
Resolving dl.fbaipublicfiles.com (dl.fbaipublicfiles.com)... 108.158.20.43, 108.158.20.111, 108.158.20.120, ...
Connecting to dl.fbaipublicfiles.com (dl.fbaipublicfiles.com)|108.158.20.43|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 457609 (447K) [application/x-tar]
Saving to: ‘cooking.stackexchange.tar.gz’

cooking.stackexchange 100%[========================>] 446.88K   654KB/s    in 0.7s    

2024-09-27 13:18:02 (654 KB/s) - ‘cooking.stackexchange.tar.gz’ saved [457609/457609]

cooking.stackexchange.id
cooking.stackexchange.txt
readme.txt"


$ head cooking.stackexchange.txt
Output: 
__label__sauce __label__cheese How much does potato starch affect a cheese sauce recipe?
__label__food-safety __label__acidity Dangerous pathogens capable of growing in acidic environments
__label__cast-iron __label__stove How do I cover up the white spots on my cast iron stove?
__label__restaurant Michelin Three Star Restaurant; but if the chef is not there
__label__knife-skills __label__dicing Without knife skills, how can I quickly and accurately dice vegetables?
__label__storage-method __label__equipment __label__bread What's the purpose of a bread box?
__label__baking __label__food-safety __label__substitutions __label__peanuts how to seperate peanut oil from roasted peanuts at home?
__label__chocolate American equivalent for British chocolate terms
__label__baking __label__oven __label__convection Fan bake vs bake
__label__sauce __label__storage-lifetime __label__acidity __label__mayonnaise Regulation and balancing of readymade packed mayonnaise and other sauces

- Use this bash to check number of examples in the full dataset: 
$ wc cooking.stackexchange.txt
Output: 15404  169582 1401900 cooking.stackexchange.txt
(This is similar to our tutorial)

- Split the dataset into training and validation set: 
$ head -n 12404 cooking.stackexchange.txt > cooking.train
$ tail -n 3000 cooking.stackexchange.txt > cooking.valid

### First Classifier: 
Run out first classifier by this command: 
$ ./fasttext supervised -input cooking.train -output model_cooking
Output: 
Read 0M words
Number of words:  14543
Number of labels: 735
Progress: 100.0% words/sec/thread:   17458 lr:  0.000000 avg.loss: 10.138867 ETA:   0h 0m 0s

Total number of words is 14543 which is smaller than the tutorial which has 14598 words. 

Test on validation data:
$ ./fasttext test model_cooking.bin cooking.valid
Output: 
N       3000
P@1     0.139
R@1     0.0603

My P@1 and R@1  are higher than the tutorial's result ( 0.139 > 0.124 and  0.0603 > 0.0541)

### Improve Model: 

#### preprocessing the data
A crude normalization can be obtained using command line tools such as sed and tr:
>> cat cooking.stackexchange.txt | sed -e "s/\([.\!?,'/()]\)/ \1 /g" | tr "[:upper:]" "[:lower:]" > cooking.preprocessed.txt
>> head -n 12404 cooking.preprocessed.txt > cooking.train
>> tail -n 3000 cooking.preprocessed.txt > cooking.valid

Train a new model: 
>> ./fasttext supervised -input cooking.train -output model_cooking
Output: 
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   19030 lr:  0.000000 avg.loss: 10.080169 ETA:   0h 0m 0s
>> ./fasttext test model_cooking.bin cooking.valid
N       3000
P@1     0.166
R@1     0.0718

Although the precise number is different but we also observe a similar trend compare to the tutorial thanks to the pre-processing. The vocabulary is smaller (from 14k words to 8k). The precision is also starting to go up by 3%!


#### word n-grams
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 1.0 -epoch 25 -wordNgrams 2
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   19590 lr:  0.000000 avg.loss:  3.228167 ETA:   0h 0m 0s

>> ./fasttext test model_cooking.bin cooking.valid
N       3000
P@1     0.609
R@1     0.263

The result is even better. 

#### Hierarchical softmax
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 1.0 -epoch 25 -wordNgrams 2 -bucket 200000 -dim 50 -loss hs
Output: 
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:  471924 lr:  0.000000 avg.loss:  2.071534 ETA:   0h 0m 0s

The processing time is faster. 

#### Multi-label classification
>> ./fasttext supervised -input cooking.train -output model_cooking -lr 0.5 -epoch 25 -wordNgrams 2 -bucket 200000 -dim 50 -loss one-vs-all
Read 0M words
Number of words:  8952
Number of labels: 735
Progress: 100.0% words/sec/thread:   29994 lr:  0.000000 avg.loss:  4.091903 ETA:   0h 0m 0s

>> ./fasttext test model_cooking.bin cooking.valid -1 0.5 
N       3000
P@-1    0.681
R@-1    0.255




## Try on new dataset 
<!-- Step 1: Set up environment by using pip: 
>> pip install requests beautifulsoup4
Step 2: Run the scraping code: 
python scrape_data.py 

https://www.kaggle.com/datasets/adisongoh/it-service-ticket-classification-dataset -->

1. Download dataset using: 
### Install Kaggle API
pip install kaggle

### Download the dataset
kaggle datasets download -d adisongoh/it-service-ticket-classification-dataset

### Unzip the downloaded file
unzip it-service-ticket-classification-dataset.zip

### Convert a CSV file to a TXT file while adding the prefix __label__ to the values in the "Topic_group" column: 
awk -F, 'NR==1 {print; next} {print "__label__" $2, $0}' all_tickets_processed_improved_v3.csv > all_tickets.txt 

<!-- mv all_tickets_processed_improved_v3.csv all_tickets.txt  -->
2. Split the data into training and testing: 
### Check how many entries in the dataset: 
$ wc all_tickets.txt
   47838  2100361 14568920 all_tickets.txt
- Split the dataset into training and validation set: (70% and 30%)
$ head -n 33486 all_tickets.txt > tickets.train
$ tail -n 14352 all_tickets.txt > tickets.valid

### First Classifier: 
Run out first classifier by this command: 
$ fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket
Output: 
Read 1M words
Number of words:  13688
Number of labels: 9
Progress:  16.3% words/sec/thread:  879402 lr:  0.083690 avg.loss:  0.923751 ETProgress:  32.9% words/sec/thread:  887807 lr:  0.067093 avg.loss:  0.596394 ETProgress:  49.4% words/sec/thread:  905318 lr:  0.050602 avg.loss:  0.448394 ETProgress:  65.4% words/sec/thread:  907600 lr:  0.034555 avg.loss:  0.369345 ETProgress:  78.4% words/sec/thread:  874508 lr:  0.021640 avg.loss:  0.330661 ETProgress:  95.3% words/sec/thread:  885206 lr:  0.004714 avg.loss:  0.292644 ETProgress: 100.0% words/sec/thread:  799274 lr: -0.000024 avg.loss:  0.282090 ETProgress: 100.0% words/sec/thread:  799057 lr:  0.000000 avg.loss:  0.282090 ETA:   0h 0m 0s

Test on validation data:
$ fastText-0.9.2/fasttext test model_ticket.bin tickets.valid

N       14352
P@1     0.895
R@1     0.895

### Improve Model: 

#### preprocessing the data
A crude normalization can be obtained using command line tools such as sed and tr:
>> cat all_tickets.txt | sed -e "s/\([.\!?,'/()]\)/ \1 /g" | tr "[:upper:]" "[:lower:]" > tickets.preprocessed.txt
>> head -n 33486 tickets.preprocessed.txt > tickets.train
>> tail -n 14352 tickets.preprocessed.txt > tickets.valid

Train a new model: 
>> fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket
Output: 
Read 1M words
Number of words:  11093
Number of labels: 9
Progress: 100.0% words/sec/thread:  836397 lr:  0.000000 avg.loss:  0.227094 ETA:   0h 0m 0s

The total number of words decrease from 13k to 11k. 

>> fastText-0.9.2/fasttext test model_ticket.bin tickets.valid
N       14352
P@1     0.927
R@1     0.927

Although the precise number is different but we also observe a similar trend compare to the tutorial thanks to the pre-processing. The vocabulary is smaller (from 13k words to 11k). The precision is also starting to go up by 1%!


#### word n-grams
>> fastText-0.9.2/fasttext supervised -input tickets.train -output model_ticket -lr 1.0 -epoch 25 -wordNgrams 2
Read 1M words
Number of words:  11093
Number of labels: 9
Progress: 100.0% words/sec/thread:  499870 lr:  0.000000 avg.loss:  0.003626 ETA:   0h 0m 0s

>> fastText-0.9.2/fasttext test model_ticket.bin tickets.valid
N       14352
P@1     0.976
R@1     0.976

  The result is even better.The precision now is 97.6%. 

