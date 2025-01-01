from decouple import config


class Config:
    openai_key = config('OPENAI_KEY')
    openai_model = config('OPENAI_MODEL', default='gpt-4o-mini')

    groq_key = config('GROQ_KEY')
    groq_model = config('GROQ_MODEL', default='')

config = Config()