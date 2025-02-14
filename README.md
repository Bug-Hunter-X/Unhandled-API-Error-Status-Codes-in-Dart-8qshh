# Unhandled API Error Status Codes in Dart

This repository demonstrates a common error in Dart applications that handle API calls: neglecting to properly check for and handle HTTP error status codes (those other than 200 OK).

The `bug.dart` file contains the buggy code that only checks for a 200 status code.  The `bugSolution.dart` provides a corrected version that correctly handles a broader range of error codes and exceptions.

## How to reproduce the bug

1. Clone this repository.
2. Run `bug.dart`.  If the API request results in an error, you will likely see a generic error message that provides little insight into the problem.

## Solution

The `bugSolution.dart` file showcases a robust approach: 
* It explicitly checks for various HTTP status codes, providing more informative error messages. 
* It uses a `try-catch` block to handle potential exceptions during the API call and JSON decoding.  The `rethrow` ensures errors are not silently suppressed.

This is good practice for building resilient Dart apps.