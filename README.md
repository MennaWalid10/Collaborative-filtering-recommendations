Collaborative Filtering Recommendation System

Overview

This project implements a Collaborative Filtering-based Recommendation System using the MovieLens 100K dataset. It includes User-Based Collaborative Filtering built manually without relying on external libraries like surprise. The goal is to predict user ratings for items and provide personalized movie recommendations.

Dataset

The dataset used is the MovieLens 100K, which contains:
	•	100,000 ratings
	•	943 users
	•	1,682 movies

Project Structure

collaborative-filtering-recommender/
├── data/
│   ├── u.data
│   ├── u.item
│   └── u.user
├── notebooks/
│   ├── 01_data_preprocessing.ipynb
│   ├── 02_user_based_cf.ipynb
│   ├── 03_item_based_cf.ipynb
│   └── 04_evaluation_and_visualization.ipynb
├── src/
│   ├── _init_.py
│   ├── data_loader.py
│   ├── recommender.py
│   └── evaluation.py
├── results/
│   ├── top_n_recommendations.csv
│   └── evaluation_metrics.json
├── README.md
└── requirements.txt

Features
	•	Load and preprocess MovieLens data
	•	Build User-Based Collaborative Filtering manually
	•	Predict ratings and recommend top-N movies
	•	Evaluate model performance with RMSE and precision@k
	•	Export recommendations and metrics

Usage
	1.	Clone or download the project
	2.	Install dependencies:

pip install -r requirements.txt


	3.	Run the notebooks inside notebooks/ step-by-step

Requirements
	•	Python 3.10+
	•	pandas
	•	numpy
	•	scikit-learn
	•	matplotlib
	•	seaborn

Credits
	•	MovieLens dataset by GroupLens
	•	Built manually without surprise library to ensure compatibility with Python 3.13
