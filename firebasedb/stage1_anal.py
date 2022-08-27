def myscore1(data):
    score=0
    for key, value in student_score.items():
        if(value == "Yes" or value == "No" or value == "Partially"):
           score+=1
    review_pos = []
    review_neg = []

