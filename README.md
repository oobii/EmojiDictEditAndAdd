# EmojiDictEditAndAdd Bar Button Items
UITableViewController<br>
We pass emojis array between two ViewControllers using segues to save changes done by the second one. For some reason if we just do it in one direction, from appended Emoji item doesn't stick.

![storyboard](https://github.com/oobii/EmojiDictEditAndAdd/blob/EditAndAdd/storyboard.png)


Left Bar Button Item (for Edit) is added like this:
```swift
override func viewDidLoad() {
        super.viewDidLoad()     
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //editButtonItem is already predefined
        navigationItem.leftBarButtonItem = editButtonItem
        }
```


Right Bar Button Item (for adding new Emoji) was added in the Storyboard and a segue back to the EmojiTableViewController was created

![adding add button](https://github.com/oobii/EmojiDictEditAndAdd/blob/EditAndAdd/addButton.png)


![App](https://github.com/oobii/EmojiDictEditAndAdd/blob/EditAndAdd/app.png)
