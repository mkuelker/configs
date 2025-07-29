from talon import Module, actions
import time  # Import the time module for sleeping

# Define a Talon module
mod = Module()

# Define a function to press keys with a delay
@mod.action_class
class Actions:
    def pour():
        """Press key1, sleep for delay_ms milliseconds, then press key2"""
        actions.key('end')  # Press the first key
        time.sleep(15/1000)  # Sleep for the specified milliseconds
        actions.key('enter')  # Press the second key

    def process_string_command(word: str):
        """Process the string command and output the word."""
        # Modify the word r needed
        modified_word = f'"{word}"'  # Example: Add quotes around the word
        if 'space' in modified_word.lower():
            modified_word = modified_word.replace('space',' ') 
        if 'empty' in modified_word.lower():
            modified_word = modified_word.replace('blank',' ')
            actions.insert(modified_word)  # Insert the modified word
            actions.key('left')
            return
        actions.insert(modified_word) 
        # Alternatively, use `actions.speak(modified_word)` to speak it

    def equiv():
        """Press key1, sleep for delay_ms milliseconds, then press key2"""
        actions.key('space')  # Press the first key
        actions.key('=')
        actions.key('=')   # Press the second key
        actions.key('space')  # Press the first key  

    def assign():
        """Press key1, sleep for delay_ms milliseconds, then press key2"""
        actions.key('space')  # Press the first key
        actions.key('=')  # Press the second key
        actions.key('space')  # Press the first key  

    def save():
        """Press key1, sleep for delay_ms milliseconds, then press key2"""
        actions.key('space')  # Press the first key
        time.sleep(15/1000)  # Sleep for the specified milliseconds
        actions.key('==')  # Press the second key
        time.sleep(15/1000)  # Sleep for the specified milliseconds
        actions.key('space')  # Press the first key        

    def comma(): 
        """Press key1, sleep for delay_ms milliseconds, then press key2"""
        actions.key(',')  # Press the first key
        actions.key('space')

    def capslock(word: str):
        """Process the string command and output the word."""
        # Modify the word r needed
        modified_word = word.upper()  # Example: Add quotes around the word
        if 'STAR' in modified_word:
            modified_word = modified_word.replace('STAR','*')
        if 'EQUALS' in modified_word:
            modified_word = modified_word.replace('EQUALS', ' = ')
        actions.insert(modified_word)  # Insert the modified word
        # Alternatively, use `actions.speak(modified_word)` to speak it

    def pascal_case(word: str):
        """Convert a string to PascalCase.""" 
        # Split the string into words and capitalize each word
        word = ''.join([sub.capitalize() for sub in word.split()])
        actions.insert(word)  # Insert the modified word
       
    def arrow():
        """Make error"""
        actions.key('space')
        actions.key('-')
        actions.key('>')
        actions.key('space')

    def stack():
        """a better colon"""
        actions.key(':')
        actions.key('space')