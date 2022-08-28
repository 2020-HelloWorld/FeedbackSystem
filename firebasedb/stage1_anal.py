import numpy as np
import pandas as pd
from vaderSentiment.vaderSentiment import SentimentIntensityAnalyzer
from matplotlib import pyplot as plt

score_list = []
score1=0

details = {
    'Name' : [],
    'Stage 1 Measure' : [],
}

def sentiment_scores1(sentence):

    sid_obj = SentimentIntensityAnalyzer()
    sentiment_dict = sid_obj.polarity_scores(sentence)
    global score1
    # score1=0
    if sentiment_dict['compound'] >= 0.05 :
        score1+=0.5
    elif sentiment_dict['compound'] <= - 0.05 :
        score1+=0
    else :
        score1+=0.25
# def sentiment_scores2(sentence):

#     sid_obj = SentimentIntensityAnalyzer()
#     sentiment_dict = sid_obj.polarity_scores(sentence)
#     global score2
#     if sentiment_dict['compound'] >= 0.05 :
#         score2+=1
#     elif sentiment_dict['compound'] <= - 0.05 :
#         score2+=0
#     else :
#         score2+=0.5

# def sentiment_scores3(sentence):

#     sid_obj = SentimentIntensityAnalyzer()
#     sentiment_dict = sid_obj.polarity_scores(sentence)
#     global score3
#     if sentiment_dict['compound'] >= 0.05 :
#         score3+=1
#     elif sentiment_dict['compound'] <= - 0.05 :
#         score3+=0
#     else :
#         score3+=0.5

def myscore1(data):
    global score1
    global score2
    global score3
    score1 = 0
    global details
    for key, value in data.items():
        if(key=="name"):
            details["Name"].append(value)
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
        if( key== "Q1[10]" or key=="Q1[9]" or key=="Q1[8].1" or
        key=="Q1[7].1" or key=="Q1[8].1" or key=="Q1[7].1" or key=="Q1[6].1" or 
        key=="Q1[5].1" or key=="Q1[4].1" or key=="Q1[3].1" or key=="Q1[2].1" or key=="Q1[1].1" or
        key=="Q1[0].1" ):
                sentiment_scores1(key)
        # details["Stage 1 Measure"].append(score1)
    #for key,value in data.items():
        #if(key=="Q2[6]" ):#or key=="Q3[7]" or 
        # key=="Q3[5]" ):
                #sentiment_scores2(key)
        # details["Stage 2 Measure"].append(score2)
    #for key,value in data.items():
        #if(key=="Q3[6]" ):#or key=="Q3[7]" or 
        # key=="Q3[5]" ):
                #sentiment_scores3(key)
        # details["Stage 3 Measure"].append(score3)
    details["Stage 1 Measure"].append((score1)/11)
    details["Stage 1 Measure"].sort(reverse=True)
    print(details["Stage 1 Measure"].iloc(0))
    #details["Stage 2 Measure"].append(score2)
    #details["Stage 3 Measure"].append(score3)
    return details


    
    

    

