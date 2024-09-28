import wikipedia

actor_name = "Leonardo DiCaprio"
try:
    page = wikipedia.page(actor_name).content
    words = page.split()
    
    if len(words) >= 500:
        page = ' '.join(words[:600]) # Extract the first 600 words
        with open('wikipedia.txt', 'w', encoding='utf-8') as file:
            file.write(page)
    else:
        print(f"The Wikipedia page for {actor_name} has less than 500 words. Please choose a different entry.")
except Exception:
    print(f"An unexpected error occurred")