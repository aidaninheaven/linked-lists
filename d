class Node:
    def __init__(self, data):
        self.data = data  # Stores the value of the node
        self.next = None  # Pointer to the next node, initially None

class LinkedList:
    def __init__(self):
        self.head = None
            
    def insertAtBegin(self, data):
        newNode = Node(data)  # Create a new node with the given data
        newNode.next = self.head  # Point the new node to the current head
        self.head = newNode  # Update head to the new node

    def insertAtIndex(self, data, index):
        if index == 0:
            self.insertAtBegin(data)  # If index is 0, insert at the beginning
            return
        
        newNode = Node(data)  # Create a new node
        currentNode = self.head  # Start from the head
        position = 0
        
        # Traverse the list until reaching the position before the target index
        while currentNode is not None and position < index - 1:
            position += 1
            currentNode = currentNode.next
        
        if currentNode is None:
            print("Index not present.")  # If index is out of range
            return
        
        newNode.next = currentNode.next  # Point new node to the next node
        currentNode.next = newNode  # Link previous node to the new node

    def insertAtEnd(self, data):
        newNode = Node(data)  # Create a new node
        if self.head is None:  # If list is empty, set head to the new node
            self.head = newNode
            return
        
        currentNode = self.head  # Start from head
        while currentNode.next:  # Traverse until the last node
            currentNode = currentNode.next
        
        currentNode.next = newNode  # Link last node to new node

    def updateNode(self, val, index):
        currentNode = self.head  # Start from head
        position = 0 
        
        # Traverse the list until reaching the target index
        while currentNode is not None and position != index:
            position += 1
            currentNode = currentNode.next
        
        if currentNode is None:
            print("Index not present.")  # If index is out of range
        else:
            currentNode.data = val  # Update the node's data

    def removeFirstNode(self):
        if self.head is None:  # If list is empty, do nothing
            return
        self.head = self.head.next  # Move head to the next node
        
    def printList(self):
        currentNode = self.head  # Start from head
        while currentNode:  # Traverse through the list
            print(currentNode.data, end=" -> ")  # Print node data
            currentNode = currentNode.next  # Move to the next node
        print("None")  # Indicate the end of the list

studentLinkedList = LinkedList()

studentLinkedList.insertAtBeginning
