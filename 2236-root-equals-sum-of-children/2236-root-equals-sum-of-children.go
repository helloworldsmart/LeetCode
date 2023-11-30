/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func checkTree(root *TreeNode) bool {
    if root == nil || root.Left == nil || root.Right == nil {
        return false
    } 
    sum := root.Left.Val + root.Right.Val
    return root.Val == sum
}