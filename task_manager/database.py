from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

DATABASE_URL = "mysql+mysqlconnector://kbrian1237:k1445@localhost/task_db"

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine)
