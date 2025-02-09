fetch('http://localhost:5000/students')
    .then(response => response.json())
    .then(data => {
        const list = document.getElementById('students-list');
        data.forEach(student => {
            const li = document.createElement('li');
            li.textContent = student.full_name;
            list.appendChild(li);
        });
    });
