from sklearn import tree

#[height, weight, shoe size]

X = [[100,1], [177,3], [160,4], [154,2], [166,3], [190,2], [175,1], [177,1], [159,2], [107,3], [181,1]]

Y = ['Y' , 'N', 'Y','N','Y', 'N', 'Y', 'Y','N', 'Y', 'N']

#store in classifier(Decision tree classifier)

clf = tree.DecisionTreeClassifier()

clf.fit(X,Y)

prediction = clf.predict([[190,2]])


print(prediction)