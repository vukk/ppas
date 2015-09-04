from setuptools import setup

setup(
    name = 'ppas',
    packages = ['ppas'],
    version = '0.1.0',
    description = 'PostProcess Answer Sets',
    author='Unto Kuuranne',
    author_email='unto.kuuranne@aalto.fi',
    keywords=['asp', 'answer set programming', 'postprocess', 'clingo'],
    include_package_data=True,
    install_requires=[
        'docopt',
    ],
    classifiers=[
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
        'Intended Audience :: Science/Research',
        'Development Status :: 3 - Alpha',
        'License :: OSI Approved :: MIT License',
    ],
    url='https://github.com/vukk/ppas',
    download_url='https://github.com/vukk/ppas/tarball/0.1.0',
)
