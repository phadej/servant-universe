project-files: cabal.8.0.2.project cabal.8.2.2.project cabal.8.4.4.project cabal.8.6.3.project
build: build-8.0.2 build-8.2.2 build-8.4.4 build-8.6.3
test: test-8.0.2 test-8.2.2 test-8.4.4 test-8.6.3
deps: deps.8.0.2.png deps.8.2.2.png deps.8.4.4.png deps.8.6.3.png
build-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all
build-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all
build-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all
build-8.6.3: cabal.8.6.3.project
	cabal new-build --builddir=dist-newstyle-8.6.3 --project-file cabal.8.6.3.project -w ghc-8.6.3 --disable-tests --disable-benchmarks all
cabal.8.0.2.project: cabal.darkmatter
	darkmatter
cabal.8.2.2.project: cabal.darkmatter
	darkmatter
cabal.8.4.4.project: cabal.darkmatter
	darkmatter
cabal.8.6.3.project: cabal.darkmatter
	darkmatter
deps.8.0.2.png: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=dist-newstyle-8.0.2 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.8.0.2.png
deps.8.2.2.png: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=dist-newstyle-8.2.2 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.8.2.2.png
deps.8.4.4.png: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=dist-newstyle-8.4.4 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.8.4.4.png
deps.8.6.3.png: cabal.8.6.3.project
	cabal new-build --builddir=dist-newstyle-8.6.3 --project-file cabal.8.6.3.project -w ghc-8.6.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=dist-newstyle-8.6.3 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.8.6.3.png
test-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --disable-benchmarks all
	cabal new-test --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --disable-benchmarks all
test-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --disable-benchmarks all
	cabal new-test --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --disable-benchmarks all
test-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --disable-benchmarks all
	cabal new-test --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --disable-benchmarks all
test-8.6.3: cabal.8.6.3.project
	cabal new-build --builddir=dist-newstyle-8.6.3 --project-file cabal.8.6.3.project -w ghc-8.6.3 --enable-tests --disable-benchmarks all
	cabal new-test --builddir=dist-newstyle-8.6.3 --project-file cabal.8.6.3.project -w ghc-8.6.3 --enable-tests --disable-benchmarks all
