# https://stackoverflow.com/questions/26333823/clang-doesnt-see-basic-headers
echo "Running clang -v to see what version of g++ its selecting"
clang -v

echo "Installing g++-12"
sudo apt install g++-12

