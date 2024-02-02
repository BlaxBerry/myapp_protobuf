from setuptools import setup, find_packages

setup(
    name="myapp_protobuf",
    version="1.0.0",
    description="BlaxBerry's Apps's Protocol Buffers",
    author="BlacBerry",
    license="UNLICENSED",
    url="https://github.com/BlaxBerry/myapp_protobuf",

    package_dir={"","py"},
    packages=find_packages(where="py"),
)