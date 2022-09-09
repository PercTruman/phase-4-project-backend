
Teacher.create(first_name: "Shawn", last_name: "Hart", email: "shawn@example.com", password_digest: "password")

Student.create(first_name:"Jimmy", last_name: "Johns")
Student.create(first_name:"Jersey", last_name: "Mike")
Student.create(first_name:"Ronald", last_name: "McDonald")

Assignment.create(title: "Step 1", description: "Chair Test", grade: 92, due_date: "2015-12-01", assigned_date: "2015-12-01", teacher_id: 14, student_id: 1)
Assignment.create(title: "Biology Notebook Check", description: "Homework", grade: 100, due_date: "2015-12-01", assigned_date: "2015-12-01", teacher_id: 18, student_id: 3)
Assignment.create(title: "English Project", description: "Project", grade: 66, due_date: "2015-12-01", assigned_date: "2015-12-01", teacher_id: 18, student_id: 2)