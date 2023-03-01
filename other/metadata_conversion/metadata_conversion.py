"""
original author: KilianZimmerer <kikleer@altlautern.de>
source taken from: https://github.com/open-fred/db/tree/master/utility/metadata_conversion

Explanations:
1. The conversion_tools.py file contains all necessary functions to convert metadata from metadata v1.2 to v1.3.
2. For this automation the input file must contain one 'COMMENT ON TABLE' sql-query and NOT more. A prototype input file
is the 'file_in.sql' (metadata version 1.2).
3. The automation can also be adapted to other metadata conversions by changing the json_conversion() function in the
conversion_tools.py file.
4.
"""  # noqa: long lines

import conversion_tools as ct

old_sql = "input_string_v1.3.sql"  # existing file to be converted
new_sql = "new_sql.sql"  # new metadata file to be created
user = "testuser"  # user to be included in 'contributors'
user_email = "testemail"  # user email to be included in 'contributors


# The following function is made up by the 3 subfunctions
# json_extraction(), json_conversion() and metadata_creation()
ct.metadata_conversion(old_sql, new_sql, user, user_email, only_endfiles=True)
