class Node:
   def __init__(self, data):
      self.left = None
      self.right = None
      self.data = data

def inorder(root): # print binary tree in order
    if root != None:
        inorder(root.left)# start from from the most left/smallest
        print(root.data, end=" ")
        inorder(root.right) # goes toward the most right/largest
        
def binarySearch(root, key): # search function
    if key < root.data: #if it is not in left node
         if root.left is None:
            return str(key)+" Not Found"
         return binarySearch(root.left, key)
    elif key > root.data: #if it is not in right node
        if root.right is None:
           return str(key)+" Not Found"
        return binarySearch(root.right, key)
    else:
            print(str(root.data) + ' is found')

def insert (node, newData):
    if node is None: # If the tree is empty, return a new node
        return Node(newData)
    elif newData < node.data: # Otherwise, recur down the tree
      node.left = insert(node.left, newData)
    else:
      node.right = insert(node.right, newData)
    return node # return the (unchanged) node pointer

def delete (root, delData):
    if root is None:# If the tree is empty, return the root as it is
        return root
    #Recursive calls to delete ancestor node
    if root.data > delData: #find to the left node
        root.left = delete(root.left, delData)
        return root
    elif root.data < delData:#find to the right node
        root.right = delete(root.right, delData)
        return root
    #if one children is empty
    if root.left is None: 
        temp = root.right
        del root
        return temp
    elif root.right is None: 
        temp = root.left
        del root
        return temp
    else:# If both children exist
        succParent = root
        succ = root.right #finding successor
        while succ.left != None:
            succParent = succ
            succ = succ.left
        if succParent != root:# delete successor
            succParent.left = succ.right
        else:
            succParent.right = succ.right #copy successor data
        root.data = succ.key
        del succ #delete successor
        return root
    
if __name__ == '__main__': #main function
    root = None
    operation=1
    while operation != 0:# code run and can use function until shut down with 0
        print("Choose\n")
        print("1: insert\n")
        print("2: delete\n")
        print("3: search\n")
        print("4: display\n")
        print("0: End operation\n")
        operation=input("choose an option: ")#choose certain function
        operation = int(operation)
        if operation == 1:
            insertdata = input("Input number to be inserted: ")
            root = insert(root,int(insertdata))
        elif operation == 2:
            insertdata = input("Input number to be deleted: ")
            root = delete(root,int(insertdata))
        elif operation == 3:
            insertdata = input("Input number to be search: ")
            result=binarySearch(root,int(insertdata))
            if result != None:
                print(result)
        elif operation == 4:
            inorder(root)
            print("\nPrinting successful")
        elif operation == 0:
            break
        else:
            print("Wrong input")
