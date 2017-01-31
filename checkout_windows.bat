if not exist "tensorflow" (
	git clone -b "r1.0+janvrany-features" "https://github.com/janvrany/tensorflow.git"
) else (
	pushd tensorflow
	git pull origin
	popd
)