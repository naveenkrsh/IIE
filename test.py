from ln2sql.ln2sql import Ln2sql
#  database_path='database_store/school.sql',
  #database_path='../ism.sql',
sql = ln2sql = Ln2sql(
      
      database_path='database_store/ism.sql',
        language_path='lang_store/english.csv',
        json_output_path=None,
        thesaurus_path=None,
        stopwords_path=None,
    ).get_query("what is Symptom and CategoryName for all Incident whose ID is 1")

print("gen:")
print(sql)