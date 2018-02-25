# Finding-a-Mode-in-a-List (Question)

A mode of a list of integers is an element that occurs at least as often as each of the other elements. Write an algorithm (in Scheme) that finds a mode in a list of nondecreasing integers. Please develop your code in two steps as stated below:  

Step 1: Please first implement make-element-freq-list procedure whose example prototype is given below:  
(make-element-freq-list '(1 1 2 2 3 4 4 5 5 5))  
((1 . 2) (2 . 2) (3 . 1) (4 . 2) (5 . 3))  


Step 2: Take the produced element-freq list from Step 1 and output the mode:   
(mode (make-element-freq-list '(1 1 2 2 3 4 4 5 5 5))) 
