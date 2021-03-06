import subprocess
import sys


def test_version():
    """Check if all versions are able to run pytest and confirm version."""
    versions = ((2, 7, 17), (3, 5, 9), (3, 6, 9), (3, 7, 7), (3, 8, 2))
    assert sys.version_info[:3] in versions


def test_other_versions_subprocess():
    """
    Use subprocess to see all interpreter versions.
    """

    def _check_output(interpreter):
        process = subprocess.Popen(
            [interpreter, "--version"], stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        stdout, stderr = process.communicate()
        version = stdout.decode() + stderr.decode()
        return version.rstrip()

    assert _check_output("python3.5") == "Python 3.5.9"
    assert _check_output("python3.6") == "Python 3.6.9"
    assert _check_output("python3.7") == "Python 3.7.7"
    assert _check_output("python3.8") == "Python 3.8.2"
    assert _check_output("python2.7") == "Python 2.7.17"

    assert _check_output("python") == "Python {0}.{1}.{2}".format(*sys.version_info[:3])
    assert _check_output("python2") == "Python 2.7.17"
    assert (
        _check_output("python3") == "Python {0}.{1}.{2}".format(*sys.version_info[:3])
        if sys.version_info[0] == 3
        else "Python 3.8.2"
    )


def test_imports():
    if sys.version_info[:2] >= (3, 6):
        import secrets

        assert secrets
