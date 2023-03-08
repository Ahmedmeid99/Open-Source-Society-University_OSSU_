import time

def calc_time(call_arg,callback):
    start = time.time()
    callback(call_arg)
    end = time.time()
    print('in time:',end-start) 
######################
# Sorting & Searching
######################
# Sorting 
# [1] Bubble Sort O(n**2)
def bubble_sort(arr):
    swap = False
    arr=arr
    while not swap:
        swap = True
        for i in range(1,len(arr)):
            if arr[i-1] > arr[i]:
                swap = False
                (arr[i-1],arr[i])=(arr[i],arr[i-1])
    print(arr)
        
l_1=[1,3,4,5,2,6]
calc_time(l_1,bubble_sort)
"""
[1, 2, 3, 4, 5, 6]
in time: 0.14086580276489258
"""
####################################

# [2] Selection Sort O(n**2)
def selection_sort(arr):
    suffixst = 0
    while suffixst != len(arr):
        for i in range(suffixst,len(arr)):
            if arr[i]<arr[suffixst]:
                (arr[suffixst],arr[i])=(arr[i],arr[suffixst])
        suffixst += 1
    print(arr)

l_2 = [1,3,4,5,2,6]
calc_time(l_2,selection_sort)
"""
[1, 2, 3, 4, 5, 6] 
in time: 0.48799943923950195
""" 
####################################

# [3] Marge Sort O(n)
def marge(left,right):
    result = []
    i,j = 0,0
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    # to insert last item in list (left or right)
    while i < len(left):
        result.append(left[i])
        i += 1
    while j < len(right):
        result.append(right[j])
        j += 1
    print(result)
    return result
marge([1,5],[4,7])
# ------------------------------
def marge_sort(arr):
    if len(arr) < 2:
        return arr[:]
    else:
        meddle = len(arr) // 2
        left = marge_sort(arr[:meddle])
        right = marge_sort(arr[meddle:])
        return marge(left,right)
l_3 = [1,3,4,5,2,6]
calc_time(l_3,marge_sort)
"""
[3, 4]
[1, 3, 4]
[2, 6]
[2, 5, 6]
[1, 2, 3, 4, 5, 6]
in time: 1.3377056121826172 / 6 
= 0.21250073115030924
"""
####################################

# Searching 
# [1] liner search O(n)

def liner_search_in_ul(el,arr):
    found = False
    times = 0
    for i in arr:
        if i == el:
            times += 1
            found = True
        # print(times)
    return found

def liner_search_in_ol(el,arr):
    found = False
    times = 0
    for i in arr:
        times += 1
        if i == el:
             found = True
        elif i > el:
            found = False
            # print(times)
    return found
print(liner_search_in_ul(3,[1,4,5,6])) # False
print(liner_search_in_ul(3,[1,4,3,5,6])) # True
print(liner_search_in_ol(3,[1,2,5,4])) # False
print(liner_search_in_ol(3,[1,2,3,4,5])) # True

####################################
# [2] binary search O(log n)
def disect_search(arr,el):
    def disect_search_helper(arr,el,low,high):
        if high == low:
            return arr[low] == el
        mid = (low + high) // 2
        if arr[mid]== el:
            return True
        elif arr[mid] > el:
            if low == mid : # nothing left to search
                return False
            else:
                return disect_search_helper(arr,el,low,mid-1)
        else:
            return disect_search_helper(arr,el,mid + 1,high)
    #############
    if len(arr) == 0:
        return False
    else:
        return disect_search_helper(arr,el,0,len(arr)-1)

l_4 = [1,2,3,4,5,6]
print(disect_search(l_4,4)) # True
print(disect_search(l_4,7)) # False