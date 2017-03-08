This repository contains code that produces an error with linking shared
libraries with buck.  The associated issue is located at
https://github.com/facebook/buck/issues/1224

Run `bash build.sh` to download and build `tbb` from the latest release.  Then
run `buck run :test` to see the error.

You can also change the `deps` section in the `cxx_binary` target to include
`tbb_lib_group` to see the error associated with `tbb` being linked as a
`prebuilt_cxx_library_group`
