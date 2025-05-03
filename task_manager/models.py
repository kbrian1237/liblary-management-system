from sqlalchemy import Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import declarative_base, relationship

Base = declarative_base()

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    name = Column(String(100), nullable=False)

class Task(Base):
    __tablename__ = 'tasks'
    id = Column(Integer, primary_key=True)
    title = Column(String(100), nullable=False)
    due_date = Column(Date)
    user_id = Column(Integer, ForeignKey('users.id'))
