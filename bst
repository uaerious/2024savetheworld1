# bst (p)
# using bst, create a phone book. Be able to store and search using the 3 traversal methods.
class BSTNode:
    def __init__(self, name, contact_info):
        self.name = name
        self.contact_info = contact_info
        self.left = None
        self.right = None

def insert(root, name, contact_info):
    if root is None:
        return BSTNode(name, contact_info)

    if name < root.name:
        root.left = insert(root.left, name, contact_info)
    elif name > root.name:
        root.right = insert(root.right, name, contact_info)
    return root

def inorder_print(root):
    if root:
        inorder_print(root.left) # left
        print(f"{root.name} - {root.contact_info}") # root
        inorder_print(root.right) # right

def preorder_print(root):
    if root:
        print(f"{root.name} - {root.contact_info}") # root
        preorder_print(root.left) # left
        preorder_print(root.right) # right

def postorder_print(root):
    if root:
        postorder_print(root.left) # left
        postorder_print(root.right) # right
        print(f"{root.name} - {root.contact_info}") # root

# Example usage
phone_book = None

# Insert entries into the BST
phone_book = insert(phone_book, "Alice", "1234")
phone_book = insert(phone_book, "Bob", "5678")
phone_book = insert(phone_book, "Charlie", "9876")

# Print the BST in inorder, preorder, and postorder traversal
print("BST Inorder Traversal:") # left root right
inorder_print(phone_book)

print("\nBST Preorder Traversal:") # root left right
preorder_print(phone_book)

print("\nBST Postorder Traversal:") # left right root
postorder_print(phone_book)

# Search for a contact
search_result = search(phone_book, "Bob")
if search_result:
    print(f"\nContact found: {search_result.name} - {search_result.contact_info}")
else:
    print("\nContact not found.")
