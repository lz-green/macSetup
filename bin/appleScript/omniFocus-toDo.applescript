set theDate to current date
set deferDate to (current date)
set dueDate to (current date) + (1 * days)
set theTask to "Expense Verizon Bill"
set theNote to theFile

tell application "OmniFocus"
    tell front document
        set theContext to first flattened context where its name = "A Context"
        set theProject to first flattened project where its name = "Expenses"
        tell theProject to make new task with properties {name:theTask, note:theNote, context:theContext, defer date:deferDate, due date:dueDate}
    end tell
end tell