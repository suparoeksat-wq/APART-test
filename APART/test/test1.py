listA = [1,2,3,5,6,8,9]
listB = [3,2,1,5,6,0] 

duplicates = (set(listA) & set(listB))

print("Duplicate items:", duplicates)