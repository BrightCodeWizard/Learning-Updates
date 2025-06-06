Web developmenrt
  

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Registration</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">
            <div class="center">
                <h1>Student Registration</h1>
                <form id="record-form">
                  <input type="text" id="name" placeholder="Name" required>
                  <input type="number" id="age" placeholder="Age" required>
                  <input type="text" id="email" placeholder="Email" required>
                  <button type="submit">Add</button> 
                  <input type="hidden" id="edit-index" value="-1">
                </form>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
    </html>


    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Records</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="container">
            <div class="right">
                <h2>Records</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th> 
                            <th>Age</th>
                            <th>Email</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody id="record-list"></tbody>
                </table>
            </div>
        </div>
       <script src="script.js"></script>
    </body>
    </html>


    body {
        font-family: Arial, Helvetica, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
      display: flex;
      flex-wrap: wrap;
      max-width: 900px;
      margin: 0 auto;
      border: 1px solid #ccc;
      padding: 20px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    .left {
      flex: 1;
      padding: 10px;
    }
    .right {
      flex: 1;
      padding: 10px;
      border-left: 1px solid #ccc;
    }
    h1 {
      text-align: center;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th,
    td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
    
    input[type='text'],
    input[type='number'] {
      width: 80%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    
    button {
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    button:hover {
      background-color: #0056b3;
    }
    .deleteButton {
      text-align: center;
    }
    i {
      margin: 5px 7px;
      font-size: 20px;
      cursor: pointer;
    }
    #yesBtn:hover {
      color: red;
    }
    #noBtn:hover {
      color: green;
    }

    
    const recordForm = document.getElementById('record-form');
    const nameInput = document.getElementById('name');
    const ageInput = document.getElementById('age');
    const emailInput = document.getElementById('email');
    const recordList = document.getElementById('record-list');
    const editIndexInput = document.getElementById('edit-index');
    
    let records = JSON.parse(localStorage.getItem('records')) || [];
    
    function isDuplicateName(email) {
      return records.some(record => record.email.toLowerCase() === email.toLowerCase());
    }
    
    function displayRecords() {
      if (!recordList) return;
      recordList.innerHTML = '';
      if (records.length === 0) {
        const row = document.createElement('tr');
        row.innerHTML = `<td colspan="5" style="text-align:center;color:red;">No Record Found</td>`;
        recordList.appendChild(row);
      } else {
        records.forEach((record, index) => {
          const row = document.createElement('tr');
          row.innerHTML = `
            <td>${record.name}</td>
            <td>${record.age}</td>
            <td>${record.email}</td>
            <td><button onclick="editRecord(${index})">Edit</button></td>
            <td class="deleteButton"><button onclick="deleteRecord(${index})">Delete</button></td>
          `;
          recordList.appendChild(row);
        });
      }
    }
    
    if (recordForm) {
      recordForm.addEventListener('submit', function (e) {
        e.preventDefault();
        const name = nameInput.value;
        const age = ageInput.value;
        const email = emailInput.value;
        const editIndex = parseInt(editIndexInput.value);
    
        if (name && age && email) {
          if (isDuplicateName(email) && editIndex === -1) {
            alert('Student already exists.');
            return;
          }
    
          if (editIndex === -1) {
            records.push({ name, age, email });
          } else {
            records[editIndex] = { name, age, email };
            editIndexInput.value = -1;
          }
    
          localStorage.setItem('records', JSON.stringify(records));
          nameInput.value = '';
          ageInput.value = '';
          emailInput.value = '';
          displayRecords();
        }
      });
    }
    
    function editRecord(index) {
      localStorage.setItem('editIndex', index);
      window.location.href = 'form.html'; // Redirect to form for editing
    }
    
    function deleteRecord(index) {
      displayRecords();
      let delBtn = document.querySelectorAll('.deleteButton');
      delBtn[index].innerHTML = `
        <i id="yesBtn" onclick="confirmDelete(${index})" class="fa-solid fa-check"></i>
        <i id="noBtn" onclick="resetDelete(${index})" class="fa-solid fa-xmark"></i>`;
    }
    
    function confirmDelete(index) {
      records.splice(index, 1);
      localStorage.setItem('records', JSON.stringify(records));
      displayRecords();
    }
    
    function resetDelete(index) {
      displayRecords();
    }
    
    displayRecords();

    




2. Java


    /**
 Write a program called PensionContributionCalculator that reads
 the monthly salary and age (in int) of an employee. Your program shall calculate
 the employee's, employer's and total contributions (in double); and print
 the results rounded to 2 decimal places.
 **/


        import java.util.Scanner;
        
        public class PensionContributionCalculator {
        
            public static void main(String[] args) {
                Scanner scanner = new Scanner(System.in);
        
                System.out.print("Enter the monthly salary: ");
                double salary = scanner.nextDouble();
        
                System.out.print("Enter the age: ");
                int age = scanner.nextInt();
        
                double employeeRate;
                double employerRate;
        
                if (age <= 55) {
                    employeeRate = 0.20;
                    employerRate = 0.17;
                } else if (age <= 60) {
                    employeeRate = 0.13;
                    employerRate = 0.13;
                } else if (age <= 65) {
                    employeeRate = 0.075;
                    employerRate = 0.09;
                } else {
                    employeeRate = 0.05;
                    employerRate = 0.075;
                }
        
        
                double employeeContribution = salary * employeeRate;
                double employerContribution = salary * employerRate;
                double totalContribution = employeeContribution + employerContribution;
        
        
                System.out.printf("The employee's contribution is: $%.2f%n", employeeContribution);
                System.out.printf("The employer's contribution is: $%.2f%n", employerContribution);
                System.out.printf("The total contribution is: $%.2f%n", totalContribution);
        
                scanner.close();
            }
        }



/**
 Write a program that prompts user for a positive integer.
 The program shall read the input as int; and print the "reverse" of
 the input integer.
**/


      import java.util.Scanner;
      
      public class ReverseInteger {
      
          public static void main(String[] args) {
              Scanner scanner = new Scanner(System.in);
      
      
              System.out.print("Enter a positive integer: ");
              int number = scanner.nextInt();
      
      
              if (number <= 0) {
                  System.out.println("The number must be a positive integer.");
              } else {
                  int reversed = 0;
      
      
                  while (number != 0) {
                      int digit = number % 10;
                      reversed = reversed * 10 + digit;
                      number /= 10;
                  }
      
                  System.out.println("Reversed number: " + reversed);
              }
      
              scanner.close();
          }
      }




     
