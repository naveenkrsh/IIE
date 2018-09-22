import nltk
from nltk.corpus import wordnet

class WordNet:
    def get_synonyms_of_a_word(self, word):
        synonyms = []
        for syn in wordnet.synsets(word):
            for l in syn.lemmas():
                synonyms.append(l.name())
        return synonyms