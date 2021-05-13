cimport cpear_cpy

def pear_cpy(cmd : str) -> str:

    return cpear_cpy.pear_cpy(cmd.encode(), len(cmd)).decode()
