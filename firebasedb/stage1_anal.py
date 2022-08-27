import numpy as np
import pandas as pd
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer

score_list = []
score1=0

def sentiment_scores(sentence):

    sid_obj = SentimentIntensityAnalyzer()
    sentiment_dict = sid_obj.polarity_scores(sentence)
    global score1
    if sentiment_dict['compound'] >= 0.05 :
        score1+=0.5
    elif sentiment_dict['compound'] <= - 0.05 :
        score1+=0
    else :
        score1+=0.25

def myscore1(data):
    global score1
    for key, value in data.items():
        if( key=="Q1[8]" or 
        key=="Q1[7]" or key=="Q1[8]" or key=="Q1[7]" or key=="Q1[6]" or 
        key=="Q1[5]" or key=="Q1[4]" or key=="Q1[3]" or key=="Q1[2]" or key=="Q1[1]" or
        key=="Q1[0]" ):
            if(value==1):
                score1+=0.5
            if(value==2):
                score1+=0
            if(value==3):
                score1+=0.25
        if( key=="Q1[9].1" or key=="Q1[8].1" or
        key=="Q1[7].1" or key=="Q1[8].1" or key=="Q1[7].1" or key=="Q1[6].1" or 
        key=="Q1[5].1" or key=="Q1[4].1" or key=="Q1[3].1" or key=="Q1[2].1" or key=="Q1[1].1" or
        key=="Q1[0].1" ):
                sentiment_scores(key)
        print(score1)
    

    

