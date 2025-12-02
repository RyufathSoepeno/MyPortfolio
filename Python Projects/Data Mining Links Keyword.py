import requests
from bs4 import BeautifulSoup
from urllib.parse import urlparse, urljoin

def search_keyword(keyword, max_results=10):
    # Input URL here
    query = keyword.replace(" ", "+")
    url = f"https://duckduckgo.com/html/?q={query}"

    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
    }

    response = requests.get(url, headers=headers)
    soup = BeautifulSoup(response.text, "html.parser")

    results = []
    
    # Extract result links
    for a in soup.select("a.result__a"):
        link = a.get("href")
        if link and link.startswith("http"):
            clean_link = urljoin(url, link)  # Normalize link
            results.append(clean_link)

        if len(results) >= max_results:
            break

    return results


# 🔹 Example usage
if __name__ == "__main__":
    keyword = input("Enter keyword to search: ")
    links = search_keyword(keyword)
    
    print("\n🔍 Found Links:")
    for i, link in enumerate(links, 1):
        print(f"{i}. {link}")
