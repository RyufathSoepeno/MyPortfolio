import requests
from bs4 import BeautifulSoup
import nltk
from nltk.tokenize import word_tokenize

# Download NLTK tokenizer if running first time
nltk.download('punkt')

def extract_text(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.text, "html.parser")

    # Remove script & style elements
    for tag in soup(["script", "style"]):
        tag.extract()

    return soup.get_text(separator=" ")

def keyword_mine(url, keywords):
    text = extract_text(url)

    # Tokenize and lower case
    tokens = [word.lower() for word in word_tokenize(text)]

    # Count keyword frequency
    results = {kw.lower(): tokens.count(kw.lower()) for kw in keywords}

    print(f"\n🔍 Results for: {url}")
    for keyword, count in results.items():
        print(f" - '{keyword}' found {count} time(s)")
    print("-" * 40)  # separator

# -------- USER INPUT SECTION -------- #
urls = [
    "https://en.wikipedia.org/wiki/Natural_language_processing",
    # Add more URLs if needed
]

keywords = ["NLP", "Machine", "Language"]

for url in urls:
    keyword_mine(url, keywords)




