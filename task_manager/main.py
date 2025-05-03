from fastapi import FastAPI, Depends
from sqlalchemy.orm import Session
from models import User, Task, Base
from database import engine, SessionLocal

app = FastAPI()

Base.metadata.create_all(bind=engine)

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

@app.post("/users/")
def create_user(name: str, db: Session = Depends(get_db)):
    user = User(name=name)
    db.add(user)
    db.commit()
    return user

@app.post("/tasks/")
def create_task(title: str, user_id: int, db: Session = Depends(get_db)):
    task = Task(title=title, user_id=user_id)
    db.add(task)
    db.commit()
    return task

@app.get("/tasks/")
def read_tasks(db: Session = Depends(get_db)):
    return db.query(Task).all()
