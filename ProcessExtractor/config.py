from decouple import config


class Settings:
    openai_key = config('OPENAI_KEY')
    openai_model = config('OPENAI_MODEL', default='gpt-4o-mini')

    groq_key = config('GROQ_KEY')
    groq_model = config('GROQ_MODEL', default='llama3-groq-8b-8192-tool-use-preview')

settings = Settings()
